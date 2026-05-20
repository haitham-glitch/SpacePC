/* =============================================================
   SPACE-PC | Main JavaScript (External)
   - Language toggle (EN / AR with RTL switching)
   - Mobile nav, password show/hide
   - Form validation (login & signup)
   - Dynamic effects (reveal-on-scroll, dynamic image, dynamic text)
   - Functions, events, control statements, loops
   ============================================================= */

(function () {
  'use strict';

  /* ---------------------------------------------------------
     1. Language Toggle (EN / AR)
     --------------------------------------------------------- */
  const STORAGE_KEY = 'spacepc-lang';

  function getStoredLang() {
    try { return localStorage.getItem(STORAGE_KEY); } catch (e) { return null; }
  }
  function storeLang(lang) {
    try { localStorage.setItem(STORAGE_KEY, lang); } catch (e) { /* ignore */ }
  }

  /**
   * Apply a language to the entire page.
   * Loops over every element with [data-en] and swaps text content.
   * Also handles input placeholders via [data-en-placeholder] / [data-ar-placeholder]
   * and image alt text via [data-en-alt] / [data-ar-alt].
   * @param {string} lang - 'en' or 'ar'
   */
  function applyLanguage(lang) {
    const html = document.documentElement;
    html.setAttribute('lang', lang);
    html.setAttribute('dir', lang === 'ar' ? 'rtl' : 'ltr');

    // Loop through all translatable text nodes (control + repetition)
    const textNodes = document.querySelectorAll('[data-en]');
    for (let i = 0; i < textNodes.length; i++) {
      const el = textNodes[i];
      const value = el.getAttribute('data-' + lang);
      if (value !== null) {
        el.textContent = value;
      }
    }

    // Placeholder swaps for inputs
    const phNodes = document.querySelectorAll('[data-en-placeholder]');
    phNodes.forEach(function (el) {
      const ph = el.getAttribute('data-' + lang + '-placeholder');
      if (ph !== null) el.setAttribute('placeholder', ph);
    });

    // Alt text swaps for images
    const altNodes = document.querySelectorAll('[data-en-alt]');
    altNodes.forEach(function (el) {
      const alt = el.getAttribute('data-' + lang + '-alt');
      if (alt !== null) el.setAttribute('alt', alt);
    });

    // Update the toggle pill state
    const buttons = document.querySelectorAll('.lang-toggle button');
    buttons.forEach(function (btn) {
      if (btn.getAttribute('data-lang') === lang) {
        btn.classList.add('is-active');
      } else {
        btn.classList.remove('is-active');
      }
    });

    // Update document title if it has data attrs
    const title = document.querySelector('title');
    if (title && title.getAttribute('data-' + lang)) {
      title.textContent = title.getAttribute('data-' + lang);
    }

    storeLang(lang);
  }

  function initLanguageToggle() {
    const buttons = document.querySelectorAll('.lang-toggle button');
    buttons.forEach(function (btn) {
      btn.addEventListener('click', function () {
        const lang = btn.getAttribute('data-lang');
        applyLanguage(lang);
      });
    });

    // Initialize from storage or default to English
    const saved = getStoredLang();
    const initial = saved === 'ar' || saved === 'en' ? saved : 'en';
    applyLanguage(initial);
  }

  /* ---------------------------------------------------------
     2. Mobile Navigation Toggle
     --------------------------------------------------------- */
  function initMobileNav() {
    const toggle = document.querySelector('.nav-toggle');
    const links = document.querySelector('.nav-links');
    if (!toggle || !links) return;

    toggle.addEventListener('click', function () {
      links.classList.toggle('is-open');
      const expanded = links.classList.contains('is-open');
      toggle.setAttribute('aria-expanded', expanded);
    });

    // Close menu when a link is clicked (mobile UX)
    links.querySelectorAll('a').forEach(function (a) {
      a.addEventListener('click', function () {
        links.classList.remove('is-open');
        toggle.setAttribute('aria-expanded', 'false');
      });
    });
  }

  /* ---------------------------------------------------------
     3. Password Show / Hide Toggle
     --------------------------------------------------------- */
  function initPasswordToggles() {
    const toggles = document.querySelectorAll('.toggle-password');
    toggles.forEach(function (btn) {
      btn.addEventListener('click', function () {
        const targetId = btn.getAttribute('data-target');
        const input = document.getElementById(targetId);
        if (!input) return;

        // Switch type using control statement
        if (input.type === 'password') {
          input.type = 'text';
          btn.textContent = btn.getAttribute('data-hide') || 'HIDE';
        } else {
          input.type = 'password';
          btn.textContent = btn.getAttribute('data-show') || 'SHOW';
        }
      });
    });
  }

  /* ---------------------------------------------------------
     4. Form Validation Helpers
     --------------------------------------------------------- */
  function isValidEmail(value) {
    // Simple but effective email regex
    return /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(String(value).trim());
  }

  function setFieldError(field, hasError) {
    if (hasError) {
      field.classList.add('is-error');
    } else {
      field.classList.remove('is-error');
    }
  }

  function setInputState(input, state) {
    input.classList.remove('is-error', 'is-valid');
    if (state === 'error') input.classList.add('is-error');
    if (state === 'valid') input.classList.add('is-valid');
  }

  /**
   * Score password strength (0-4) using control flow + loops.
   * Demonstrates: variables, if/else, loops, returning a structured object.
   */
  function scorePassword(pw) {
    let score = 0;
    if (!pw) return { score: 0, label: 'EMPTY', percent: 0, color: 'var(--color-danger)' };

    // Length tiers
    if (pw.length >= 8)  score++;
    if (pw.length >= 12) score++;

    // Variety: count categories present using a loop
    const checks = [/[a-z]/, /[A-Z]/, /[0-9]/, /[^A-Za-z0-9]/];
    let variety = 0;
    for (let i = 0; i < checks.length; i++) {
      if (checks[i].test(pw)) variety++;
    }
    if (variety >= 2) score++;
    if (variety >= 3) score++;

    score = Math.min(score, 4);

    let label = 'WEAK', color = 'var(--color-danger)';
    switch (score) {
      case 0:
      case 1: label = 'WEAK';   color = 'var(--color-danger)';  break;
      case 2: label = 'OKAY';   color = 'var(--color-accent)';  break;
      case 3: label = 'STRONG'; color = 'var(--color-success)'; break;
      case 4: label = 'EPIC';   color = 'var(--color-success)'; break;
    }
    return { score: score, label: label, percent: (score / 4) * 100, color: color };
  }

  /* ---------------------------------------------------------
     5. Login Form Validation
     --------------------------------------------------------- */
  function initLoginForm() {
    const form = document.getElementById('login-form');
    if (!form) return;

    const email = document.getElementById('login-email');
    const password = document.getElementById('login-password');
    const successMsg = document.getElementById('login-success');

    form.addEventListener('submit', function (event) {
      event.preventDefault();
      let valid = true;

      // Email validation
      if (!isValidEmail(email.value)) {
        setFieldError(email.closest('.field'), true);
        setInputState(email, 'error');
        valid = false;
      } else {
        setFieldError(email.closest('.field'), false);
        setInputState(email, 'valid');
      }

      // Password presence + length
      if (!password.value || password.value.length < 6) {
        setFieldError(password.closest('.field'), true);
        setInputState(password, 'error');
        valid = false;
      } else {
        setFieldError(password.closest('.field'), false);
        setInputState(password, 'valid');
      }

      // If valid, show success (dynamic content change via script)
      if (valid && successMsg) {
        successMsg.style.display = 'block';
        successMsg.textContent = (document.documentElement.lang === 'ar')
          ? '✓ تم تسجيل الدخول بنجاح! جاري التحويل...'
          : '✓ Login successful! Welcome back, redirecting...';
        // Reset form after a moment for demo purposes
        setTimeout(function () { form.reset(); successMsg.style.display = 'none'; }, 2400);
      }
    });

    // Real-time email validation feedback (event-driven)
    email.addEventListener('blur', function () {
      if (email.value && isValidEmail(email.value)) {
        setInputState(email, 'valid');
        setFieldError(email.closest('.field'), false);
      } else if (email.value) {
        setInputState(email, 'error');
      }
    });
  }

  /* ---------------------------------------------------------
     6. Signup Form Validation + Strength Meter
     --------------------------------------------------------- */
  function initSignupForm() {
    const form = document.getElementById('signup-form');
    if (!form) return;

    const fullName = document.getElementById('signup-name');
    const email    = document.getElementById('signup-email');
    const password = document.getElementById('signup-password');
    const confirm  = document.getElementById('signup-confirm');
    const meter    = document.querySelector('.strength-meter-fill');
    const meterLbl = document.querySelector('.strength-label');
    const successMsg = document.getElementById('signup-success');

    // Live strength meter on every keystroke (event + dynamic CSS change)
    if (password && meter) {
      password.addEventListener('input', function () {
        const result = scorePassword(password.value);
        meter.style.width = result.percent + '%';        // dynamic CSS via JS
        meter.style.background = result.color;
        if (meterLbl) {
          const lang = document.documentElement.lang || 'en';
          const labelsAr = { EMPTY: 'فارغ', WEAK: 'ضعيف', OKAY: 'مقبول', STRONG: 'قوي', EPIC: 'ممتاز' };
          meterLbl.textContent = lang === 'ar' ? (labelsAr[result.label] || result.label) : result.label;
        }
      });
    }

    form.addEventListener('submit', function (event) {
      event.preventDefault();
      let valid = true;

      // Full name (loop: at least 2 words, each 2+ chars)
      const parts = fullName.value.trim().split(/\s+/);
      let nameOk = parts.length >= 2;
      for (let i = 0; i < parts.length; i++) {
        if (parts[i].length < 2) { nameOk = false; break; }
      }
      if (!nameOk) {
        setFieldError(fullName.closest('.field'), true);
        setInputState(fullName, 'error');
        valid = false;
      } else {
        setFieldError(fullName.closest('.field'), false);
        setInputState(fullName, 'valid');
      }

      // Email
      if (!isValidEmail(email.value)) {
        setFieldError(email.closest('.field'), true);
        setInputState(email, 'error');
        valid = false;
      } else {
        setFieldError(email.closest('.field'), false);
        setInputState(email, 'valid');
      }

      // Password strength must be >=2 (Okay or better)
      const pwResult = scorePassword(password.value);
      if (pwResult.score < 2) {
        setFieldError(password.closest('.field'), true);
        setInputState(password, 'error');
        valid = false;
      } else {
        setFieldError(password.closest('.field'), false);
        setInputState(password, 'valid');
      }

      // Passwords match
      if (password.value !== confirm.value || !confirm.value) {
        setFieldError(confirm.closest('.field'), true);
        setInputState(confirm, 'error');
        valid = false;
      } else {
        setFieldError(confirm.closest('.field'), false);
        setInputState(confirm, 'valid');
      }

      if (valid && successMsg) {
        successMsg.style.display = 'block';
        successMsg.textContent = (document.documentElement.lang === 'ar')
          ? '✓ تم إنشاء حسابك! مرحبا بك في Space-PC.'
          : '✓ Account created! Welcome aboard, Space-PC pilot.';
        setTimeout(function () { form.reset(); successMsg.style.display = 'none';
          if (meter) { meter.style.width = '0%'; }
          if (meterLbl) { meterLbl.textContent = ''; }
        }, 2800);
      }
    });
  }

  /* ---------------------------------------------------------
     7. Dynamic Image / Text on Hero (Functions + Events)
     Cycles through a list of "build profiles" — demonstrates
     dynamic picture & text changing via script.
     --------------------------------------------------------- */
  function initBuildCycler() {
    const wrapper = document.getElementById('build-cycler');
    if (!wrapper) return;

    const titleEl  = wrapper.querySelector('[data-cycle="title"]');
    const descEl   = wrapper.querySelector('[data-cycle="desc"]');
    const imgEl    = wrapper.querySelector('[data-cycle="img"]');
    const dotsWrap = wrapper.querySelector('[data-cycle="dots"]');

    // Build profile data (different copy per language)
    const builds = [
      {
        en: { title: 'Office Build',     desc: 'Quiet, efficient, ready for spreadsheets and study sessions.' },
        ar: { title: 'تجميعة المكتب',     desc: 'هادئة وفعّالة، جاهزة للجداول وجلسات الدراسة.' },
        img: 'https://images.unsplash.com/photo-1593640408182-31c70c8268f5?auto=format&fit=crop&w=900&q=70',
        alt_en: 'Minimalist office computer setup',
        alt_ar: 'محطة عمل مكتبية بسيطة'
      },
      {
        en: { title: 'Gaming Beast',     desc: 'High-refresh GPU, fast RAM, RGB everywhere — uncompromised play.' },
        ar: { title: 'وحش الألعاب',       desc: 'كرت شاشة بمعدل تحديث عالٍ، رام سريعة، إضاءة RGB في كل مكان.' },
        img: 'https://images.unsplash.com/photo-1587202372616-b43abea06c2a?auto=format&fit=crop&w=900&q=70',
        alt_en: 'High-end gaming PC with RGB lighting',
        alt_ar: 'حاسوب ألعاب راقٍ بإضاءة RGB'
      },
      {
        en: { title: 'Creator Workstation', desc: 'Multi-core CPU, 32GB+ RAM, color-accurate display for editors.' },
        ar: { title: 'محطة المبدعين',       desc: 'معالج متعدد النوى، رام 32 جيجا أو أكثر، شاشة دقيقة الألوان للمحررين.' },
        img: 'https://images.unsplash.com/photo-1591488320449-011701bb6704?auto=format&fit=crop&w=900&q=70',
        alt_en: 'Content creator multi-monitor workstation',
        alt_ar: 'محطة عمل لصانع محتوى متعددة الشاشات'
      }
    ];

    // Build dots dynamically (demonstrates DOM creation in a loop)
    if (dotsWrap) {
      for (let i = 0; i < builds.length; i++) {
        const dot = document.createElement('button');
        dot.type = 'button';
        dot.className = 'cycle-dot';
        dot.setAttribute('aria-label', 'Build ' + (i + 1));
        dot.setAttribute('data-index', i);
        dotsWrap.appendChild(dot);
      }
    }

    let current = 0;
    let timer = null;

    function render(index) {
      const lang = document.documentElement.lang || 'en';
      const profile = builds[index];
      if (!profile) return;
      const copy = profile[lang] || profile.en;

      // Fade transition by toggling a class
      wrapper.classList.add('is-fading');
      setTimeout(function () {
        if (titleEl) titleEl.textContent = copy.title;
        if (descEl)  descEl.textContent  = copy.desc;
        if (imgEl)   {
          imgEl.src = profile.img;
          imgEl.alt = profile['alt_' + lang] || profile.alt_en;
        }
        wrapper.classList.remove('is-fading');
      }, 220);

      // Sync dots
      const dots = wrapper.querySelectorAll('.cycle-dot');
      dots.forEach(function (d, i) {
        d.classList.toggle('is-active', i === index);
      });
      current = index;
    }

    function next() { render((current + 1) % builds.length); }

    // Click handlers on dots
    wrapper.addEventListener('click', function (event) {
      const dot = event.target.closest('.cycle-dot');
      if (!dot) return;
      const idx = parseInt(dot.getAttribute('data-index'), 10);
      render(idx);
      restartTimer();
    });

    function restartTimer() {
      if (timer) clearInterval(timer);
      timer = setInterval(next, 4500);
    }

    // Re-render when language changes
    document.addEventListener('languagechange', function () { render(current); });

    render(0);
    restartTimer();
  }

  /* ---------------------------------------------------------
     8. Reveal-on-Scroll (IntersectionObserver)
     --------------------------------------------------------- */
  function initRevealOnScroll() {
    if (!('IntersectionObserver' in window)) return;
    const targets = document.querySelectorAll('.scroll-reveal');
    if (!targets.length) return;

    const io = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('reveal');
          io.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12 });

    targets.forEach(function (el) { io.observe(el); });
  }

  /* ---------------------------------------------------------
     9. Highlight active nav link
     --------------------------------------------------------- */
  function highlightActiveNav() {
    const path = (window.location.pathname.split('/').pop() || 'index.html').toLowerCase();
    document.querySelectorAll('.nav-links a').forEach(function (a) {
      const href = (a.getAttribute('href') || '').toLowerCase();
      if (href === path || (path === '' && href === 'index.html')) {
        a.classList.add('is-active');
      }
    });
  }

  /* ---------------------------------------------------------
     10. Footer year
     --------------------------------------------------------- */
  function initFooterYear() {
    const yr = document.getElementById('footer-year');
    if (yr) yr.textContent = new Date().getFullYear();
  }

  /* ---------------------------------------------------------
     11. Boot
     --------------------------------------------------------- */
  document.addEventListener('DOMContentLoaded', function () {
    initLanguageToggle();
    initMobileNav();
    initPasswordToggles();
    initLoginForm();
    initSignupForm();
    initBuildCycler();
    initRevealOnScroll();
    highlightActiveNav();
    initFooterYear();
  });

  // Re-trigger language-dependent renders when language changes
  // by watching for class change on the toggle (simple re-broadcast)
  const observer = new MutationObserver(function (records) {
    records.forEach(function (r) {
      if (r.attributeName === 'lang') {
        document.dispatchEvent(new CustomEvent('languagechange'));
      }
    });
  });
  observer.observe(document.documentElement, { attributes: true, attributeFilter: ['lang'] });

})();
