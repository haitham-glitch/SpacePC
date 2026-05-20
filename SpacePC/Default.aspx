<%@ Page Title="Space-PC | PC Building, Decoded" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpacePC._Default" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
  Space-PC | PC Building, Decoded
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .build-cycler {
      position: relative;
      padding: var(--sp-6);
      background: var(--color-surface);
      border: var(--border-bold);
      border-radius: var(--r-md);
      box-shadow: var(--shadow-md);
      transition: opacity var(--t-base);
    }
    .build-cycler.is-fading { opacity: 0.35; }
    .build-cycler-img {
      width: 100%;
      aspect-ratio: 16 / 10;
      object-fit: cover;
      border-radius: var(--r-sm);
      border: var(--border-base);
      margin-bottom: var(--sp-4);
    }
    .build-cycler h3 { margin-bottom: var(--sp-2); }
    .build-cycler-dots {
      display: flex;
      gap: var(--sp-2);
      margin-top: var(--sp-4);
      justify-content: center;
    }
    .cycle-dot {
      width: 12px; height: 12px;
      border-radius: 50%;
      border: var(--border-base);
      background: var(--color-bg);
      cursor: pointer;
      padding: 0;
      transition: all var(--t-fast);
    }
    .cycle-dot.is-active { background: var(--color-primary); transform: scale(1.3); }

    .fact-strip {
      margin-top: var(--sp-6);
      padding: var(--sp-4) var(--sp-5);
      background: var(--color-bg);
      border: var(--border-base);
      border-radius: var(--r-sm);
      font-family: var(--font-display);
      font-size: 0.92rem;
      display: flex;
      align-items: center;
      gap: var(--sp-3);
    }
    .fact-strip .fact-tag {
      background: var(--color-accent);
      color: var(--color-ink);
      padding: 4px 10px;
      border-radius: var(--r-sm);
      font-size: 0.72rem;
      font-weight: 700;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      flex-shrink: 0;
    }

    .pc-map-figure {
      position: relative;
      max-width: 800px;
      margin: 0 auto;
    }
    .pc-map-figure img {
      width: 100%;
      height: auto;
      display: block;
      border-radius: var(--r-md);
      border: var(--border-bold);
      box-shadow: var(--shadow-lg);
    }
    .pc-map-hint {
      display: inline-flex;
      align-items: center;
      gap: var(--sp-2);
      margin-top: var(--sp-4);
      font-family: var(--font-display);
      font-size: 0.88rem;
      color: var(--color-secondary);
      font-weight: 600;
    }
    .pc-map-hint::before {
      content: '◉';
      animation: pulse 1.6s ease-in-out infinite;
    }
    @keyframes pulse {
      0%, 100% { opacity: 1; transform: scale(1); }
      50%       { opacity: 0.4; transform: scale(1.2); }
    }
  </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <!-- HERO -->
  <section class="hero">
    <div class="container">
      <div class="hero-grid">
        <div class="hero-text reveal">
          <span class="eyebrow" data-en="// SPACE-PC GUIDE" data-ar="// دليل سبيس-بي سي">// SPACE-PC GUIDE</span>
          <h1 class="hero-headline">
            <span data-en="Build your" data-ar="ابنِ">Build your</span>
            <span class="underline-accent">
              <span data-en="dream PC" data-ar="حاسوب أحلامك">dream PC</span>
            </span>
            <span data-en="from the ground up." data-ar="من الصفر.">from the ground up.</span>
          </h1>
          <p class="hero-sub"
             data-en="Space-PC turns dense hardware specs into clear, friendly knowledge."
             data-ar="يحوّل سبيس-بي سي مواصفات الهاردوير المعقّدة إلى معرفة واضحة وودودة.">
            Space-PC turns dense hardware specs into clear, friendly knowledge.
          </p>
          <div class="hero-cta-row">
            <a href="#concept" class="btn btn--primary btn--lg"
               data-en="Start your journey →" data-ar="ابدأ رحلتك →">Start your journey →</a>
            <a href="#components" class="btn btn--lg"
               data-en="Browse components" data-ar="استعرض القطع">Browse components</a>
          </div>
        </div>

        <div class="build-cycler reveal reveal-delay-2" id="build-cycler">
          <span class="eyebrow" data-en="// LIVE PREVIEW" data-ar="// معاينة حيّة">// LIVE PREVIEW</span>
          <img class="build-cycler-img" data-cycle="img"
               src="https://images.unsplash.com/photo-1593640408182-31c70c8268f5?auto=format&fit=crop&w=900&q=70"
               alt="PC build preview" />
          <h3 data-cycle="title">Office Build</h3>
          <p data-cycle="desc" style="color: var(--color-muted); margin: 0;">
            Quiet, efficient, ready for spreadsheets and study sessions.
          </p>
          <div class="build-cycler-dots" data-cycle="dots" aria-label="Switch build profile"></div>
        </div>
      </div>
    </div>
  </section>

  <!-- MARQUEE -->
  <div class="marquee" aria-hidden="true">
    <div class="marquee-track">
      <span data-en="Build smart"        data-ar="اِبنِ بذكاء">Build smart</span>
      <span data-en="Choose right"       data-ar="اختر الصواب">Choose right</span>
      <span data-en="Avoid bottlenecks"  data-ar="تجنّب الاختناقات">Avoid bottlenecks</span>
      <span data-en="Save money"         data-ar="وفّر المال">Save money</span>
      <span data-en="No jargon"          data-ar="بلا مصطلحات معقّدة">No jargon</span>
      <span data-en="Build smart"        data-ar="اِبنِ بذكاء">Build smart</span>
      <span data-en="Choose right"       data-ar="اختر الصواب">Choose right</span>
      <span data-en="Avoid bottlenecks"  data-ar="تجنّب الاختناقات">Avoid bottlenecks</span>
      <span data-en="Save money"         data-ar="وفّر المال">Save money</span>
      <span data-en="No jargon"          data-ar="بلا مصطلحات معقّدة">No jargon</span>
    </div>
  </div>

  <!-- CONCEPT -->
  <section id="concept" class="section">
    <div class="container">
      <div class="concept-grid">
        <article class="scroll-reveal">
          <span class="eyebrow" data-en="// THE CONCEPT" data-ar="// الفكرة">// THE CONCEPT</span>
          <h2>
            <span data-en="What is" data-ar="ما هو">What is</span>
            <span class="section-title">Space-PC</span><span data-en="?" data-ar="؟">?</span>
          </h2>
          <p class="lead"
             data-en="Most PC building guides assume you already know what an NVMe SSD or PCIe Gen 4 lane is. We don't. We start at zero."
             data-ar="معظم أدلة بناء الحاسوب تفترض أنك تعرف مسبقاً ما هو NVMe SSD. نحن لا نفترض ذلك. نبدأ من الصفر.">
            Most PC building guides assume you already know what an NVMe SSD or PCIe Gen 4 lane is. We don't. We start at zero.
          </p>
          <p data-en="No spec sheets dumped on a page. Just clear education and practical buying advice you can trust."
             data-ar="لا جداول مواصفات مُلقاة على الصفحة. فقط تعليم واضح ونصائح شراء عملية يمكنك الوثوق بها.">
            No spec sheets dumped on a page. Just clear education and practical buying advice you can trust.
          </p>

          <div class="stats-row">
            <div class="stat-item">
              <span class="stat-number">7</span>
              <span class="stat-label" data-en="Core Components" data-ar="قطع أساسية">Core Components</span>
            </div>
            <div class="stat-item">
              <span class="stat-number">3</span>
              <span class="stat-label" data-en="Use-Case Tiers" data-ar="فئات استخدام">Use-Case Tiers</span>
            </div>
            <div class="stat-item">
              <span class="stat-number">∞</span>
              <span class="stat-label" data-en="Curiosity Welcomed" data-ar="فضول مرحّب به">Curiosity Welcomed</span>
            </div>
          </div>

          <!-- Fact Strip: يتحكم فيه الـ Embedded Script أدناه -->
          <div class="fact-strip" id="fact-strip">
            <span class="fact-tag" data-en="DID YOU KNOW" data-ar="هل تعلم">DID YOU KNOW</span>
            <span id="fact-text"
                  data-en="The first hard drive (1956) weighed over a ton and stored just 5 MB."
                  data-ar="أول قرص صلب (1956) كان يزن أكثر من طن ويخزّن 5 ميجابايت فقط.">
              The first hard drive (1956) weighed over a ton and stored just 5 MB.
            </span>
          </div>
        </article>

        <!-- Image Map -->
        <figure class="pc-map-figure scroll-reveal">
          <img src="https://images.unsplash.com/photo-1587202372634-32705e3bf49c?auto=format&fit=crop&w=800&h=500&q=70"
               alt="Space-PC custom desktop build"
               width="800" height="500"
               usemap="#pc-map" />
          <map name="pc-map">
            <area shape="rect"   coords="0,0,800,500"    href="About.aspx" alt="Learn about Space-PC" />
            <area shape="circle" coords="200,250,80"      href="About.aspx" alt="Our story" />
            <area shape="rect"   coords="450,150,750,400" href="About.aspx" alt="Meet the team" />
          </map>
          <figcaption class="pc-map-hint"
                      data-en="Tap the image to learn about us"
                      data-ar="انقر على الصورة لمعرفة المزيد عنا">
            Tap the image to learn about us
          </figcaption>
        </figure>
      </div>
    </div>
  </section>

  <!-- COMPONENTS EXPLORER -->
  <section id="components" class="section section--soft">
    <div class="container">
      <div style="text-align: center; margin-bottom: var(--sp-7);">
        <span class="eyebrow" data-en="// THE BUILDING BLOCKS" data-ar="// قطع البناء">// THE BUILDING BLOCKS</span>
        <h2>
          <span data-en="Components" data-ar="القطع">Components</span>
          <span class="section-title" data-en="Explorer" data-ar="استكشاف">Explorer</span>
        </h2>
        <p class="lead" style="max-width: 60ch; margin: 0 auto;"
           data-en="Pick a part to dive into its world — what it does, who makes it, and how to choose."
           data-ar="اختر قطعة لتتعمّق في عالمها — ما تفعله، من يصنعها، وكيف تختارها.">
          Pick a part to dive into its world.
        </p>
      </div>

      <div class="components-grid">

        <!-- CPU -->
        <a href="cpu.aspx" class="component-card scroll-reveal" data-color="pink">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="16" y="16" width="32" height="32" rx="3"/>
            <rect x="22" y="22" width="20" height="20" rx="2"/>
            <line x1="20" y1="8"  x2="20" y2="16"/><line x1="32" y1="8"  x2="32" y2="16"/><line x1="44" y1="8"  x2="44" y2="16"/>
            <line x1="20" y1="48" x2="20" y2="56"/><line x1="32" y1="48" x2="32" y2="56"/><line x1="44" y1="48" x2="44" y2="56"/>
            <line x1="8"  y1="20" x2="16" y2="20"/><line x1="8"  y1="32" x2="16" y2="32"/><line x1="8"  y1="44" x2="16" y2="44"/>
            <line x1="48" y1="20" x2="56" y2="20"/><line x1="48" y1="32" x2="56" y2="32"/><line x1="48" y1="44" x2="56" y2="44"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="CPU" data-ar="المعالج (CPU)">CPU</h3>
          <p class="card-desc"
             data-en="The brain. Every calculation, every click, every game tick goes through here."
             data-ar="العقل. كل عملية حسابية، كل نقرة، كل لحظة لعب تمرّ من هنا.">
            The brain. Every calculation, every click, every game tick goes through here.
          </p>
        </a>

        <!-- GPU -->
        <a href="gpu.aspx" class="component-card scroll-reveal reveal-delay-1" data-color="blue">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="6" y="20" width="52" height="24" rx="3"/>
            <circle cx="20" cy="32" r="6"/><circle cx="44" cy="32" r="6"/>
            <line x1="6"  y1="44" x2="6"  y2="52"/>
            <line x1="14" y1="44" x2="14" y2="52"/>
            <line x1="22" y1="44" x2="22" y2="52"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="GPU" data-ar="كرت الشاشة (GPU)">GPU</h3>
          <p class="card-desc"
             data-en="The artist. Renders pixels, lights up games, accelerates AI and creative work."
             data-ar="الفنان. يرسم البكسلات، يُشعل الألعاب، يُسرّع الذكاء الاصطناعي.">
            The artist. Renders pixels, lights up games, accelerates AI and creative work.
          </p>
        </a>

        <!-- Motherboard -->
        <a href="motherboard.aspx" class="component-card scroll-reveal reveal-delay-2" data-color="yellow">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="6"  y="6"  width="52" height="52" rx="3"/>
            <rect x="14" y="14" width="16" height="16" rx="1"/>
            <rect x="36" y="14" width="14" height="6"  rx="1"/>
            <rect x="36" y="24" width="14" height="6"  rx="1"/>
            <rect x="14" y="36" width="36" height="14" rx="1"/>
            <circle cx="50" cy="50" r="2"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="Motherboard" data-ar="اللوحة الأم (Motherboard)">Motherboard</h3>
          <p class="card-desc"
             data-en="The nervous system. Connects every component and decides what's compatible."
             data-ar="الجهاز العصبي. يربط كل قطعة ويُحدّد ما هو متوافق.">
            The nervous system. Connects every component and decides what's compatible.
          </p>
        </a>

        <!-- RAM -->
        <a href="ram.aspx" class="component-card scroll-reveal reveal-delay-3" data-color="pink">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="8" y="20" width="48" height="20" rx="2"/>
            <line x1="16" y1="40" x2="16" y2="48"/><line x1="24" y1="40" x2="24" y2="48"/>
            <line x1="32" y1="40" x2="32" y2="48"/><line x1="40" y1="40" x2="40" y2="48"/>
            <line x1="48" y1="40" x2="48" y2="48"/>
            <line x1="14" y1="26" x2="50" y2="26"/>
            <line x1="14" y1="33" x2="50" y2="33"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="RAM" data-ar="الذاكرة العشوائية (RAM)">RAM</h3>
          <p class="card-desc"
             data-en="Short-term memory. Holds whatever you're actively doing — fast and temporary."
             data-ar="الذاكرة قصيرة المدى. تحتفظ بكل ما تعمل عليه حالياً — سريعة ومؤقتة.">
            Short-term memory. Holds whatever you're actively doing — fast and temporary.
          </p>
        </a>

        <!-- Storage -->
        <a href="storage.aspx" class="component-card scroll-reveal" data-color="green">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="10" y="14" width="44" height="36" rx="3"/>
            <rect x="10" y="14" width="44" height="10" rx="3"/>
            <circle cx="48" cy="19" r="1.5" fill="currentColor"/>
            <line x1="14" y1="32" x2="50" y2="32"/>
            <line x1="14" y1="40" x2="40" y2="40"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="Storage" data-ar="التخزين (Storage)">Storage</h3>
          <p class="card-desc"
             data-en="Long-term memory. Where your OS, games, and files actually live."
             data-ar="الذاكرة طويلة المدى. حيث يعيش نظام التشغيل والألعاب والملفات فعلياً.">
            Long-term memory. Where your OS, games, and files actually live.
          </p>
        </a>

        <!-- Power Supply -->
        <a href="power-supply.aspx" class="component-card scroll-reveal" data-color="green">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="6" y="14" width="52" height="32" rx="3"/>
            <circle cx="20" cy="30" r="8"/>
            <line x1="20" y1="22" x2="20" y2="38"/>
            <line x1="12" y1="30" x2="28" y2="30"/>
            <line x1="40" y1="24" x2="50" y2="24"/>
            <line x1="40" y1="30" x2="50" y2="30"/>
            <line x1="40" y1="36" x2="50" y2="36"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="Power Supply" data-ar="مزود الطاقة (Power Supply)">Power Supply</h3>
          <p class="card-desc"
             data-en="The heart. Cleanly delivers electricity to every part."
             data-ar="القلب. يضخّ الكهرباء النظيفة لكل القطع.">
            The heart. Cleanly delivers electricity to every part.
          </p>
        </a>

        <!-- Case -->
        <a href="case.aspx" class="component-card scroll-reveal reveal-delay-2" data-color="ink">
          <svg class="card-icon" viewBox="0 0 64 64" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
            <rect x="14" y="6"  width="36" height="52" rx="2"/>
            <line x1="20" y1="14" x2="44" y2="14"/>
            <circle cx="22" cy="22" r="1.5" fill="currentColor"/>
            <circle cx="28" cy="22" r="1.5" fill="currentColor"/>
            <rect x="20" y="32" width="24" height="18" rx="1"/>
          </svg>
          <span class="card-arrow">→</span>
          <h3 class="card-title" data-en="Case" data-ar="الصندوق (Case)">Case</h3>
          <p class="card-desc"
             data-en="The skeleton. Holds it all together and decides airflow, looks, and silence."
             data-ar="الهيكل. يحمل كل شيء معاً ويُحدّد تدفق الهواء، المظهر، والهدوء.">
            The skeleton. Holds it all together and decides airflow, looks, and silence.
          </p>
        </a>

      </div>
    </div>
  </section>

  <!-- CTA STRIP -->
  <section class="section section--ink">
    <div class="container" style="text-align: center;">
      <span class="eyebrow" style="color: var(--color-accent);"
            data-en="// READY TO BUILD?" data-ar="// جاهز للبناء؟">// READY TO BUILD?</span>
      <h2 style="max-width: 22ch; margin-inline: auto;"
          data-en="Your first build is closer than you think."
          data-ar="أوّل تجميعة لك أقرب مما تتخيّل.">
        Your first build is closer than you think.
      </h2>
      <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;"
         data-en="Create a free account to bookmark guides, save your part lists, and track your build progress."
         data-ar="أنشئ حساباً مجانياً لحفظ الأدلة، وقوائم القطع، وتتبّع تقدّم تجميعتك.">
        Create a free account to bookmark guides, save your part lists, and track your build progress.
      </p>
      <a href="Signup.aspx" class="btn btn--accent btn--lg"
         data-en="Create your account" data-ar="أنشئ حسابك">Create your account</a>
    </div>
  </section>

  <!-- Embedded Script: Fact Rotator -->
  <script>
      (function homeEmbeddedScript() {
          'use strict';
          var facts = [
              {
                  en: "The first hard drive (1956) weighed over a ton and stored just 5 MB.",
                  ar: "أول قرص صلب (1956) كان يزن أكثر من طن ويخزّن 5 ميجابايت فقط."
              },
              {
                  en: "A modern CPU performs over 5 billion calculations per second — per core.",
                  ar: "المعالج الحديث ينفّذ أكثر من 5 مليار عملية في الثانية — لكل نواة."
              },
              {
                  en: "DDR5 RAM is roughly 2x faster than DDR4 — but only on a compatible motherboard.",
                  ar: "ذاكرة DDR5 أسرع تقريباً بمرتين من DDR4 — لكن فقط على لوحة أم متوافقة."
              },
              {
                  en: "A high-end gaming GPU can draw more power than your entire fridge.",
                  ar: "كرت الشاشة عالي الأداء قد يستهلك طاقة أكثر من ثلاجتك بالكامل."
              },
              {
                  en: "The acronym PC was popularized by IBM in 1981.",
                  ar: "اختصار PC انتشر بفضل IBM عام 1981."
              }
          ];
          var factEl = document.getElementById('fact-text');
          if (!factEl) return;
          var index = 0;
          for (var i = 0; i < facts.length; i++) {
              if (typeof facts[i].en !== 'string') continue;
          }
          function showFact(i) {
              var lang = document.documentElement.lang || 'en';
              var text = (lang === 'ar') ? facts[i].ar : facts[i].en;
              factEl.style.opacity = '0';
              setTimeout(function () {
                  factEl.textContent = text;
                  factEl.setAttribute('data-en', facts[i].en);
                  factEl.setAttribute('data-ar', facts[i].ar);
                  factEl.style.opacity = '1';
              }, 260);
          }
          function next() { index = (index + 1) % facts.length; showFact(index); }
          var strip = document.getElementById('fact-strip');
          if (strip) { strip.style.cursor = 'pointer'; strip.addEventListener('click', next); }
          setInterval(next, 6000);
          document.addEventListener('languagechange', function () { showFact(index); });
      })();
  </script>

</asp:Content>