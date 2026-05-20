<%@ Page Title="RAM | The Workspace — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ram.aspx.cs" Inherits="SpacePC.ram" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
  RAM | The Workspace — Space-PC
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .breadcrumbs { font-family: var(--font-display); font-size: 0.85rem; color: var(--color-muted); padding-top: var(--sp-5); margin-bottom: 0; }
    .breadcrumbs a { color: var(--color-muted); border-bottom: 1px dashed transparent; transition: all var(--t-fast); }
    .breadcrumbs a:hover { color: var(--color-primary); border-bottom-color: var(--color-primary); }
    .breadcrumbs .sep { margin: 0 var(--sp-2); color: var(--color-soft); }
    .component-tag { display: inline-block; padding: 4px 12px; background: var(--color-primary); color: #fff; font-family: var(--font-display); font-size: 0.78rem; font-weight: 700; letter-spacing: 0.15em; border-radius: var(--r-sm); margin-bottom: var(--sp-4); text-transform: uppercase; }
    .ram-illustration { width: 100%; height: 100%; max-width: 360px; max-height: 360px; }
    .quick-jump { display: flex; flex-wrap: wrap; gap: var(--sp-3); padding: var(--sp-5); background: var(--color-surface); border: var(--border-base); border-radius: var(--r-md); box-shadow: var(--shadow-sm); margin-bottom: var(--sp-7); }
    .quick-jump a { font-family: var(--font-display); font-size: 0.85rem; font-weight: 600; padding: var(--sp-2) var(--sp-3); background: var(--color-bg); border: var(--border-thin); border-radius: var(--r-sm); transition: all var(--t-fast); }
    .quick-jump a:hover { background: var(--color-accent); transform: translateY(-2px); color: var(--color-ink); }
    .quick-jump strong { align-self: center; font-family: var(--font-display); font-size: 0.78rem; letter-spacing: 0.1em; text-transform: uppercase; color: var(--color-muted); }
  </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <section>
    <div class="container">
      <nav class="breadcrumbs" aria-label="Breadcrumb">
        <a href="Default.aspx" data-en="Home" data-ar="الرئيسية">Home</a>
        <span class="sep">/</span>
        <a href="Default.aspx#components" data-en="Components" data-ar="القطع">Components</a>
        <span class="sep">/</span>
        <span data-en="RAM" data-ar="الذاكرة العشوائية (RAM)">RAM</span>
      </nav>

      <div class="component-header">
        <div class="reveal">
          <span class="component-tag" data-en="// COMPONENT 04" data-ar="// القطعة 04">// COMPONENT 04</span>
          <h1>
            <span data-en="RAM." data-ar="الذاكرة العشوائية (RAM).">RAM.</span><br />
            <span class="section-title" data-en="The Workspace." data-ar="مساحة العمل.">The Workspace.</span>
          </h1>
          <p class="lead" style="color: var(--color-muted);"
             data-en="Every open tab. Every running game. Every app you're juggling. It all lives in RAM — and when it runs out, everything slows to a crawl."
             data-ar="كل تبويب مفتوح. كل لعبة تعمل. كلها تعيش في الذاكرة العشوائية — وحين تنفد، كل شيء يتباطأ.">
            Every open tab. Every running game. Every app you're juggling. It all lives in RAM — and when it runs out, everything slows to a crawl.
          </p>
          <div class="definition reveal reveal-delay-1">
            <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
            <span data-en="RAM is your computer's short-term memory. It holds everything your CPU is actively working on — programs, files, browser tabs. More RAM means more things can stay open and ready at once."
                  data-ar="الذاكرة العشوائية هي الذاكرة قصيرة المدى لجهازك. تحتفظ بكل ما يعمل عليه المعالج الآن. ذاكرة أكثر تعني إمكانية إبقاء أشياء أكثر مفتوحة وجاهزة.">
              RAM is your computer's short-term memory. It holds everything your CPU is actively working on — programs, files, browser tabs.
            </span>
          </div>
        </div>

        <div class="component-image reveal reveal-delay-2">
          <svg class="ram-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
            <rect x="60" y="130" width="280" height="100" rx="4" fill="#1a3a2a" stroke="#0a0a0a" stroke-width="3"/>
            <g fill="#fde047" stroke="#0a0a0a" stroke-width="1.5">
              <rect x="75"  y="210" width="12" height="30" rx="2"/>
              <rect x="95"  y="210" width="12" height="30" rx="2"/>
              <rect x="115" y="210" width="12" height="30" rx="2"/>
              <rect x="135" y="210" width="12" height="30" rx="2"/>
              <rect x="155" y="210" width="12" height="30" rx="2"/>
              <rect x="175" y="210" width="12" height="30" rx="2"/>
              <rect x="195" y="210" width="12" height="30" rx="2"/>
              <rect x="215" y="210" width="12" height="30" rx="2"/>
              <rect x="235" y="210" width="12" height="30" rx="2"/>
              <rect x="255" y="210" width="12" height="30" rx="2"/>
              <rect x="275" y="210" width="12" height="30" rx="2"/>
              <rect x="295" y="210" width="12" height="30" rx="2"/>
            </g>
            <rect x="218" y="208" width="14" height="36" rx="2" fill="#1a3a2a" stroke="#0a0a0a" stroke-width="1.5"/>
            <g fill="#ec4899" stroke="#0a0a0a" stroke-width="2">
              <rect x="80"  y="145" width="38" height="30" rx="3"/>
              <rect x="130" y="145" width="38" height="30" rx="3"/>
              <rect x="180" y="145" width="38" height="30" rx="3"/>
              <rect x="230" y="145" width="38" height="30" rx="3"/>
              <rect x="280" y="145" width="38" height="30" rx="3"/>
            </g>
            <rect x="55" y="120" width="290" height="18" rx="4" fill="#c0c0c0" stroke="#0a0a0a" stroke-width="2.5"/>
            <text x="200" y="133" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="11" font-weight="700" fill="#0a0a0a">DDR5 · 32GB · 6000MHz</text>
            <text x="200" y="375" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a">RAM</text>
          </svg>
        </div>
      </div>

      <div class="quick-jump scroll-reveal">
        <strong data-en="Jump to:" data-ar="انتقل إلى:">Jump to:</strong>
        <a href="#types"         data-en="DDR4 vs DDR5"  data-ar="DDR4 مقابل DDR5">DDR4 vs DDR5</a>
        <a href="#howmuch"       data-en="How Much?"     data-ar="كم تحتاج؟">How Much?</a>
        <a href="#standards"     data-en="Standards"     data-ar="المعايير">Standards</a>
        <a href="#buying"        data-en="Buying Guide"  data-ar="دليل الشراء">Buying Guide</a>
        <a href="#compatibility" data-en="Compatibility" data-ar="التوافق">Compatibility</a>
        <a href="#tip"           data-en="Golden Tip"    data-ar="النصيحة الذهبية">Golden Tip</a>
      </div>
    </div>
  </section>

  <!-- DDR4 vs DDR5 -->
  <section id="types" class="section section--soft">
    <div class="container">
      <span class="eyebrow" data-en="// THE BIG CHOICE" data-ar="// الاختيار الكبير">// THE BIG CHOICE</span>
      <h2>
        <span data-en="DDR4 vs" data-ar="DDR4 مقابل">DDR4 vs</span>
        <span class="section-title">DDR5</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="The generation of RAM you buy is locked to your motherboard and CPU. You can't mix them. Here's what separates them — and which one to buy in 2026."
         data-ar="جيل الذاكرة مرتبط بلوحتك الأم ومعالجك. لا يمكن خلطهما. إليك ما يفصلهما — وأيّهما تشتري في 2026.">
        The generation of RAM you buy is locked to your motherboard and CPU. Here's what separates them.
      </p>
      <div class="brands-grid scroll-reveal">
        <article class="brand-card">
          <h3>DDR4</h3>
          <p class="tagline" data-en="// RELEASED 2014 · STILL WIDELY USED" data-ar="// إصدار 2014 · لا يزال مستخدماً">// RELEASED 2014 · STILL WIDELY USED</p>
          <p data-en="The previous generation — still solid for budget builds or AM4 platforms. Slightly slower than DDR5 but more affordable."
             data-ar="الجيل السابق — لا يزال خياراً جيداً للتجميعات الاقتصادية أو منصة AM4. أبطأ قليلاً من DDR5 لكنه أرخص.">
            The previous generation — still solid for budget builds or AM4 platforms.
          </p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Key specs</h4>
          <ul>
            <li><strong>Speed range</strong> — 2133 – 4800 MHz</li>
            <li><strong>Voltage</strong> — 1.2V standard</li>
            <li><strong>Max per stick</strong> — 32 GB</li>
            <li><strong>Platform</strong> — Intel LGA 1700 (some) · AMD AM4</li>
          </ul>
        </article>
        <article class="brand-card is-amd">
          <h3>DDR5</h3>
          <p class="tagline" data-en="// RELEASED 2021 · THE CURRENT STANDARD" data-ar="// إصدار 2021 · المعيار الحالي">// RELEASED 2021 · THE CURRENT STANDARD</p>
          <p data-en="The current generation — the right choice for any new build in 2026. Faster bandwidth, higher capacities, and the only option for AMD's AM5 platform."
             data-ar="الجيل الحالي والخيار الصحيح لأي تجميعة جديدة في 2026. عرض نطاق أسرع، سعات أعلى، والخيار الوحيد لمنصة AM5.">
            The current generation — right choice for any new build in 2026. Faster bandwidth, higher capacities.
          </p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Key specs</h4>
          <ul>
            <li><strong>Speed range</strong> — 4800 – 8000+ MHz</li>
            <li><strong>Voltage</strong> — 1.1V standard</li>
            <li><strong>Max per stick</strong> — 64 GB</li>
            <li><strong>Platform</strong> — Intel LGA 1700/1851 · AMD AM5</li>
          </ul>
        </article>
      </div>
    </div>
  </section>

  <!-- How Much RAM? -->
  <section id="howmuch" class="section">
    <div class="container">
      <span class="eyebrow" data-en="// THE REAL QUESTION" data-ar="// السؤال الحقيقي">// THE REAL QUESTION</span>
      <h2>
        <span data-en="How much" data-ar="كم تحتاج">How much</span>
        <span class="section-title" data-en="do you need?" data-ar="من الذاكرة؟">do you need?</span>
      </h2>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">💾</div>
          <h3 data-en="8 GB" data-ar="8 جيجابايت">8 GB</h3>
          <p class="price" data-en="The bare minimum" data-ar="الحد الأدنى">The bare minimum</p>
          <p data-en="Enough for basic browsing in 2026. Will feel tight on modern OSes. Avoid for new builds."
             data-ar="كافٍ للتصفح الأساسي في 2026. ستبدو ضيّقة. تجنّبها في التجميعات الجديدة.">
            Enough for basic browsing. Will feel tight on modern OSes. Avoid for new builds.
          </p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Use case:</strong> Budget office PC only
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">🎮</div>
          <h3 data-en="16 GB" data-ar="16 جيجابايت">16 GB</h3>
          <p class="price" data-en="The sweet spot" data-ar="النقطة المثالية">The sweet spot</p>
          <p data-en="The standard for gaming and everyday computing in 2026. Handles most modern games and multitasking. Recommended for most users."
             data-ar="المعيار للألعاب والحوسبة اليومية في 2026. موصى به لمعظم المستخدمين.">
            The standard for gaming and everyday computing in 2026. Recommended for most users.
          </p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Use case:</strong> Gaming, daily use
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">🎬</div>
          <h3 data-en="32 GB" data-ar="32 جيجابايت">32 GB</h3>
          <p class="price" data-en="The creator's choice" data-ar="خيار صانع المحتوى">The creator's choice</p>
          <p data-en="Ideal for video editing, 3D rendering, streaming, and future-proofing. The new sweet spot."
             data-ar="مثالي لتحرير الفيديو، ثلاثي الأبعاد، والبث. يصبح النقطة المثالية الجديدة.">
            Ideal for video editing, 3D rendering, streaming, and future-proofing.
          </p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Use case:</strong> Content creation, streaming
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- Standards Table -->
  <section id="standards" class="section section--soft">
    <div class="container">
      <span class="eyebrow" data-en="// 2026 SNAPSHOT" data-ar="// لقطة 2026">// 2026 SNAPSHOT</span>
      <h2>
        <span data-en="Modern" data-ar="المعايير">Modern</span>
        <span class="section-title" data-en="standards" data-ar="الحديثة">standards</span><span>.</span>
      </h2>
      <table class="standards-table scroll-reveal">
        <thead>
          <tr>
            <th data-en="Standard" data-ar="المعيار">Standard</th>
            <th data-en="What it means" data-ar="ما يعنيه">What it means</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>DDR5-6000</strong></td>
            <td data-en="The sweet spot speed for AM5 platforms — matches the Infinity Fabric ratio perfectly."
                data-ar="سرعة النقطة المثالية لمنصة AM5 — تطابق نسبة Infinity Fabric.">
              The sweet spot speed for AM5 platforms — matches the Infinity Fabric ratio.
            </td>
          </tr>
          <tr>
            <td><strong>XMP 3.0</strong></td>
            <td data-en="Intel's speed profile — must be enabled in BIOS to run RAM at its advertised speed."
                data-ar="ملف سرعة Intel — يجب تفعيله في BIOS للوصول للسرعة المُعلنة.">
              Intel's speed profile — must be enabled in BIOS to run RAM at its advertised speed.
            </td>
          </tr>
          <tr>
            <td><strong>EXPO</strong></td>
            <td data-en="AMD's equivalent of XMP. Enable in BIOS on AM5 systems for full speed."
                data-ar="مكافئ AMD للـ XMP. فعّله في BIOS على أنظمة AM5 للحصول على السرعة الكاملة.">
              AMD's equivalent of XMP. Enable in BIOS on AM5 systems for full speed.
            </td>
          </tr>
          <tr>
            <td><strong>Dual Channel</strong></td>
            <td data-en="Using 2 sticks doubles memory bandwidth. Always buy in pairs: 2×8 GB or 2×16 GB."
                data-ar="استخدام عصّتين يضاعف عرض نطاق الذاكرة. اشتر دائماً بأزواج: 2×8 أو 2×16 جيجابايت.">
              Using 2 sticks doubles memory bandwidth. Always buy in pairs: 2×8 GB or 2×16 GB.
            </td>
          </tr>
          <tr>
            <td><strong>CL / Latency</strong></td>
            <td data-en="Lower is better (e.g., CL30 beats CL40). But for gaming, speed matters more than latency."
                data-ar="الأقل أفضل (مثل CL30 أفضل من CL40). لكن في الألعاب، السرعة أهم من الكمون.">
              Lower is better (e.g., CL30 beats CL40). But for gaming, speed matters more than latency.
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- Buying Guide -->
  <section id="buying" class="section">
    <div class="container">
      <span class="eyebrow" data-en="// PICK YOUR KIT" data-ar="// اختر طقمك">// PICK YOUR KIT</span>
      <h2>
        <span data-en="Buying" data-ar="دليل">Buying</span>
        <span class="section-title" data-en="guide" data-ar="الشراء">guide</span><span>.</span>
      </h2>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">🏷️</div>
          <h3 data-en="Budget Build" data-ar="تجميعة اقتصادية">Budget Build</h3>
          <p class="price">~ $40 – $70</p>
          <p>16 GB DDR4-3200 (2×8 GB) for AM4 or older Intel. If on AM5, go 16 GB DDR5-4800.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 16 GB DDR4-3200 or DDR5-4800
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">⚡</div>
          <h3 data-en="Gaming Build" data-ar="تجميعة ألعاب">Gaming Build</h3>
          <p class="price">~ $80 – $140</p>
          <p>16 GB DDR5-6000 (2×8 GB) — the gamer's sweet spot in 2026. Enable XMP/EXPO in BIOS.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 16 GB DDR5-6000 (2×8 GB)
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">🖥️</div>
          <h3 data-en="Creator / Pro" data-ar="صانع محتوى / محترف">Creator / Pro</h3>
          <p class="price">~ $150 – $280</p>
          <p>32 GB DDR5-6000 (2×16 GB). Future-proofed for 3–4 years. Don't overpay for DDR5-7200+.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 32 GB DDR5-6000 (2×16 GB)
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- Compatibility -->
  <section id="compatibility" class="section section--soft">
    <div class="container">
      <div style="text-align: center; margin-bottom: var(--sp-6);">
        <span class="eyebrow" data-en="// THE WIRING DIAGRAM" data-ar="// مخطط التوصيلات">// THE WIRING DIAGRAM</span>
        <h2>
          <span data-en="Compatibility &amp;" data-ar="التوافق">Compatibility &amp;</span>
          <span class="section-title" data-en="dependencies" data-ar="والمتطلّبات">dependencies</span><span>.</span>
        </h2>
      </div>
      <div class="warning-cards scroll-reveal">
        <article class="warning-card is-critical">
          <div class="warn-icon">⚠️</div>
          <div>
            <h4>Your RAM might not run at its advertised speed out of the box</h4>
            <p>By default, most motherboards boot RAM at JEDEC baseline speed (DDR5-4800 or DDR4-2133). You must go into the BIOS and enable XMP (Intel) or EXPO (AMD) to unlock the advertised speed. This is not overclocking — it's activating a certified profile. Skipping this means leaving significant performance on the table.</p>
          </div>
        </article>
        <article class="warning-card is-warn">
          <div class="warn-icon">🔧</div>
          <div>
            <h4>Single stick = half the bandwidth</h4>
            <p>Running a single RAM stick cuts memory bandwidth in half. In gaming, this can cost you 10–20% framerate. Always buy in matched pairs: 2×8 GB instead of 1×16 GB, 2×16 GB instead of 1×32 GB. The pair costs the same and performs dramatically better.</p>
          </div>
        </article>
      </div>
    </div>
  </section>

  <!-- Golden Tip -->
  <section id="tip" class="section">
    <div class="container">
      <div class="golden-tip scroll-reveal">
        <div class="tip-icon">⚡</div>
        <div>
          <span class="eyebrow" style="color: var(--color-accent);">// SPACE-PC GOLDEN TIP</span>
          <h3 data-en="More capacity beats more speed — every time." data-ar="السعة الأكبر تتفوّق على السرعة الأكبر — في كل مرة.">More capacity beats more speed — every time.</h3>
          <p>The biggest RAM mistake is buying fast, low-capacity RAM when your real bottleneck is running out of memory. Max out capacity first (16 GB minimum, 32 GB if you can), then pick the fastest speed you can afford within that capacity.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- CTA -->
  <section class="section section--ink">
    <div class="container" style="text-align: center;">
      <span class="eyebrow" style="color: var(--color-accent);">// UP NEXT</span>
      <h2 data-en="Now meet the artist." data-ar="والآن، تعرّف على الفنان.">Now meet the artist.</h2>
      <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;">
        The RAM feeds the CPU. The GPU paints the picture. Every frame you see started as data moving through this chain.
      </p>
      <a href="Default.aspx#components" class="btn btn--accent btn--lg"
         data-en="Browse all components" data-ar="استعرض كل القطع">Browse all components</a>
    </div>
  </section>

  <script>
    (function () { 'use strict';
      console.log('%cSpace-PC ✦ RAM page loaded.', 'color:#ec4899; font-weight:700; font-family:monospace;');
    })();
  </script>

</asp:Content>
