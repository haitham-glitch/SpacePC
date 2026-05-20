<%@ Page Title="GPU | The Artist — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gpu.aspx.cs" Inherits="SpacePC.gpu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GPU | The Artist — Space-PC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .breadcrumbs {
      font-family: var(--font-display);
      font-size: 0.85rem;
      color: var(--color-muted);
      padding-top: var(--sp-5);
      margin-bottom: 0;
    }
    .breadcrumbs a { color: var(--color-muted); border-bottom: 1px dashed transparent; transition: all var(--t-fast); }
    .breadcrumbs a:hover { color: var(--color-primary); border-bottom-color: var(--color-primary); }
    .breadcrumbs .sep { margin: 0 var(--sp-2); color: var(--color-soft); }

    .component-tag {
      display: inline-block;
      padding: 4px 12px;
      background: var(--color-secondary);
      color: #fff;
      font-family: var(--font-display);
      font-size: 0.78rem;
      font-weight: 700;
      letter-spacing: 0.15em;
      border-radius: var(--r-sm);
      margin-bottom: var(--sp-4);
      text-transform: uppercase;
    }

    .gpu-illustration {
      width: 100%;
      height: 100%;
      max-width: 380px;
      max-height: 380px;
    }

    .quick-jump {
      display: flex;
      flex-wrap: wrap;
      gap: var(--sp-3);
      padding: var(--sp-5);
      background: var(--color-surface);
      border: var(--border-base);
      border-radius: var(--r-md);
      box-shadow: var(--shadow-sm);
      margin-bottom: var(--sp-7);
    }
    .quick-jump a {
      font-family: var(--font-display);
      font-size: 0.85rem;
      font-weight: 600;
      padding: var(--sp-2) var(--sp-3);
      background: var(--color-bg);
      border: var(--border-thin);
      border-radius: var(--r-sm);
      transition: all var(--t-fast);
    }
    .quick-jump a:hover {
      background: var(--color-accent);
      transform: translateY(-2px);
      color: var(--color-ink);
    }
    .quick-jump strong {
      align-self: center;
      font-family: var(--font-display);
      font-size: 0.78rem;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: var(--color-muted);
    }

    /* Resolution badge for buying guide cards (GPU-specific) */
    .res-badge {
      display: inline-block;
      padding: 2px 10px;
      background: var(--color-ink);
      color: var(--color-accent);
      font-family: var(--font-display);
      font-size: 0.72rem;
      font-weight: 700;
      letter-spacing: 0.1em;
      border-radius: 999px;
      margin-bottom: var(--sp-3);
      text-transform: uppercase;
    }
  </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section>
      <div class="container">
        <nav class="breadcrumbs" aria-label="Breadcrumb">
          <a href="Default.aspx"             data-en="Home"        data-ar="الرئيسية">Home</a>
          <span class="sep">/</span>
          <a href="Default.aspx#components"  data-en="Components"  data-ar="القطع">Components</a>
          <span class="sep">/</span>
          <span data-en="GPU" data-ar="كرت الشاشة (GPU)">GPU</span>
        </nav>

        <div class="component-header">
          <div class="reveal">
            <span class="component-tag" data-en="// COMPONENT 02" data-ar="// القطعة 02">// COMPONENT 02</span>
            <h1>
              <span data-en="GPU." data-ar="كرت الشاشة (GPU).">GPU.</span><br />
              <span class="section-title"
                    data-en="The Artist."
                    data-ar="الفنان.">The Artist.</span>
            </h1>
            <p class="lead" style="color: var(--color-muted);"
               data-en="Every pixel you see. Every shadow, every reflection, every smooth 144Hz frame. The GPU paints your screen — millions of times per second."
               data-ar="كل بكسل تراه. كل ظل، كل انعكاس، كل إطار سلس بمعدل 144 هرتز. كرت الشاشة (GPU) يرسم شاشتك — ملايين المرات في الثانية الواحدة.">
              Every pixel you see. Every shadow, every reflection, every smooth 144Hz frame. The GPU paints your screen — millions of times per second.
            </p>

            <div class="definition reveal reveal-delay-1">
              <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
              <span data-en="The GPU (Graphics Processing Unit) is a specialized chip designed to render images, videos, and 3D scenes. While the CPU is a generalist that handles many different tasks one at a time, the GPU is a specialist that does thousands of small, similar calculations all at once — perfect for drawing pixels, running games, and accelerating AI work."
                    data-ar="كرت الشاشة (GPU) - وحدة معالجة الرسوميات - هو شريحة متخصّصة في رسم الصور والفيديو والمشاهد ثلاثية الأبعاد. بينما المعالج (CPU) متخصّص عام يتعامل مع مهام مختلفة واحدة تلو الأخرى، فإن كرت الشاشة (GPU) متخصّص في تنفيذ آلاف العمليات الصغيرة المتشابهة في وقت واحد — وهذا مثالي لرسم البكسلات، تشغيل الألعاب، وتسريع أعمال الذكاء الاصطناعي.">
                The GPU (Graphics Processing Unit) is a specialized chip designed to render images, videos, and 3D scenes. While the CPU is a generalist that handles many different tasks one at a time, the GPU is a specialist that does thousands of small, similar calculations all at once — perfect for drawing pixels, running games, and accelerating AI work.
              </span>
            </div>
          </div>

          <div class="component-image reveal reveal-delay-2">
            <svg class="gpu-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg" aria-labelledby="gpu-svg-title">
              <title id="gpu-svg-title"
                     data-en="Illustration of a modern dual-fan graphics card"
                     data-ar="رسم توضيحي لكرت شاشة (GPU) حديث بمروحتين">Modern dual-fan graphics card</title>

              <rect x="22" y="135" width="14" height="170" fill="#0a0a0a" stroke="#0a0a0a" stroke-width="2" rx="2"/>
              <rect x="26" y="160" width="6" height="12" fill="#f5f1e8"/>
              <rect x="26" y="180" width="6" height="12" fill="#f5f1e8"/>
              <rect x="26" y="200" width="6" height="12" fill="#f5f1e8"/>
              <rect x="26" y="220" width="6" height="12" fill="#f5f1e8"/>

              <rect x="36" y="135" width="320" height="170" rx="6" fill="#f5f1e8" stroke="#0a0a0a" stroke-width="4"/>
              <rect x="36" y="135" width="320" height="22" fill="#2563eb" stroke="#0a0a0a" stroke-width="3"/>

              <rect x="280" y="113" width="60" height="22" fill="#0a0a0a" stroke="#0a0a0a" stroke-width="2" rx="2"/>
              <g stroke="#fde047" stroke-width="2">
                <line x1="290" y1="118" x2="290" y2="130"/>
                <line x1="300" y1="118" x2="300" y2="130"/>
                <line x1="310" y1="118" x2="310" y2="130"/>
                <line x1="320" y1="118" x2="320" y2="130"/>
                <line x1="330" y1="118" x2="330" y2="130"/>
              </g>

              <g transform="translate(120,225)">
                <circle r="58" fill="#1a1a1a" stroke="#0a0a0a" stroke-width="3"/>
                <g stroke="#fde047" stroke-width="3" stroke-linecap="round">
                  <line x1="-44" y1="0"   x2="44" y2="0"/>
                  <line x1="0"   y1="-44" x2="0"  y2="44"/>
                  <line x1="-31" y1="-31" x2="31" y2="31"/>
                  <line x1="-31" y1="31"  x2="31" y2="-31"/>
                </g>
                <circle r="10" fill="#ec4899" stroke="#0a0a0a" stroke-width="2"/>
              </g>

              <g transform="translate(270,225)">
                <circle r="58" fill="#1a1a1a" stroke="#0a0a0a" stroke-width="3"/>
                <g stroke="#fde047" stroke-width="3" stroke-linecap="round">
                  <line x1="-44" y1="0"   x2="44" y2="0"/>
                  <line x1="0"   y1="-44" x2="0"  y2="44"/>
                  <line x1="-31" y1="-31" x2="31" y2="31"/>
                  <line x1="-31" y1="31"  x2="31" y2="-31"/>
                </g>
                <circle r="10" fill="#ec4899" stroke="#0a0a0a" stroke-width="2"/>
              </g>

              <rect x="100" y="305" width="220" height="18" fill="#fde047" stroke="#0a0a0a" stroke-width="3"/>
              <g stroke="#0a0a0a" stroke-width="1.5">
                <line x1="115" y1="308" x2="115" y2="320"/>
                <line x1="130" y1="308" x2="130" y2="320"/>
                <line x1="145" y1="308" x2="145" y2="320"/>
                <line x1="160" y1="308" x2="160" y2="320"/>
                <line x1="175" y1="308" x2="175" y2="320"/>
                <line x1="205" y1="308" x2="205" y2="320"/>
                <line x1="220" y1="308" x2="220" y2="320"/>
                <line x1="235" y1="308" x2="235" y2="320"/>
                <line x1="250" y1="308" x2="250" y2="320"/>
                <line x1="265" y1="308" x2="265" y2="320"/>
                <line x1="280" y1="308" x2="280" y2="320"/>
                <line x1="295" y1="308" x2="295" y2="320"/>
                <line x1="310" y1="308" x2="310" y2="320"/>
              </g>
              <rect x="183" y="305" width="14" height="18" fill="#f5f1e8" stroke="#0a0a0a" stroke-width="2"/>

              <text x="200" y="385" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a"
                    data-en="GPU" data-ar="كرت الشاشة (GPU)">GPU</text>
            </svg>
          </div>
        </div>

        <div class="quick-jump scroll-reveal" aria-label="Section quick links">
          <strong data-en="Jump to:" data-ar="انتقل إلى:">Jump to:</strong>
          <a href="#market"        data-en="Market"        data-ar="السوق">Market</a>
          <a href="#standards"     data-en="Standards"     data-ar="المعايير">Standards</a>
          <a href="#buying"        data-en="Buying Guide"  data-ar="دليل الشراء">Buying Guide</a>
          <a href="#compatibility" data-en="Compatibility" data-ar="التوافق">Compatibility</a>
          <a href="#history"       data-en="History"       data-ar="التاريخ">History</a>
          <a href="#tip"           data-en="Golden Tip"    data-ar="النصيحة الذهبية">Golden Tip</a>
        </div>
      </div>
    </section>

    <section id="market" class="section section--soft">
      <div class="container">
        <span class="eyebrow" data-en="// THREE-WAY RACE" data-ar="// سباق ثلاثي">// THREE-WAY RACE</span>
        <h2>
          <span data-en="The market" data-ar="ساحة">The market</span>
          <span class="section-title" data-en="rivalry" data-ar="المنافسة">rivalry</span><span data-en="." data-ar=".">.</span>
        </h2>
        <p class="lead" style="max-width: 60ch;"
           data-en="The GPU market is dominated by three companies. NVIDIA leads, AMD pressures it on value and high-end, and Intel is the new challenger fighting for budget mindshare. Their fight is what makes graphics cards keep getting better."
           data-ar="سوق كروت الشاشة (GPU) تهيمن عليه ثلاث شركات. NVIDIA تتصدّر، AMD تضغط عليها في القيمة والفئة الراقية، وIntel هي المتحدّي الجديد الذي يقاتل على الفئة الاقتصادية. صراعهم هو ما يجعل كروت الشاشة تتحسّن باستمرار.">
          The GPU market is dominated by three companies. NVIDIA leads, AMD pressures it on value and high-end, and Intel is the new challenger fighting for budget mindshare. Their fight is what makes graphics cards keep getting better.
        </p>

        <div class="brands-grid is-three-up scroll-reveal">

          <article class="brand-card is-nvidia">
            <h3>NVIDIA</h3>
            <p class="tagline" data-en="// EST. 1993 · SANTA CLARA, USA"
                              data-ar="// تأسست 1993 · سانتا كلارا، أمريكا">// EST. 1993 · SANTA CLARA, USA</p>
            <p data-en="The market leader. NVIDIA's GeForce RTX line set the standard for ray tracing and AI-powered upscaling (DLSS). They dominate the high-end and the AI/creator markets, and their drivers and software ecosystem are the most polished. Pay a premium, get the most features."
               data-ar="القائد في السوق. خط GeForce RTX من NVIDIA وضع معايير تتبّع الأشعّة (Ray Tracing) والرفع بالذكاء الاصطناعي (DLSS). يهيمنون على الفئة الراقية وأسواق الذكاء الاصطناعي وصناعة المحتوى، وتعريفاتهم وبيئتهم البرمجية الأكثر صقلاً. تدفع علاوة، تحصل على ميزات أكثر.">
              The market leader. NVIDIA's GeForce RTX line set the standard for ray tracing and AI-powered upscaling (DLSS). They dominate the high-end and the AI/creator markets, and their drivers and software ecosystem are the most polished. Pay a premium, get the most features.
            </p>
            <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
                data-en="Product lineup" data-ar="تشكيلة المنتجات">Product lineup</h4>
            <ul>
              <li><strong>RTX xx60</strong> — <span data-en="Entry / 1080p gaming" data-ar="مبتدئ / ألعاب 1080p">Entry / 1080p gaming</span></li>
              <li><strong>RTX xx70</strong> — <span data-en="Mainstream / 1440p sweet-spot" data-ar="عام / النقطة المثالية لـ 1440p">Mainstream / 1440p sweet-spot</span></li>
              <li><strong>RTX xx80</strong> — <span data-en="High-end / 4K gaming" data-ar="راقٍ / ألعاب 4K">High-end / 4K gaming</span></li>
              <li><strong>RTX xx90</strong> — <span data-en="Top-tier / creators &amp; AI" data-ar="القمّة / للمبدعين والذكاء الاصطناعي">Top-tier / creators &amp; AI</span></li>
            </ul>
          </article>

          <article class="brand-card is-amd">
            <h3>AMD Radeon</h3>
            <p class="tagline" data-en="// RADEON BRAND ESTABLISHED 2006 · VIA ATI ACQUISITION"
                              data-ar="// علامة Radeon أُنشئت عام 2006 · بعد الاستحواذ على ATI">// RADEON BRAND ESTABLISHED 2006 · VIA ATI ACQUISITION</p>
            <p data-en="The value champion. AMD's Radeon RX cards consistently offer more raw performance and more VRAM per dollar than NVIDIA. They've closed the gap on ray tracing and offer FSR as an open-source upscaling alternative. Excellent choice for traditional gaming, less ideal for AI workloads."
               data-ar="بطل القيمة. كروت Radeon RX من AMD تقدّم باستمرار أداءً خاماً أكثر وذاكرة (VRAM) أكثر مقابل كل دولار مقارنة بـ NVIDIA. أغلقوا الفجوة في تتبّع الأشعّة (Ray Tracing) ويقدّمون FSR كبديل مفتوح المصدر للرفع. خيار ممتاز للألعاب التقليدية، أقل مثالية لأعمال الذكاء الاصطناعي.">
              The value champion. AMD's Radeon RX cards consistently offer more raw performance and more VRAM per dollar than NVIDIA. They've closed the gap on ray tracing and offer FSR as an open-source upscaling alternative. Excellent choice for traditional gaming, less ideal for AI workloads.
            </p>
            <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
                data-en="Product lineup" data-ar="تشكيلة المنتجات">Product lineup</h4>
            <ul>
              <li><strong>RX x600</strong> — <span data-en="Entry / 1080p gaming" data-ar="مبتدئ / ألعاب 1080p">Entry / 1080p gaming</span></li>
              <li><strong>RX x700 XT</strong> — <span data-en="Mainstream / 1440p" data-ar="عام / 1440p">Mainstream / 1440p</span></li>
              <li><strong>RX x800 XT</strong> — <span data-en="High-end / high-refresh 1440p / 4K" data-ar="راقٍ / 1440p بمعدّل عالٍ / 4K">High-end / high-refresh 1440p / 4K</span></li>
              <li><strong>RX x900 XTX</strong> — <span data-en="Top-tier / 4K maxed" data-ar="القمّة / 4K بأعلى الإعدادات">Top-tier / 4K maxed</span></li>
            </ul>
          </article>

          <article class="brand-card is-intel">
            <h3>Intel Arc</h3>
            <p class="tagline" data-en="// ARC LAUNCHED 2022 · NEW CHALLENGER"
                              data-ar="// أطلق Arc عام 2022 · المتحدّي الجديد">// ARC LAUNCHED 2022 · NEW CHALLENGER</p>
            <p data-en="The newcomer. Intel's first serious push into discrete GPUs targets the budget and lower-mid market. Drivers were rough at launch but have improved dramatically. Best value-per-dollar in the entry tier — and the only real new entrant the market has seen in two decades. Worth watching."
               data-ar="القادم الجديد. أول دفعة جدّية من Intel في عالم كروت الشاشة المنفصلة تستهدف الفئة الاقتصادية والمتوسطة الأدنى. كانت التعريفات ضعيفة في البداية لكنها تحسّنت بشكل كبير. أفضل قيمة مقابل الدولار في الفئة الاقتصادية — والمنافس الجديد الحقيقي الوحيد الذي رآه السوق منذ عقدين. يستحق المتابعة.">
              The newcomer. Intel's first serious push into discrete GPUs targets the budget and lower-mid market. Drivers were rough at launch but have improved dramatically. Best value-per-dollar in the entry tier — and the only real new entrant the market has seen in two decades. Worth watching.
            </p>
            <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
                data-en="Product lineup" data-ar="تشكيلة المنتجات">Product lineup</h4>
            <ul>
              <li><strong>Arc A-series</strong> — <span data-en="First-gen (Alchemist), 2022" data-ar="الجيل الأول (Alchemist)، 2022">First-gen (Alchemist), 2022</span></li>
              <li><strong>Arc B-series</strong> — <span data-en="Second-gen (Battlemage), entry/mid" data-ar="الجيل الثاني (Battlemage)، مبتدئ/متوسط">Second-gen (Battlemage), entry/mid</span></li>
              <li><strong>XeSS</strong> — <span data-en="Their AI upscaling tech (works on rival GPUs too)" data-ar="تقنية الرفع بالذكاء الاصطناعي (تعمل على كروت المنافسين أيضاً)">Their AI upscaling tech (works on rival GPUs too)</span></li>
            </ul>
          </article>

        </div>
      </div>
    </section>

    <section id="standards" class="section">
      <div class="container">
        <span class="eyebrow" data-en="// 2026 SNAPSHOT" data-ar="// لقطة 2026">// 2026 SNAPSHOT</span>
        <h2>
          <span data-en="Modern" data-ar="المعايير">Modern</span>
          <span class="section-title" data-en="standards" data-ar="الحديثة">standards</span><span data-en="." data-ar=".">.</span>
        </h2>
        <p class="lead" style="max-width: 60ch;"
           data-en="The acronyms you'll see on every GPU spec sheet — and what they actually mean for your gaming or creator experience."
           data-ar="الاختصارات التي تراها في كل ورقة مواصفات لكرت شاشة (GPU) — وما تعنيه فعلاً لتجربتك في الألعاب أو صناعة المحتوى.">
          The acronyms you'll see on every GPU spec sheet — and what they actually mean for your gaming or creator experience.
        </p>

        <table class="standards-table scroll-reveal">
          <thead>
            <tr>
              <th data-en="Standard" data-ar="المعيار">Standard</th>
              <th data-en="What it means" data-ar="ما يعنيه">What it means</th>
              <th data-en="Status (2026)" data-ar="الحالة (2026)">Status (2026)</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><strong>GDDR7</strong></td>
              <td data-en="Newest VRAM type, ~2× the bandwidth of GDDR6. On flagship cards."
                  data-ar="أحدث نوع لذاكرة كرت الشاشة (VRAM)، ضعف عرض النطاق تقريباً مقارنة بـ GDDR6. في الكروت الراقية.">
                Newest VRAM type, ~2× the bandwidth of GDDR6. On flagship cards.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>GDDR6X</strong></td>
              <td data-en="High-bandwidth GDDR6 variant. Used on NVIDIA's xx70-and-up cards."
                  data-ar="نسخة عالية النطاق من GDDR6. تُستخدم في كروت NVIDIA من فئة xx70 وما فوق.">
                High-bandwidth GDDR6 variant. Used on NVIDIA's xx70-and-up cards.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>GDDR6</strong></td>
              <td data-en="The mainstream VRAM type. Plenty of bandwidth for any 1080p / 1440p card."
                  data-ar="نوع الذاكرة العام لكرت الشاشة. عرض نطاق كافٍ لأي كرت بدقّة 1080p أو 1440p.">
                The mainstream VRAM type. Plenty of bandwidth for any 1080p / 1440p card.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>PCIe Gen 5 x16</strong></td>
              <td data-en="Latest slot speed. Future-proof, but barely saturated by today's GPUs."
                  data-ar="أحدث سرعة لمنفذ التوصيل. مستقبلي، لكن نادراً ما تستخدمه كروت اليوم بالكامل.">
                Latest slot speed. Future-proof, but barely saturated by today's GPUs.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>DisplayPort 2.1</strong></td>
              <td data-en="Required for 4K @ 240Hz or 8K monitors. Standard on modern cards."
                  data-ar="مطلوب لشاشات 4K بتردّد 240Hz أو شاشات 8K. قياسي على الكروت الحديثة.">
                Required for 4K @ 240Hz or 8K monitors. Standard on modern cards.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>12V-2x6 / 12VHPWR</strong></td>
              <td data-en="The new 16-pin power connector for 300W+ cards. Replaces multiple 8-pins."
                  data-ar="موصّل الطاقة الجديد بـ 16 سنّاً للكروت بأكثر من 300 واط. يحلّ محلّ منافذ 8-pin المتعدّدة.">
                The new 16-pin power connector for 300W+ cards. Replaces multiple 8-pins.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>8-pin PCIe power</strong></td>
              <td data-en="The classic GPU power connector. Still used on cards under ~300W."
                  data-ar="موصّل الطاقة التقليدي لكرت الشاشة. لا يزال يُستخدم في الكروت تحت 300 واط تقريباً.">
                The classic GPU power connector. Still used on cards under ~300W.
              </td>
              <td><span class="status aging" data-en="AGING" data-ar="يتقادم">AGING</span></td>
            </tr>
            <tr>
              <td><strong>GDDR5 / GDDR5X</strong></td>
              <td data-en="Old VRAM types. Only on used or very old budget cards."
                  data-ar="أنواع قديمة من ذاكرة كرت الشاشة. فقط في الكروت المستعملة أو الاقتصادية القديمة جدّاً.">
                Old VRAM types. Only on used or very old budget cards.
              </td>
              <td><span class="status legacy" data-en="LEGACY" data-ar="قديم">LEGACY</span></td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>

    <section id="buying" class="section section--soft">
      <div class="container">
        <span class="eyebrow" data-en="// PICK YOUR FIGHTER" data-ar="// اختر مقاتلك">// PICK YOUR FIGHTER</span>
        <h2>
          <span data-en="Buying" data-ar="دليل">Buying</span>
          <span class="section-title" data-en="guide" data-ar="الشراء">guide</span><span data-en="." data-ar=".">.</span>
        </h2>
        <p class="lead" style="max-width: 60ch;"
           data-en="Forget benchmarks for a second. Start with the question: what resolution and refresh rate is your monitor? The right GPU is the cheapest one that drives YOUR display at the framerate YOU want — not the most expensive one you can afford."
           data-ar="انسَ الاختبارات للحظة. ابدأ بالسؤال: ما هي دقّة شاشتك ومعدّل تحديثها؟ كرت الشاشة (GPU) المناسب هو الأرخص الذي يُشغّل شاشتك بمعدّل الإطارات الذي تريده — وليس الأغلى الذي تستطيع شراءه.">
          Forget benchmarks for a second. Start with the question: what resolution and refresh rate is your monitor? The right GPU is the cheapest one that drives YOUR display at the framerate YOU want — not the most expensive one you can afford.
        </p>

        <div class="usecase-grid scroll-reveal">

          <article class="usecase-card tier-budget">
            <div class="usecase-icon">🖥️</div>
            <span class="res-badge">1080p</span>
            <h3 data-en="1080p &amp; Esports" data-ar="1080p والألعاب الإلكترونية">1080p &amp; Esports</h3>
            <p class="price">~ $250 – $400</p>
            <p data-en="60-144 fps in modern AAA games at high settings, 240+ fps in esports titles like CS, Valorant, Fortnite. The most popular tier — and where most builds should live."
               data-ar="60-144 إطار/ث في ألعاب AAA الحديثة بإعدادات عالية، 240+ إطار/ث في الألعاب الإلكترونية مثل CS وValorant وFortnite. أكثر فئة شعبيّة — وحيث ينبغي أن تعيش معظم التجميعات.">
              60-144 fps in modern AAA games at high settings, 240+ fps in esports titles like CS, Valorant, Fortnite. The most popular tier — and where most builds should live.
            </p>
            <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
              <strong data-en="Pick:" data-ar="اختر:">Pick:</strong>
              <span data-en=" RTX xx60 / RX x600 / Intel Arc B-series"
                    data-ar=" RTX xx60 / RX x600 / Intel Arc B-series">RTX xx60 / RX x600 / Intel Arc B-series</span>
            </p>
          </article>

          <article class="usecase-card tier-gaming">
            <div class="usecase-icon">🎮</div>
            <span class="res-badge">1440p</span>
            <h3 data-en="1440p &amp; High-Refresh" data-ar="1440p ومعدّلات عالية">1440p &amp; High-Refresh</h3>
            <p class="price">~ $500 – $750</p>
            <p data-en="The sweet spot of modern PC gaming. 1440p maxed out at 100+ fps in AAA titles, smooth ray tracing at medium-high presets. Pair with a 1440p / 144Hz+ monitor for the best experience."
               data-ar="النقطة المثالية لألعاب الحاسوب الحديثة. 1440p بأعلى الإعدادات و100+ إطار/ث في ألعاب AAA، تتبّع أشعّة (Ray Tracing) سلس بإعدادات متوسطة-عالية. اقرنها بشاشة 1440p / 144Hz+ للحصول على أفضل تجربة.">
              The sweet spot of modern PC gaming. 1440p maxed out at 100+ fps in AAA titles, smooth ray tracing at medium-high presets. Pair with a 1440p / 144Hz+ monitor for the best experience.
            </p>
            <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
              <strong data-en="Pick:" data-ar="اختر:">Pick:</strong>
              <span data-en=" RTX xx70 / RTX xx70 Super / RX x800 XT"
                    data-ar=" RTX xx70 / RTX xx70 Super / RX x800 XT">RTX xx70 / RTX xx70 Super / RX x800 XT</span>
            </p>
          </article>

          <article class="usecase-card tier-creator">
            <div class="usecase-icon">🎬</div>
            <span class="res-badge">4K · AI</span>
            <h3 data-en="4K &amp; Creator" data-ar="4K والمبدعون">4K &amp; Creator</h3>
            <p class="price">~ $1000 – $2000+</p>
            <p data-en="4K maxed-out gaming, heavy 3D rendering, video editing, AI training and inference. You need lots of VRAM (16-24 GB+) and raw compute power. This tier is overkill for casual gaming — only buy in if your work or display demands it."
               data-ar="ألعاب 4K بأعلى الإعدادات، تصيير ثلاثي الأبعاد ثقيل، تحرير فيديو، تدريب الذكاء الاصطناعي وتشغيله. تحتاج لذاكرة (VRAM) كبيرة (16-24 جيجا أو أكثر) وقدرة حسابية خام. هذه الفئة مبالغة للألعاب العادية — لا تستثمر فيها إلا إذا كان عملك أو شاشتك يتطلّبان ذلك.">
              4K maxed-out gaming, heavy 3D rendering, video editing, AI training and inference. You need lots of VRAM (16-24 GB+) and raw compute power. This tier is overkill for casual gaming — only buy in if your work or display demands it.
            </p>
            <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
              <strong data-en="Pick:" data-ar="اختر:">Pick:</strong>
              <span data-en=" RTX xx80 / RTX xx90 / RX x900 XTX"
                    data-ar=" RTX xx80 / RTX xx90 / RX x900 XTX">RTX xx80 / RTX xx90 / RX x900 XTX</span>
            </p>
          </article>

        </div>
      </div>
    </section>

    <section id="compatibility" class="section">
      <div class="container">
        <div style="text-align: center; margin-bottom: var(--sp-6);">
          <span class="eyebrow" data-en="// THE WIRING DIAGRAM" data-ar="// مخطط التوصيلات">// THE WIRING DIAGRAM</span>
          <h2>
            <span data-en="Compatibility &amp;" data-ar="التوافق">Compatibility &amp;</span>
            <span class="section-title" data-en="dependencies" data-ar="والمتطلّبات">dependencies</span><span data-en="." data-ar=".">.</span>
          </h2>
          <p class="lead" style="max-width: 62ch; margin: 0 auto;"
             data-en="A graphics card is the most physically and electrically demanding part of a build. The wrong PSU, an undersized case, a weak CPU, or the wrong motherboard slot will waste your investment. Here's what your GPU actually depends on."
             data-ar="كرت الشاشة (GPU) هو القطعة الأكثر طلباً للطاقة والمساحة في التجميعة. مزود طاقة (PSU) خاطئ، أو صندوق صغير، أو معالج (CPU) ضعيف، أو منفذ خاطئ في اللوحة الأم — كلها تُهدر استثمارك. إليك ما يعتمد عليه كرت الشاشة (GPU) فعلاً.">
            A graphics card is the most physically and electrically demanding part of a build. The wrong PSU, an undersized case, a weak CPU, or the wrong motherboard slot will waste your investment. Here's what your GPU actually depends on.
          </p>
        </div>

        <div class="dep-diagram scroll-reveal" role="img"
             aria-label="GPU dependencies diagram showing the four parts a graphics card connects to">

          <div class="dep-node dep-node--top">
            <strong data-en="PSU" data-ar="مزود الطاقة (PSU)">PSU</strong>
            <span class="role" data-en="Supplies power" data-ar="يزوّد الطاقة">Supplies power</span>
          </div>

          <div class="dep-node dep-node--left">
            <strong data-en="MOTHERBOARD" data-ar="اللوحة الأم (Motherboard)">MOTHERBOARD</strong>
            <span class="role" data-en="PCIe slot host" data-ar="حاضنة منفذ PCIe">PCIe slot host</span>
          </div>

          <div class="dep-node dep-node--center">
            <strong data-en="GPU" data-ar="كرت الشاشة (GPU)">GPU</strong>
            <span class="role" data-en="You are here" data-ar="أنت هنا">You are here</span>
          </div>

          <div class="dep-node dep-node--right">
            <strong data-en="CPU" data-ar="المعالج (CPU)">CPU</strong>
            <span class="role" data-en="Workload partner" data-ar="شريك المعالجة">Workload partner</span>
          </div>

          <div class="dep-node dep-node--bottom">
            <strong data-en="CASE" data-ar="الصندوق (Case)">CASE</strong>
            <span class="role" data-en="Physical home" data-ar="البيت الفيزيائي">Physical home</span>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--sp-7);">
          <h3 data-en="What each tier actually needs" data-ar="ما تحتاجه كل فئة فعلاً">
            What each tier actually needs
          </h3>
          <p style="color: var(--color-muted); max-width: 50ch; margin: 0 auto;"
             data-en="Match the tier you picked in the Buying Guide above with the power, length, CPU, and slot requirements below."
             data-ar="طابق الفئة التي اخترتها من دليل الشراء أعلاه مع متطلّبات الطاقة والطول والمعالج (CPU) والمنفذ أدناه.">
            Match the tier you picked in the Buying Guide above with the power, length, CPU, and slot requirements below.
          </p>
        </div>

        <div class="compat-grid scroll-reveal">

          <article class="compat-card tier-entry">
            <h4 data-en="Entry-level" data-ar="مبتدئ">Entry-level</h4>
            <p class="compat-example"
               data-en="e.g. RTX xx60 · RX x600 · Arc B-series"
               data-ar="مثل: RTX xx60 · RX x600 · Arc B-series">e.g. RTX xx60 · RX x600 · Arc B-series</p>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">P</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="PSU wattage" data-ar="قدرة مزود الطاقة">PSU wattage</span>
                <span class="compat-value"
                      data-en="500W is enough for the whole system."
                      data-ar="500 واط كافية للجهاز كاملاً.">
                  500W is enough for the whole system.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">L</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="Card length" data-ar="طول الكرت">Card length</span>
                <span class="compat-value"
                      data-en="~ 200–250 mm. Fits almost any case."
                      data-ar="~ 200-250 ملم. يناسب أي صندوق تقريباً.">
                  ~ 200–250 mm. Fits almost any case.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">C</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="CPU pairing" data-ar="مطابقة المعالج">CPU pairing</span>
                <span class="compat-value"
                      data-en="Any modern Core i3 / Ryzen 3 or better works."
                      data-ar="أيّ معالج (CPU) حديث من فئة Core i3 / Ryzen 3 أو أفضل.">
                  Any modern Core i3 / Ryzen 3 or better works.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">S</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="Slot &amp; connector" data-ar="المنفذ والموصّل">Slot &amp; connector</span>
                <span class="compat-value"
                      data-en="PCIe x16 slot · single 8-pin power."
                      data-ar="منفذ PCIe x16 · موصّل طاقة 8-pin واحد.">
                  PCIe x16 slot · single 8-pin power.
                </span>
              </div>
            </div>
          </article>

          <article class="compat-card tier-mid">
            <h4 data-en="Mid-range" data-ar="متوسط">Mid-range</h4>
            <p class="compat-example"
               data-en="e.g. RTX xx70 · RX x800 XT"
               data-ar="مثل: RTX xx70 · RX x800 XT">e.g. RTX xx70 · RX x800 XT</p>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">P</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="PSU wattage" data-ar="قدرة مزود الطاقة">PSU wattage</span>
                <span class="compat-value"
                      data-en="700–750W with quality 80+ Gold rating."
                      data-ar="700-750 واط بتصنيف 80+ Gold عالي الجودة.">
                  700–750W with quality 80+ Gold rating.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">L</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="Card length" data-ar="طول الكرت">Card length</span>
                <span class="compat-value"
                      data-en="~ 280–310 mm. Mid-tower minimum."
                      data-ar="~ 280-310 ملم. صندوق متوسط على الأقل.">
                  ~ 280–310 mm. Mid-tower minimum.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">C</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="CPU pairing" data-ar="مطابقة المعالج">CPU pairing</span>
                <span class="compat-value"
                      data-en="Pair with Core i5/i7 or Ryzen 5/7 to avoid bottleneck."
                      data-ar="اقرنه مع Core i5/i7 أو Ryzen 5/7 لتجنّب الاختناق.">
                  Pair with Core i5/i7 or Ryzen 5/7 to avoid bottleneck.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">S</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="Slot &amp; connector" data-ar="المنفذ والموصّل">Slot &amp; connector</span>
                <span class="compat-value"
                      data-en="PCIe x16 · dual 8-pin or single 12VHPWR."
                      data-ar="PCIe x16 · موصّلان 8-pin أو 12VHPWR واحد.">
                  PCIe x16 · dual 8-pin or single 12VHPWR.
                </span>
              </div>
            </div>
          </article>

          <article class="compat-card tier-high">
            <h4 data-en="High-end" data-ar="راقٍ">High-end</h4>
            <p class="compat-example"
               data-en="e.g. RTX xx80 / xx90 · RX x900 XTX"
               data-ar="مثل: RTX xx80 / xx90 · RX x900 XTX">e.g. RTX xx80 / xx90 · RX x900 XTX</p>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">P</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="PSU wattage" data-ar="قدرة مزود الطاقة">PSU wattage</span>
                <span class="compat-value"
                      data-en="1000W+ with native 12V-2x6 connector required."
                      data-ar="1000 واط فأكثر مع موصّل 12V-2x6 أصلي مطلوب.">
                  1000W+ with native 12V-2x6 connector required.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">L</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="Card length" data-ar="طول الكرت">Card length</span>
                <span class="compat-value"
                      data-en="~ 320–360 mm AND 3+ slots wide. Measure first."
                      data-ar="~ 320-360 ملم وعرض 3 منافذ أو أكثر. قِس أولاً.">
                  ~ 320–360 mm AND 3+ slots wide. Measure first.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">C</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="CPU pairing" data-ar="مطابقة المعالج">CPU pairing</span>
                <span class="compat-value"
                      data-en="Core i7/i9 or Ryzen 7/9 — anything less is wasted GPU."
                      data-ar="Core i7/i9 أو Ryzen 7/9 — أيّ أقل من ذلك يضيّع قدرة الكرت.">
                  Core i7/i9 or Ryzen 7/9 — anything less is wasted GPU.
                </span>
              </div>
            </div>

            <div class="compat-row">
              <div class="compat-icon" aria-hidden="true">S</div>
              <div class="compat-detail">
                <span class="compat-label" data-en="Slot &amp; connector" data-ar="المنفذ والموصّل">Slot &amp; connector</span>
                <span class="compat-value"
                      data-en="PCIe Gen 4/5 x16 · 12V-2x6 or 3× 8-pin via adapter."
                      data-ar="PCIe Gen 4/5 x16 · 12V-2x6 أو 3 موصّلات 8-pin عبر محوّل.">
                  PCIe Gen 4/5 x16 · 12V-2x6 or 3× 8-pin via adapter.
                </span>
              </div>
            </div>
          </article>

        </div>

        <div class="warning-cards scroll-reveal">

          <article class="warning-card is-critical">
            <div class="warn-icon" aria-hidden="true">⚠️</div>
            <div>
              <h4 data-en="Wattage isn't enough — check the connectors"
                  data-ar="القدرة وحدها لا تكفي — تحقّق من الموصّلات">
                Wattage isn't enough — check the connectors
              </h4>
              <p data-en="A 1000W PSU sounds like it can power anything — but if your high-end NVIDIA card needs a 12V-2x6 (16-pin) connector and your PSU only has 8-pin outputs, the card won't get the power it needs. The included adapter cables can melt under load if not seated perfectly. For any RTX xx80 / xx90 class card, buy a PSU with a NATIVE 12V-2x6 cable, not just enough wattage. Read the GPU's spec page for required connectors before you order."
                 data-ar="مزود طاقة (PSU) بقدرة 1000 واط يبدو وكأنه يستطيع تشغيل أيّ شيء — لكن إذا كان كرتك من NVIDIA الراقي يحتاج موصّل 12V-2x6 (16-pin) ومزود طاقتك يحتوي فقط على منافذ 8-pin، فلن يحصل الكرت على الطاقة التي يحتاجها. كابلات المحوّل المُرفقة قد تذوب تحت الحمل إذا لم تُركّب بإحكام. لأيّ كرت من فئة RTX xx80 / xx90، اشترِ مزود طاقة (PSU) بكابل 12V-2x6 أصلي، وليس فقط بقدرة كافية. اقرأ صفحة مواصفات كرت الشاشة (GPU) للتعرّف على الموصّلات المطلوبة قبل الطلب.">
                A 1000W PSU sounds like it can power anything — but if your high-end NVIDIA card needs a 12V-2x6 (16-pin) connector and your PSU only has 8-pin outputs, the card won't get the power it needs. The included adapter cables can melt under load if not seated perfectly. For any RTX xx80 / xx90 class card, buy a PSU with a NATIVE 12V-2x6 cable, not just enough wattage. Read the GPU's spec page for required connectors before you order.
              </p>
            </div>
          </article>

          <article class="warning-card is-warn">
            <div class="warn-icon" aria-hidden="true">📏</div>
            <div>
              <h4 data-en="Measure your case BEFORE you buy"
                  data-ar="قِس صندوقك قبل أن تشتري">
                Measure your case BEFORE you buy
              </h4>
              <p data-en="Modern flagship cards are physically enormous — 320 mm long, 3 to 4 slots wide, weighing 1.5–2 kg. Many mid-tower cases that fit a 2022-era card cannot fit a 2025 flagship. The card might block your motherboard's M.2 slots, sag under its own weight, or simply not fit at all. Before you buy: open your case manual, find 'Maximum GPU length' and 'Slot width', and confirm those numbers. A $20 GPU support bracket isn't optional on a $1500 card — it's required to stop PCB sag from cracking the slot."
                 data-ar="الكروت الراقية الحديثة ضخمة فيزيائياً — 320 ملم طولاً، 3 إلى 4 منافذ عرضاً، تزن 1.5-2 كجم. كثير من الصناديق المتوسطة التي كانت تُناسب كرت 2022 لا تتّسع لكرت 2025 الراقي. الكرت قد يعوق منافذ M.2 على اللوحة الأم (Motherboard)، أو يتدلّى تحت ثقله، أو لا يدخل أصلاً. قبل الشراء: افتح دليل الصندوق، ابحث عن 'أقصى طول لكرت الشاشة' و'عرض المنافذ'، وتأكّد من هذه الأرقام. حامل دعم كرت الشاشة بـ 20$ ليس اختيارياً مع كرت بـ 1500$ — إنه ضروري لمنع تدلّي اللوحة المطبوعة من كسر المنفذ.">
                Modern flagship cards are physically enormous — 320 mm long, 3 to 4 slots wide, weighing 1.5–2 kg. Many mid-tower cases that fit a 2022-era card cannot fit a 2025 flagship. The card might block your motherboard's M.2 slots, sag under its own weight, or simply not fit at all. Before you buy: open your case manual, find 'Maximum GPU length' and 'Slot width', and confirm those numbers. A $20 GPU support bracket isn't optional on a $1500 card — it's required to stop PCB sag from cracking the slot.
              </p>
            </div>
          </article>

        </div>
      </div>
    </section>

    <section id="history" class="section">
      <div class="container">
        <span class="eyebrow" data-en="// FURTHER READING · EVOLUTION" data-ar="// قراءة إضافية · التطوّر">// FURTHER READING · EVOLUTION</span>
        <h2>
          <span data-en="A brief" data-ar="تاريخ موجز">A brief</span>
          <span class="section-title" data-en="history" data-ar="للقطعة">history</span><span data-en="." data-ar=".">.</span>
        </h2>
        <p class="lead" style="max-width: 60ch;"
           data-en="Now that you know which GPU to buy, here's how we got here. The graphics card went from a 2D framebuffer to the most computationally powerful chip in your house — in just three decades."
           data-ar="بعد أن عرفت أيّ كرت شاشة (GPU) تشتري، إليك كيف وصلنا إلى هنا. تطوّر كرت الشاشة من مجرّد ذاكرة إطار ثنائية الأبعاد إلى الشريحة الأكثر قوّة حسابية في منزلك — خلال ثلاثة عقود فقط.">
          Now that you know which GPU to buy, here's how we got here. The graphics card went from a 2D framebuffer to the most computationally powerful chip in your house — in just three decades.
        </p>

        <ol class="history-timeline scroll-reveal">
          <li>
            <span class="year">1996</span>
            <div>
              <strong data-en="3dfx Voodoo Graphics — 3D acceleration goes mainstream."
                      data-ar="3dfx Voodoo Graphics — تسريع الرسوميات ثلاثية الأبعاد يصبح شعبياً.">
                3dfx Voodoo Graphics — 3D acceleration goes mainstream.
              </strong>
              <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
                 data-en="The first add-in card that made real-time 3D games practical on consumer PCs. Quake players will remember it forever."
                 data-ar="أول كرت إضافي جعل ألعاب 3D في الوقت الحقيقي عمليّة على حواسيب المستهلكين. لاعبو Quake سيتذكّرونه إلى الأبد.">
                The first add-in card that made real-time 3D games practical on consumer PCs. Quake players will remember it forever.
              </p>
            </div>
          </li>
          <li>
            <span class="year">1999</span>
            <div>
              <strong data-en="NVIDIA GeForce 256 — the term 'GPU' is born."
                      data-ar="NVIDIA GeForce 256 — مصطلح 'GPU' يولد.">
                NVIDIA GeForce 256 — the term "GPU" is born.
              </strong>
              <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
                 data-en="NVIDIA coined the marketing term 'Graphics Processing Unit' to describe a card that did transform &amp; lighting in hardware. The name stuck."
                 data-ar="NVIDIA صكّت مصطلح 'وحدة معالجة الرسوميات' لوصف كرت ينفّذ التحويل والإضاءة في العتاد. الاسم بقي.">
                NVIDIA coined the marketing term "Graphics Processing Unit" to describe a card that did transform &amp; lighting in hardware. The name stuck.
              </p>
            </div>
          </li>
          <li>
            <span class="year">2007</span>
            <div>
              <strong data-en="NVIDIA CUDA — GPUs escape the gaming box."
                      data-ar="NVIDIA CUDA — كروت الشاشة تخرج من صندوق الألعاب.">
                NVIDIA CUDA — GPUs escape the gaming box.
              </strong>
              <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
                 data-en="With CUDA, programmers could use GPUs for any parallel work — physics, scientific simulation, eventually AI. This is what made the modern AI boom possible."
                 data-ar="مع CUDA، أصبح بإمكان المبرمجين استخدام كروت الشاشة لأيّ عمل متوازٍ — الفيزياء، المحاكاة العلمية، وأخيراً الذكاء الاصطناعي. هذا ما جعل ثورة الذكاء الاصطناعي الحديثة ممكنة.">
                With CUDA, programmers could use GPUs for any parallel work — physics, scientific simulation, eventually AI. This is what made the modern AI boom possible.
              </p>
            </div>
          </li>
          <li>
            <span class="year">2018</span>
            <div>
              <strong data-en="NVIDIA RTX 20-series — real-time ray tracing arrives."
                      data-ar="NVIDIA RTX 20-series — تتبّع الأشعّة في الوقت الحقيقي يصل.">
                NVIDIA RTX 20-series — real-time ray tracing arrives.
              </strong>
              <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
                 data-en="First consumer cards with dedicated ray tracing hardware. Lighting in games went from 'pre-baked tricks' to 'simulate real photons.'"
                 data-ar="أوّل كروت استهلاكية بعتاد مخصّص لتتبّع الأشعّة. الإضاءة في الألعاب انتقلت من 'حيل مُسبقة' إلى 'محاكاة فوتونات حقيقية.'">
                First consumer cards with dedicated ray tracing hardware. Lighting in games went from "pre-baked tricks" to "simulate real photons."
              </p>
            </div>
          </li>
          <li>
            <span class="year">2025</span>
            <div>
              <strong data-en="The AI rendering era — DLSS 4 and neural shaders."
                      data-ar="عصر التصيير بالذكاء الاصطناعي — DLSS 4 ومُظلِّلات عصبية.">
                The AI rendering era — DLSS 4 and neural shaders.
              </strong>
              <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
                 data-en="GPUs now generate more frames with AI than they render traditionally. The line between 'rendered' and 'predicted' pixels has officially blurred."
                 data-ar="كروت الشاشة الآن تُنتج إطارات بالذكاء الاصطناعي أكثر مما تُصيّر تقليدياً. الخطّ بين البكسلات 'المُصيَّرة' و'المتوقَّعة' أصبح ضبابياً رسميّاً.">
                GPUs now generate more frames with AI than they render traditionally. The line between "rendered" and "predicted" pixels has officially blurred.
              </p>
            </div>
          </li>
        </ol>
      </div>
    </section>

    <section id="tip" class="section">
      <div class="container">
        <div class="golden-tip scroll-reveal">
          <div class="tip-icon">💎</div>
          <div>
            <span class="eyebrow" style="color: var(--color-accent);"
                  data-en="// SPACE-PC GOLDEN TIP" data-ar="// النصيحة الذهبية من سبيس-بي سي">// SPACE-PC GOLDEN TIP</span>
            <h3 data-en="VRAM is the silent killer." data-ar="ذاكرة كرت الشاشة (VRAM) هي القاتل الصامت.">VRAM is the silent killer.</h3>
            <p data-en="Beginners chase model numbers. RTX xx70 sounds bigger than RTX xx60, so they pick that. But VRAM (the memory ON the card itself) is what actually decides whether your card ages well. Modern AAA games at high textures regularly need 12 GB of VRAM at 1080p, 16 GB at 1440p. A faster GPU with 8 GB VRAM running out of memory will swap to system RAM — and your frame rate will collapse from 90 fps to 30 fps. A 'weaker' card with more VRAM will outperform it on those games. Aim for 12 GB minimum on any new mid-range card, 16 GB+ for high-end and future-proofing. Check the VRAM, not just the model number."
               data-ar="المبتدئون يطاردون أرقام الموديلات. RTX xx70 يبدو أكبر من RTX xx60، فيختارون ذاك. لكن ذاكرة كرت الشاشة (VRAM) — الذاكرة الموجودة على الكرت نفسه — هي ما يُحدّد فعلاً ما إذا كان كرتك سيتقدّم في العمر بشكل جيّد. ألعاب AAA الحديثة بإعدادات عالية للقوام تحتاج بانتظام 12 جيجا VRAM بدقّة 1080p، و16 جيجا بدقّة 1440p. كرت أسرع بـ 8 جيجا VRAM يَنفد من الذاكرة سيلجأ إلى ذاكرة النظام (RAM) — ومعدّل الإطارات سينهار من 90 إلى 30 إطار/ث. كرت 'أضعف' بذاكرة (VRAM) أكثر سيتفوّق عليه في هذه الألعاب. اِستهدف 12 جيجا على الأقل في أيّ كرت متوسط جديد، و16 جيجا فأكثر للفئة الراقية والاستعداد للمستقبل. تحقّق من ذاكرة كرت الشاشة (VRAM)، لا من رقم الموديل فقط.">
              Beginners chase model numbers. RTX xx70 sounds bigger than RTX xx60, so they pick that. But VRAM (the memory ON the card itself) is what actually decides whether your card ages well. Modern AAA games at high textures regularly need 12 GB of VRAM at 1080p, 16 GB at 1440p. A faster GPU with 8 GB VRAM running out of memory will swap to system RAM — and your frame rate will collapse from 90 fps to 30 fps. A "weaker" card with more VRAM will outperform it on those games. Aim for 12 GB minimum on any new mid-range card, 16 GB+ for high-end and future-proofing. Check the VRAM, not just the model number.
            </p>
          </div>
        </div>
      </div>
    </section>

    <section class="section section--ink">
      <div class="container" style="text-align: center;">
        <span class="eyebrow" style="color: var(--color-accent);"
              data-en="// UP NEXT" data-ar="// التالي">// UP NEXT</span>
        <h2 data-en="Now meet the foundation." data-ar="والآن، تعرّف على الأساس.">Now meet the foundation.</h2>
        <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;"
           data-en="The CPU thinks. The GPU paints. But it's the motherboard that lets them talk to each other — and to everything else."
           data-ar="المعالج (CPU) يفكّر. كرت الشاشة (GPU) يرسم. لكن اللوحة الأم (Motherboard) هي ما يجعلهما يتحدّثان مع بعضهما — ومع كل شيء آخر.">
          The CPU thinks. The GPU paints. But it's the motherboard that lets them talk to each other — and to everything else.
        </p>
        <a href="Default.aspx#components" class="btn btn--accent btn--lg"
           data-en="Browse all components" data-ar="استعرض كل القطع">Browse all components</a>
      </div>
    </section>

    <script>
      (function () {
        'use strict';
        console.log('%cSpace-PC ✦ GPU page loaded — the artist of every build.',
                    'color:#2563eb; font-weight:700; font-family:monospace;');
      })();
    </script>
</asp:Content>
