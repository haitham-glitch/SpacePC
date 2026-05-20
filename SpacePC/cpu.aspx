<%@ Page Title="CPU | The Brain — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cpu.aspx.cs" Inherits="SpacePC.cpu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CPU | The Brain — Space-PC
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
      background: var(--color-primary);
      color: #fff;
      font-family: var(--font-display);
      font-size: 0.78rem;
      font-weight: 700;
      letter-spacing: 0.15em;
      border-radius: var(--r-sm);
      margin-bottom: var(--sp-4);
      text-transform: uppercase;
    }

    .cpu-illustration {
      width: 100%;
      height: 100%;
      max-width: 360px;
      max-height: 360px;
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
  </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section>
      <div class="container">
        <nav class="breadcrumbs" aria-label="Breadcrumb">
          <a href="Default.aspx"   data-en="Home"          data-ar="الرئيسية">Home</a>
          <span class="sep">/</span>
          <a href="Default.aspx#components" data-en="Components" data-ar="القطع">Components</a>
          <span class="sep">/</span>
          <span data-en="CPU" data-ar="المعالج (CPU)">CPU</span>
        </nav>

        <div class="component-header">
          <div class="reveal">
            <span class="component-tag" data-en="// COMPONENT 01" data-ar="// القطعة 01">// COMPONENT 01</span>
            <h1>
              <span data-en="CPU." data-ar="المعالج (CPU).">CPU.</span><br />
              <span class="section-title"
                    data-en="The Brain."
                    data-ar="العقل.">The Brain.</span>
            </h1>
            <p class="lead" style="color: var(--color-muted);"
               data-en="Every click. Every keystroke. Every game tick. Every browser tab. It all flows through the CPU."
               data-ar="كل نقرة. كل ضغطة على لوحة المفاتيح. كل لحظة في اللعبة. كل تبويب في المتصفح. كله يمرّ عبر المعالج (CPU).">
              Every click. Every keystroke. Every game tick. Every browser tab. It all flows through the CPU.
            </p>

            <div class="definition reveal reveal-delay-1">
              <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
              <span data-en="The CPU (Central Processing Unit) is the brain of your computer. It reads instructions, does the math, and tells every other part what to do — billions of times per second."
                    data-ar="المعالج (CPU) - وحدة المعالجة المركزية - هو العقل المدبّر لجهازك. يقرأ التعليمات، ينفّذ العمليات الحسابية، ويأمر بقية القطع بما يجب فعله — ملايين المرات في الثانية الواحدة.">
                The CPU (Central Processing Unit) is the brain of your computer. It reads instructions, does the math, and tells every other part what to do — billions of times per second.
              </span>
            </div>
          </div>

          <div class="component-image reveal reveal-delay-2">
            <svg class="cpu-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg" aria-labelledby="cpu-svg-title">
              <title id="cpu-svg-title"
                     data-en="Illustration of a modern CPU with pin contacts"
                     data-ar="رسم توضيحي لمعالج حديث مع منافذ التوصيل">Modern CPU illustration</title>
              <g stroke="#0a0a0a" stroke-width="3" fill="none">
                <line x1="120" y1="40" x2="120" y2="80"/><line x1="160" y1="40" x2="160" y2="80"/><line x1="200" y1="40" x2="200" y2="80"/><line x1="240" y1="40" x2="240" y2="80"/><line x1="280" y1="40" x2="280" y2="80"/>
                <line x1="120" y1="320" x2="120" y2="360"/><line x1="160" y1="320" x2="160" y2="360"/><line x1="200" y1="320" x2="200" y2="360"/><line x1="240" y1="320" x2="240" y2="360"/><line x1="280" y1="320" x2="280" y2="360"/>
                <line x1="40"  y1="120" x2="80"  y2="120"/><line x1="40"  y1="160" x2="80"  y2="160"/><line x1="40"  y1="200" x2="80"  y2="200"/><line x1="40"  y1="240" x2="80"  y2="240"/><line x1="40"  y1="280" x2="80"  y2="280"/>
                <line x1="320" y1="120" x2="360" y2="120"/><line x1="320" y1="160" x2="360" y2="160"/><line x1="320" y1="200" x2="360" y2="200"/><line x1="320" y1="240" x2="360" y2="240"/><line x1="320" y1="280" x2="360" y2="280"/>
              </g>
              <rect x="80" y="80" width="240" height="240" rx="8" fill="#f5f1e8" stroke="#0a0a0a" stroke-width="4"/>
              <rect x="130" y="130" width="140" height="140" rx="6" fill="#ec4899" stroke="#0a0a0a" stroke-width="3"/>
              <g stroke="#0a0a0a" stroke-width="2" fill="none">
                <line x1="150" y1="150" x2="250" y2="150"/><line x1="150" y1="170" x2="230" y2="170"/><line x1="150" y1="190" x2="240" y2="190"/><line x1="150" y1="210" x2="220" y2="210"/><line x1="150" y1="230" x2="250" y2="230"/><line x1="150" y1="250" x2="225" y2="250"/>
                <circle cx="260" cy="160" r="3" fill="#0a0a0a"/><circle cx="260" cy="200" r="3" fill="#0a0a0a"/><circle cx="260" cy="240" r="3" fill="#0a0a0a"/>
              </g>
              <polygon points="80,80 110,80 80,110" fill="#fde047" stroke="#0a0a0a" stroke-width="3"/>
              <text x="200" y="375" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a">CPU</text>
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
        <span class="eyebrow" data-en="// THE BIG TWO" data-ar="// الكبيران">// THE BIG TWO</span>
        <h2>
          <span data-en="The market" data-ar="ساحة">The market</span>
          <span class="section-title" data-en="rivalry" data-ar="المنافسة">rivalry</span><span data-en="." data-ar=".">.</span>
        </h2>
        <p class="lead" style="max-width: 60ch;"
           data-en="Two companies make almost every desktop CPU you'll consider buying: Intel and AMD. Their decades-long rivalry is why your CPU keeps getting faster — and cheaper."
           data-ar="شركتان تصنعان تقريباً كل معالج حاسوب مكتبي ستفكّر بشرائه: Intel و AMD. منافستهما عبر العقود هي سبب أن معالجك يصبح أسرع — وأرخص.">
          Two companies make almost every desktop CPU you'll consider buying: Intel and AMD. Their decades-long rivalry is why your CPU keeps getting faster — and cheaper.
        </p>

        <div class="brands-grid scroll-reveal">
          <article class="brand-card is-intel">
            <h3>Intel</h3>
            <p class="tagline" data-en="// EST. 1968 · SANTA CLARA, USA"
                              data-ar="// تأسست 1968 · سانتا كلارا، أمريكا">// EST. 1968 · SANTA CLARA, USA</p>
            <p data-en="The classic name. Long the default for laptops, business PCs, and anyone who valued stability above all. Strong single-core performance and pre-built compatibility."
               data-ar="الاسم الكلاسيكي. كان الخيار الافتراضي للمحمولة وأجهزة الأعمال ومن يفضّلون الاستقرار. أداء قوي للنواة الواحدة وتوافقية ممتازة مع الأجهزة الجاهزة.">
              The classic name. Long the default for laptops, business PCs, and anyone who valued stability above all. Strong single-core performance and pre-built compatibility.
            </p>
            <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
                data-en="Product lineup" data-ar="تشكيلة المنتجات">Product lineup</h4>
            <ul>
              <li><strong>Core i3</strong> — <span data-en="Entry / office work" data-ar="مبتدئ / أعمال مكتبية">Entry / office work</span></li>
              <li><strong>Core i5</strong> — <span data-en="Mainstream / gaming sweet-spot" data-ar="عام / النقطة المثالية للألعاب">Mainstream / gaming sweet-spot</span></li>
              <li><strong>Core i7</strong> — <span data-en="High-end / serious work" data-ar="راقٍ / للأعمال الجادّة">High-end / serious work</span></li>
              <li><strong>Core i9</strong> — <span data-en="Top-tier / no compromise" data-ar="القمة / بلا تنازلات">Top-tier / no compromise</span></li>
            </ul>
          </article>

          <article class="brand-card is-amd">
            <h3>AMD</h3>
            <p class="tagline" data-en="// EST. 1969 · SANTA CLARA, USA"
                              data-ar="// تأسست 1969 · سانتا كلارا، أمريكا">// EST. 1969 · SANTA CLARA, USA</p>
            <p data-en="The challenger that became the champion. AMD's Ryzen line redefined value in 2017 by giving users more cores at lower prices. Today, both companies trade blows on every tier."
               data-ar="المتحدّي الذي صار البطل. سلسلة Ryzen من AMD أعادت تعريف القيمة عام 2017 بتقديم أنوية أكثر بأسعار أقل. اليوم، الشركتان تتبادلان الضربات في كل فئة.">
              The challenger that became the champion. AMD's Ryzen line redefined value in 2017 by giving users more cores at lower prices. Today, both companies trade blows on every tier.
            </p>
            <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
                data-en="Product lineup" data-ar="تشكيلة المنتجات">Product lineup</h4>
            <ul>
              <li><strong>Ryzen 3</strong> — <span data-en="Entry / office work" data-ar="مبتدئ / أعمال مكتبية">Entry / office work</span></li>
              <li><strong>Ryzen 5</strong> — <span data-en="Mainstream / gaming sweet-spot" data-ar="عام / النقطة المثالية للألعاب">Mainstream / gaming sweet-spot</span></li>
              <li><strong>Ryzen 7</strong> — <span data-en="High-end / creator workloads" data-ar="راقٍ / للأعمال الإبداعية">High-end / creator workloads</span></li>
              <li><strong>Ryzen 9</strong> — <span data-en="Top-tier / no compromise" data-ar="القمة / بلا تنازلات">Top-tier / no compromise</span></li>
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
           data-en="The specs you'll see on every product page — and what they actually mean today. Use this table as a quick decoder."
           data-ar="المواصفات التي تراها في كل صفحة منتج — وما تعنيه فعلاً اليوم. استخدم هذا الجدول كمفكّ شيفرة سريع.">
          The specs you'll see on every product page — and what they actually mean today. Use this table as a quick decoder.
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
              <td><strong>DDR5</strong></td>
              <td data-en="Latest RAM type. ~2× faster than DDR4."
                  data-ar="أحدث نوع للرام. أسرع تقريباً بمرتين من DDR4.">
                Latest RAM type. ~2× faster than DDR4.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>DDR4</strong></td>
              <td data-en="Previous generation. Still common, still supported on older boards."
                  data-ar="الجيل السابق. لا يزال شائعاً ومدعوماً على اللوحات الأقدم.">
                Previous generation. Still common, still supported on older boards.
              </td>
              <td><span class="status aging" data-en="AGING" data-ar="يتقادم">AGING</span></td>
            </tr>
            <tr>
              <td><strong>PCIe Gen 5</strong></td>
              <td data-en="High-speed lane for GPUs and SSDs. Future-proof."
                  data-ar="مسار عالي السرعة لكروت الشاشة وأقراص SSD. مستقبلي.">
                High-speed lane for GPUs and SSDs. Future-proof.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>PCIe Gen 4</strong></td>
              <td data-en="Plenty fast for almost any 2026 build. Still excellent."
                  data-ar="سريع بما يكفي لأي تجميعة في 2026. لا يزال ممتازاً.">
                Plenty fast for almost any 2026 build. Still excellent.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>Socket LGA 1700</strong></td>
              <td data-en="Intel's previous-gen socket. Still buyable, but EOL soon."
                  data-ar="منفذ Intel للجيل السابق. لا يزال متاحاً للشراء، لكن قارب على الانتهاء.">
                Intel's previous-gen socket. Still buyable, but EOL soon.
              </td>
              <td><span class="status aging" data-en="AGING" data-ar="يتقادم">AGING</span></td>
            </tr>
            <tr>
              <td><strong>Socket AM5</strong></td>
              <td data-en="AMD's current socket. Long upgrade runway through 2027+."
                  data-ar="منفذ AMD الحالي. مسار ترقية طويل حتى 2027 وما بعده.">
                AMD's current socket. Long upgrade runway through 2027+.
              </td>
              <td><span class="status modern" data-en="MODERN" data-ar="حديث">MODERN</span></td>
            </tr>
            <tr>
              <td><strong>Socket AM4</strong></td>
              <td data-en="Older AMD socket. Great for budget builds with used parts."
                  data-ar="منفذ AMD أقدم. مناسب للتجميعات الاقتصادية بقطع مستعملة.">
                Older AMD socket. Great for budget builds with used parts.
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
           data-en="Forget benchmarks for a second. Start with what you actually do on a computer. The right CPU is the cheapest one that handles your workload without breaking a sweat."
           data-ar="انسَ الاختبارات للحظة. ابدأ بما تفعله فعلاً على الحاسوب. المعالج المناسب هو الأرخص الذي يتعامل مع عملك دون أن يتعرّق.">
          Forget benchmarks for a second. Start with what you actually do on a computer. The right CPU is the cheapest one that handles your workload without breaking a sweat.
        </p>

        <div class="usecase-grid scroll-reveal">
          <article class="usecase-card tier-budget">
            <div class="usecase-icon">📊</div>
            <h3 data-en="Office &amp; Study" data-ar="مكتب ودراسة">Office &amp; Study</h3>
            <p class="price">~ $120 – $180</p>
            <p data-en="Browser tabs, Microsoft Office, Zoom calls, light photo edits, occasional YouTube. You don't need power — you need quiet and reliable."
               data-ar="تبويبات متصفّح، أوفيس، مكالمات زووم، تعديلات صور خفيفة، يوتيوب أحياناً. لا تحتاج قوّة — تحتاج هدوءاً وموثوقية.">
              Browser tabs, Microsoft Office, Zoom calls, light photo edits, occasional YouTube. You don't need power — you need quiet and reliable.
            </p>
            <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
              <strong data-en="Pick:" data-ar="اختر:">Pick:</strong>
              <span data-en=" Intel Core i3 or AMD Ryzen 3" data-ar=" Intel Core i3 أو AMD Ryzen 3">Intel Core i3 or AMD Ryzen 3</span>
            </p>
          </article>

          <article class="usecase-card tier-gaming">
            <div class="usecase-icon">🎮</div>
            <h3 data-en="Gaming" data-ar="ألعاب">Gaming</h3>
            <p class="price">~ $250 – $400</p>
            <p data-en="High-refresh esports, AAA single-player, the occasional stream. You want a CPU that won't bottleneck your GPU on modern titles."
               data-ar="ألعاب إلكترونية عالية المعدّل، ألعاب AAA فردية، بثّ أحياناً. تريد معالجاً لا يعرقل كرت الشاشة في الألعاب الحديثة.">
              High-refresh esports, AAA single-player, the occasional stream. You want a CPU that won't bottleneck your GPU on modern titles.
            </p>
            <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
              <strong data-en="Pick:" data-ar="اختر:">Pick:</strong>
              <span data-en=" Intel Core i5/i7 or AMD Ryzen 5/7"
                    data-ar=" Intel Core i5/i7 أو AMD Ryzen 5/7">Intel Core i5/i7 or AMD Ryzen 5/7</span>
            </p>
          </article>

          <article class="usecase-card tier-creator">
            <div class="usecase-icon">🎬</div>
            <h3 data-en="Content Creation" data-ar="صناعة المحتوى">Content Creation</h3>
            <p class="price">~ $400 – $700</p>
            <p data-en="Video editing in Premiere/DaVinci, 3D rendering, music production, code compilation, AI workloads. More cores = more done in less time."
               data-ar="تحرير فيديو على Premiere/DaVinci، تصيير ثلاثي الأبعاد، إنتاج موسيقى، تجميع كود، أعمال ذكاء اصطناعي. أنوية أكثر = إنجاز أكثر في وقت أقل.">
              Video editing in Premiere/DaVinci, 3D rendering, music production, code compilation, AI workloads. More cores = more done in less time.
            </p>
            <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
              <strong data-en="Pick:" data-ar="اختر:">Pick:</strong>
              <span data-en=" Intel Core i7/i9 or AMD Ryzen 7/9"
                    data-ar=" Intel Core i7/i9 أو AMD Ryzen 7/9">Intel Core i7/i9 or AMD Ryzen 7/9</span>
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
             data-en="A CPU never works alone. The wrong cooler, an undersized PSU, the wrong RAM type, or an incompatible motherboard turns a perfect chip into an expensive paperweight. Here's what your CPU actually depends on."
             data-ar="المعالج (CPU) لا يعمل وحده أبداً. مبرّد خاطئ، أو مزود طاقة (PSU) غير كافٍ، أو نوع رام غير متوافق، أو لوحة أم خاطئة — كلها تحوّل المعالج المثالي إلى ثقّالة ورق غالية الثمن. إليك ما يعتمد عليه المعالج (CPU) فعلاً.">
            A CPU never works alone. The wrong cooler, an undersized PSU, the wrong RAM type, or an incompatible motherboard turns a perfect chip into an expensive paperweight. Here's what your CPU actually depends on.
          </p>
        </div>

        <div class="dep-diagram scroll-reveal" role="img" aria-label="CPU dependencies diagram">
          <div class="dep-node dep-node--top">
            <strong data-en="COOLER" data-ar="المبرّد (Cooler)">COOLER</strong>
            <span class="role" data-en="Removes heat" data-ar="يطرد الحرارة">Removes heat</span>
          </div>
          <div class="dep-node dep-node--left">
            <strong data-en="PSU" data-ar="مزود الطاقة (PSU)">PSU</strong>
            <span class="role" data-en="Supplies power" data-ar="يزوّد الطاقة">Supplies power</span>
          </div>
          <div class="dep-node dep-node--center">
            <strong data-en="CPU" data-ar="المعالج (CPU)">CPU</strong>
            <span class="role" data-en="You are here" data-ar="أنت هنا">You are here</span>
          </div>
          <div class="dep-node dep-node--right">
            <strong data-en="MOTHERBOARD" data-ar="اللوحة الأم (Motherboard)">MOTHERBOARD</strong>
            <span class="role" data-en="Socket host" data-ar="حاضنة المنفذ">Socket host</span>
          </div>
          <div class="dep-node dep-node--bottom">
            <strong data-en="RAM" data-ar="الذاكرة (RAM)">RAM</strong>
            <span class="role" data-en="Feeds data" data-ar="تزوّد البيانات">Feeds data</span>
          </div>
        </div>

        <div style="text-align: center; margin-top: var(--sp-7);">
          <h3 data-en="What each tier actually needs" data-ar="ما تحتاجه كل فئة فعلاً">What each tier actually needs</h3>
        </div>

        <div class="compat-grid scroll-reveal">
          <article class="compat-card tier-entry">
            <h4 data-en="Entry-level" data-ar="مبتدئ">Entry-level</h4>
            <p class="compat-example"
               data-en="e.g. Intel Core i3 · AMD Ryzen 3"
               data-ar="مثل: Intel Core i3 · AMD Ryzen 3">e.g. Intel Core i3 · AMD Ryzen 3</p>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">C</div><div class="compat-detail"><span class="compat-label" data-en="Cooling" data-ar="التبريد">Cooling</span><span class="compat-value" data-en="Stock cooler is enough — heat output is low." data-ar="المبرّد الأصلي يكفي — إنتاج الحرارة منخفض.">Stock cooler is enough — heat output is low.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">P</div><div class="compat-detail"><span class="compat-label" data-en="PSU wattage" data-ar="قدرة مزود الطاقة">PSU wattage</span><span class="compat-value" data-en="450W is plenty for a full system." data-ar="450 واط كافية لجهاز كامل.">450W is plenty for a full system.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">R</div><div class="compat-detail"><span class="compat-label" data-en="RAM type" data-ar="نوع الذاكرة">RAM type</span><span class="compat-value" data-en="DDR4 or DDR5 — both available on this tier." data-ar="DDR4 أو DDR5 — كلاهما متاح في هذه الفئة.">DDR4 or DDR5 — both available on this tier.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">S</div><div class="compat-detail"><span class="compat-label" data-en="Socket" data-ar="المنفذ">Socket</span><span class="compat-value" data-en="LGA 1700 (Intel) · AM4 or AM5 (AMD)" data-ar="LGA 1700 (Intel) · AM4 أو AM5 (AMD)">LGA 1700 (Intel) · AM4 or AM5 (AMD)</span></div></div>
          </article>

          <article class="compat-card tier-mid">
            <h4 data-en="Mid-range" data-ar="متوسط">Mid-range</h4>
            <p class="compat-example"
               data-en="e.g. Intel Core i5/i7 · AMD Ryzen 5/7"
               data-ar="مثل: Intel Core i5/i7 · AMD Ryzen 5/7">e.g. Intel Core i5/i7 · AMD Ryzen 5/7</p>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">C</div><div class="compat-detail"><span class="compat-label" data-en="Cooling" data-ar="التبريد">Cooling</span><span class="compat-value" data-en="Aftermarket air tower cooler strongly recommended." data-ar="مبرّد هوائي إضافي من النوع البرجي يُنصح به بشدّة.">Aftermarket air tower cooler strongly recommended.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">P</div><div class="compat-detail"><span class="compat-label" data-en="PSU wattage" data-ar="قدرة مزود الطاقة">PSU wattage</span><span class="compat-value" data-en="650W minimum — leave headroom for the GPU." data-ar="650 واط على الأقل — اترك هامشاً لكرت الشاشة (GPU).">650W minimum — leave headroom for the GPU.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">R</div><div class="compat-detail"><span class="compat-label" data-en="RAM type" data-ar="نوع الذاكرة">RAM type</span><span class="compat-value" data-en="DDR5 strongly recommended for new builds." data-ar="DDR5 يُنصح به بشدّة للتجميعات الجديدة.">DDR5 strongly recommended for new builds.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">S</div><div class="compat-detail"><span class="compat-label" data-en="Socket" data-ar="المنفذ">Socket</span><span class="compat-value" data-en="LGA 1700 (Intel) · AM5 (AMD)" data-ar="LGA 1700 (Intel) · AM5 (AMD)">LGA 1700 (Intel) · AM5 (AMD)</span></div></div>
          </article>

          <article class="compat-card tier-high">
            <h4 data-en="High-end" data-ar="راقٍ">High-end</h4>
            <p class="compat-example"
               data-en="e.g. Intel Core i9 · AMD Ryzen 9"
               data-ar="مثل: Intel Core i9 · AMD Ryzen 9">e.g. Intel Core i9 · AMD Ryzen 9</p>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">C</div><div class="compat-detail"><span class="compat-label" data-en="Cooling" data-ar="التبريد">Cooling</span><span class="compat-value" data-en="280mm AIO liquid cooler or premium air tower required." data-ar="مبرّد مائي مُغلق 280 ملم أو برج هوائي راقٍ مطلوب.">280mm AIO liquid cooler or premium air tower required.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">P</div><div class="compat-detail"><span class="compat-label" data-en="PSU wattage" data-ar="قدرة مزود الطاقة">PSU wattage</span><span class="compat-value" data-en="850W+ required for stability under full load." data-ar="850 واط فأكثر مطلوب للاستقرار تحت الحمل الكامل.">850W+ required for stability under full load.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">R</div><div class="compat-detail"><span class="compat-label" data-en="RAM type" data-ar="نوع الذاكرة">RAM type</span><span class="compat-value" data-en="DDR5 only — modern AMD AM5 doesn't accept DDR4." data-ar="DDR5 فقط — منصة AMD AM5 الحديثة لا تقبل DDR4.">DDR5 only — modern AMD AM5 doesn't accept DDR4.</span></div></div>
            <div class="compat-row"><div class="compat-icon" aria-hidden="true">S</div><div class="compat-detail"><span class="compat-label" data-en="Socket" data-ar="المنفذ">Socket</span><span class="compat-value" data-en="LGA 1700 / 1851 (Intel) · AM5 (AMD)" data-ar="LGA 1700 / 1851 (Intel) · AM5 (AMD)">LGA 1700 / 1851 (Intel) · AM5 (AMD)</span></div></div>
          </article>
        </div>

        <div class="warning-cards scroll-reveal">
          <article class="warning-card is-critical">
            <div class="warn-icon" aria-hidden="true">⚠️</div>
            <div>
              <h4 data-en="Modern AMD = DDR5 only" data-ar="AMD الحديث = DDR5 فقط">Modern AMD = DDR5 only</h4>
              <p data-en="Any AMD CPU on the AM5 socket (Ryzen 7000, 8000, 9000 series) is strictly DDR5. DDR4 modules will not fit — the slot keying is physically different and the memory controller is DDR5-only. Reusing DDR4 sticks from an old build is the most common compatibility mistake we see. Intel's recent platforms also lean DDR5, but some boards still ship with DDR4 slots. Always check the motherboard's spec page before buying RAM."
                 data-ar="أيّ معالج AMD يعمل على منفذ AM5 (سلسلة Ryzen 7000 و 8000 و 9000) يدعم DDR5 حصراً. قطع DDR4 لن تركّب — الفتحة مختلفة فيزيائياً ومتحكّم الذاكرة يدعم DDR5 فقط. إعادة استخدام قطع DDR4 من تجميعة قديمة هو أكثر خطأ توافق نراه. منصّات Intel الحديثة تميل أيضاً نحو DDR5، لكن بعض اللوحات لا تزال تأتي بفتحات DDR4. تحقّق دائماً من صفحة مواصفات اللوحة الأم (Motherboard) قبل شراء الرام (RAM).">
                Any AMD CPU on the AM5 socket (Ryzen 7000, 8000, 9000 series) is strictly DDR5. DDR4 modules will not fit...
              </p>
            </div>
          </article>
          <article class="warning-card is-warn">
            <div class="warn-icon" aria-hidden="true">🔥</div>
            <div>
              <h4 data-en="High-end CPUs need real cooling" data-ar="المعالجات الراقية تحتاج تبريداً حقيقياً">High-end CPUs need real cooling</h4>
              <p data-en="Top-tier chips like Core i9 or Ryzen 9 can pull 200W+ under sustained load. The basic cooler in the box (or no cooler at all — high-end AMD CPUs don't ship with one) cannot dissipate that heat, so the CPU throttles itself by 30–40% to avoid damage. You paid for performance you'll never see. Budget at least $80 for a quality air tower or ~$130 for a 280mm AIO liquid cooler. The cooler is part of the CPU's price, not an optional extra."
                 data-ar="معالجات القمّة مثل Core i9 أو Ryzen 9 قد تستهلك أكثر من 200 واط تحت الحمل المتواصل. المبرّد الأصلي في العلبة (أو غيابه أصلاً، فمعالجات AMD الراقية لا تأتي بمبرّد) لا يستطيع تصريف هذه الحرارة، فيُخفّض المعالج (CPU) أداءه ذاتياً بنسبة 30-40% لتفادي التلف. دفعتَ مقابل أداء لن تراه. خصّص على الأقل 80$ لمبرّد هوائي برجي جيّد، أو 130$ لمبرّد مائي مغلق 280 ملم. المبرّد جزء من سعر المعالج (CPU)، وليس إضافة اختيارية.">
                Top-tier chips like Core i9 or Ryzen 9 can pull 200W+ under sustained load. The basic cooler in the box...
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
           data-en="Now that you know which CPU to buy, here's how we got here. The story of the CPU is the story of personal computing itself — from a single silicon chip the size of a fingernail to the multi-core monsters in today's gaming rigs."
           data-ar="بعد أن عرفت أيّ معالج (CPU) تشتري، إليك كيف وصلنا إلى هنا. قصة المعالج (CPU) هي قصة الحاسوب الشخصي بحدّ ذاته — من شريحة سيليكون واحدة بحجم الظفر، إلى الوحوش متعددة النوى في حواسيب الألعاب اليوم.">
          Now that you know which CPU to buy, here's how we got here. The story of the CPU is the story of personal computing itself...
        </p>

        <ol class="history-timeline scroll-reveal">
          <li>
            <span class="year">1971</span>
            <div><strong data-en="Intel 4004" data-ar="معالج Intel 4004">Intel 4004</strong></div>
          </li>
          <li>
            <span class="year">1985</span>
            <div><strong data-en="Intel 386" data-ar="معالج Intel 386">Intel 386</strong></div>
          </li>
          <li>
            <span class="year">2003</span>
            <div><strong data-en="AMD Athlon 64" data-ar="معالج AMD Athlon 64">AMD Athlon 64</strong></div>
          </li>
          <li>
            <span class="year">2017</span>
            <div><strong data-en="AMD Ryzen" data-ar="معالج AMD Ryzen">AMD Ryzen</strong></div>
          </li>
          <li>
            <span class="year">2024</span>
            <div><strong data-en="The hybrid era" data-ar="عصر الهجين">The hybrid era</strong></div>
          </li>
        </ol>
      </div>
    </section>

    <section id="tip" class="section">
      <div class="container">
        <div class="golden-tip scroll-reveal">
          <div class="tip-icon">⚡</div>
          <div>
            <span class="eyebrow" style="color: var(--color-accent);"
                  data-en="// SPACE-PC GOLDEN TIP" data-ar="// النصيحة الذهبية من سبيس-بي سي">// SPACE-PC GOLDEN TIP</span>
            <h3 data-en="Avoid the bottleneck trap." data-ar="تجنّب فخّ الاختناق.">Avoid the bottleneck trap.</h3>
            <p data-en="The most common beginner mistake: pairing a powerful GPU with a weak CPU. You'll only get the performance of the slowest part. A $700 graphics card paired with a $100 CPU will perform like a $250 card at full speed — that's $450 wasted. Match your CPU tier to your GPU tier and your workload, not to whatever you have left in the budget."
               data-ar="الخطأ الأكثر شيوعاً للمبتدئ: ربط كرت شاشة قوي بمعالج (CPU) ضعيف. ستحصل فقط على أداء أبطأ قطعة بينهما. كرت شاشة بـ 700$ مع معالج بـ 100$ سيؤدّي مثل كرت بـ 250$ يعمل بكامل سرعته — هذا 450$ ضائعة. طابق فئة المعالج (CPU) مع فئة كرت الشاشة (GPU) وحجم عملك، لا مع ما تبقّى من الميزانية.">
              The most common beginner mistake: pairing a powerful GPU with a weak CPU...
            </p>
          </div>
        </div>
      </div>
    </section>

    <section class="section section--ink">
      <div class="container" style="text-align: center;">
        <span class="eyebrow" style="color: var(--color-accent);"
              data-en="// UP NEXT" data-ar="// التالي">// UP NEXT</span>
        <h2 data-en="Now meet the artist." data-ar="والآن، تعرّف على الفنان.">Now meet the artist.</h2>
        <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;"
           data-en="The CPU does the thinking. The GPU does the painting. Together they're your computer's dream team."
           data-ar="المعالج (CPU) يفكّر. كرت الشاشة (GPU) يرسم. معاً، يشكّلان فريق أحلام جهازك.">
          The CPU does the thinking. The GPU does the painting. Together they're your computer's dream team.
        </p>
        <a href="Default.aspx#components" class="btn btn--accent btn--lg"
           data-en="Browse all components" data-ar="استعرض كل القطع">Browse all components</a>
      </div>
    </section>

    <script>
      (function () {
        'use strict';
        console.log('%cSpace-PC ✦ CPU page loaded — the brain of every build.',
                    'color:#ec4899; font-weight:700; font-family:monospace;');
      })();
    </script>
</asp:Content>
