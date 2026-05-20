<%@ Page Title="Motherboard | The Nervous System — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="motherboard.aspx.cs" Inherits="SpacePC.motherboard" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
  Motherboard | The Nervous System — Space-PC
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
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
      background: var(--color-accent);
      color: var(--color-ink);
      font-family: var(--font-display);
      font-size: 0.78rem;
      font-weight: 700;
      letter-spacing: 0.15em;
      border-radius: var(--r-sm);
      margin-bottom: var(--sp-4);
      text-transform: uppercase;
    }

    .mobo-illustration { width: 100%; height: 100%; max-width: 380px; max-height: 380px; }

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
    .quick-jump a:hover { background: var(--color-accent); transform: translateY(-2px); color: var(--color-ink); }
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

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <!-- Breadcrumbs -->
  <section>
    <div class="container">
      <nav class="breadcrumbs" aria-label="Breadcrumb">
        <a href="Default.aspx" data-en="Home" data-ar="الرئيسية">Home</a>
        <span class="sep">/</span>
        <a href="Default.aspx#components" data-en="Components" data-ar="القطع">Components</a>
        <span class="sep">/</span>
        <span data-en="Motherboard" data-ar="اللوحة الأم (Motherboard)">Motherboard</span>
      </nav>

      <div class="component-header">
        <div class="reveal">
          <span class="component-tag" data-en="// COMPONENT 03" data-ar="// القطعة 03">// COMPONENT 03</span>
          <h1>
            <span data-en="Motherboard." data-ar="اللوحة الأم.">Motherboard.</span><br />
            <span class="section-title" data-en="The Nervous System." data-ar="الجهاز العصبي.">The Nervous System.</span>
          </h1>
          <p class="lead" style="color: var(--color-muted);"
             data-en="It doesn't calculate or render, but without it, your PC is just a pile of expensive metal. It connects everything."
             data-ar="إنها لا تحسب ولا ترسم، ولكن بدونها، جهازك مجرد كومة من المعدن الغالي. إنها تربط كل شيء ببعضه.">
            It doesn't calculate or render, but without it, your PC is just a pile of expensive metal. It connects everything.
          </p>
          <div class="definition reveal reveal-delay-1">
            <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
            <span data-en="The Motherboard is the main circuit board of your computer. Think of it as the city's infrastructure — it provides the roads (PCIe lanes) for data, the power lines, and the sockets where every component lives."
                  data-ar="اللوحة الأم هي لوحة الدوائر الرئيسية في جهازك. تخيلها كالبنية التحتية لمدينة — إنها توفر الطرق (مسارات PCIe) للبيانات، وخطوط الطاقة، والمنافذ حيث تعيش كل القطع.">
              The Motherboard is the main circuit board of your computer. Think of it as the city's infrastructure — it provides the roads (PCIe lanes) for data, the power lines, and the sockets where every component lives.
            </span>
          </div>
        </div>

        <!-- SVG Illustration -->
        <div class="component-image reveal reveal-delay-2">
          <svg class="mobo-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
            <rect x="50" y="40" width="280" height="320" rx="4" fill="#1a1a1a" stroke="#0a0a0a" stroke-width="4"/>
            <path d="M50 100 L90 100 L120 130" stroke="#fde047" stroke-width="2" fill="none" opacity="0.4"/>
            <path d="M50 250 L100 250 L120 230" stroke="#fde047" stroke-width="2" fill="none" opacity="0.4"/>
            <rect x="140" y="80" width="80" height="80" rx="4" fill="#e8e2d4" stroke="#0a0a0a" stroke-width="3"/>
            <rect x="155" y="95" width="50" height="50" fill="#ec4899" stroke="#0a0a0a" stroke-width="2"/>
            <text x="180" y="125" text-anchor="middle" font-family="monospace" font-size="12" font-weight="bold" fill="#0a0a0a">CPU</text>
            <rect x="110" y="75" width="20" height="90" fill="#2563eb" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="135" y="55" width="90" height="15" fill="#2563eb" stroke="#0a0a0a" stroke-width="2"/>
            <g fill="#f5f1e8" stroke="#0a0a0a" stroke-width="2">
              <rect x="250" y="70" width="8" height="100"/>
              <rect x="265" y="70" width="8" height="100"/>
              <rect x="280" y="70" width="8" height="100"/>
              <rect x="295" y="70" width="8" height="100"/>
            </g>
            <rect x="315" y="120" width="15" height="50" fill="#fde047" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="100" y="210" width="160" height="15" fill="#e8e2d4" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="100" y="260" width="160" height="10" fill="#6b7280" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="100" y="300" width="160" height="10" fill="#6b7280" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="250" y="250" width="60" height="60" rx="4" fill="#2563eb" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="140" y="180" width="80" height="12" fill="#e8e2d4" stroke="#0a0a0a" stroke-width="2"/>
            <rect x="40" y="60" width="16" height="120" fill="#fde047" stroke="#0a0a0a" stroke-width="3"/>
          </svg>
        </div>
      </div>

      <!-- Quick Jump (Internal Links) -->
      <div class="quick-jump scroll-reveal" aria-label="Section quick links">
        <strong data-en="Jump to:" data-ar="انتقل إلى:">Jump to:</strong>
        <a href="#market"        data-en="Market"           data-ar="السوق">Market</a>
        <a href="#standards"     data-en="Standards & Sizes" data-ar="المعايير والأحجام">Standards &amp; Sizes</a>
        <a href="#buying"        data-en="Buying Guide"     data-ar="دليل الشراء">Buying Guide</a>
        <a href="#compatibility" data-en="Compatibility"    data-ar="التوافق">Compatibility</a>
        <a href="#history"       data-en="History"          data-ar="التاريخ">History</a>
        <a href="#tip"           data-en="Golden Tip"       data-ar="النصيحة الذهبية">Golden Tip</a>
      </div>
    </div>
  </section>

  <!-- MARKET -->
  <section id="market" class="section section--soft">
    <div class="container">
      <span class="eyebrow" data-en="// THE BIG THREE" data-ar="// الثلاثة الكبار">// THE BIG THREE</span>
      <h2>
        <span data-en="The market" data-ar="الشركات">The market</span>
        <span class="section-title" data-en="landscape" data-ar="المصنّعة">landscape</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="While Intel and AMD design the chipsets, third-party manufacturers actually build the motherboards. Three major companies dominate the global market."
         data-ar="بينما تصمم Intel و AMD الشرائح، تقوم شركات أخرى بصناعة اللوحات الأم. ثلاث شركات كبرى تهيمن على السوق.">
        While Intel and AMD design the chipsets, third-party manufacturers actually build the motherboards. Three major companies dominate the global market.
      </p>

      <div class="brands-grid is-three-up scroll-reveal">

        <article class="brand-card is-intel" style="border-top-color: #000;">
          <h3>ASUS</h3>
          <p class="tagline" data-en="// EST. 1989 · TAIWAN" data-ar="// تأسست 1989 · تايوان">// EST. 1989 · TAIWAN</p>
          <p data-en="The biggest name in motherboards. Known for the most user-friendly BIOS and premium build quality. Their 'ROG' line is highly sought after but comes with a higher price."
             data-ar="الاسم الأكبر في اللوحات الأم. معروفة بأسهل واجهة BIOS وجودة بناء عالية. سلسلة 'ROG' مطلوبة بشدة لكنها تأتي بسعر أعلى.">
            The biggest name in motherboards. Known for the most user-friendly BIOS and premium build quality.
          </p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
              data-en="Key Lineups" data-ar="أبرز السلاسل">Key Lineups</h4>
          <ul>
            <li><strong>Prime</strong> — <span data-en="Budget / Office" data-ar="اقتصادية / أعمال مكتبية">Budget / Office</span></li>
            <li><strong>TUF Gaming</strong> — <span data-en="Durable / Mid-range" data-ar="متينة / فئة متوسطة">Durable / Mid-range</span></li>
            <li><strong>ROG Strix / Maximus</strong> — <span data-en="High-end Enthusiast" data-ar="راقية / للمحترفين">High-end Enthusiast</span></li>
          </ul>
        </article>

        <article class="brand-card is-amd" style="border-top-color: #dc2626;">
          <h3>MSI</h3>
          <p class="tagline" data-en="// EST. 1986 · TAIWAN" data-ar="// تأسست 1986 · تايوان">// EST. 1986 · TAIWAN</p>
          <p data-en="A fierce competitor offering arguably the best value for money in the mid-range tier. Their 'Tomahawk' boards are legendary for giving high-end power without the luxury price."
             data-ar="منافس شرس يقدم غالباً أفضل قيمة مقابل السعر في الفئة المتوسطة. لوحات 'Tomahawk' أسطورية.">
            A fierce competitor offering arguably the best value for money in the mid-range tier.
          </p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
              data-en="Key Lineups" data-ar="أبرز السلاسل">Key Lineups</h4>
          <ul>
            <li><strong>PRO Series</strong> — <span data-en="Basic / Clean aesthetics" data-ar="أساسية / شكل بسيط">Basic / Clean</span></li>
            <li><strong>MAG (Tomahawk)</strong> — <span data-en="Sweet-spot value" data-ar="نقطة القيمة المثالية">Sweet-spot value</span></li>
            <li><strong>MEG / MPG</strong> — <span data-en="Premium Gaming" data-ar="ألعاب راقية">Premium Gaming</span></li>
          </ul>
        </article>

        <article class="brand-card is-nvidia" style="border-top-color: #f97316;">
          <h3>Gigabyte</h3>
          <p class="tagline" data-en="// EST. 1986 · TAIWAN" data-ar="// تأسست 1986 · تايوان">// EST. 1986 · TAIWAN</p>
          <p data-en="A solid third pillar. Gigabyte's AORUS line pushes hardware boundaries with massive heatsinks and excellent power phases."
             data-ar="الركيزة الثالثة القوية. سلسلة AORUS تدفع حدود العتاد بمشتتات حرارة ضخمة ومراحل طاقة ممتازة.">
            A solid third pillar. Gigabyte's AORUS line pushes hardware boundaries with massive heatsinks.
          </p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);"
              data-en="Key Lineups" data-ar="أبرز السلاسل">Key Lineups</h4>
          <ul>
            <li><strong>Ultra Durable (UD)</strong> — <span data-en="Budget reliability" data-ar="اقتصادية موثوقة">Budget reliability</span></li>
            <li><strong>AERO</strong> — <span data-en="White-themed / Creators" data-ar="تصميم أبيض / للمبدعين">White / Creators</span></li>
            <li><strong>AORUS</strong> — <span data-en="Flagship Gaming" data-ar="القمة للألعاب">Flagship Gaming</span></li>
          </ul>
        </article>

      </div>
    </div>
  </section>

  <!-- STANDARDS TABLE -->
  <section id="standards" class="section">
    <div class="container">
      <span class="eyebrow" data-en="// 2026 SNAPSHOT" data-ar="// لقطة 2026">// 2026 SNAPSHOT</span>
      <h2>
        <span data-en="Sizes &amp;" data-ar="الأحجام">Sizes &amp;</span>
        <span class="section-title" data-en="standards" data-ar="والمعايير">standards</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="Motherboards are defined by their physical size (Form Factor) and technical capabilities."
         data-ar="اللوحات الأم تُعرّف بحجمها الفيزيائي (Form Factor) وقدراتها التقنية.">
        Motherboards are defined by their physical size (Form Factor) and technical capabilities.
      </p>

      <table class="standards-table scroll-reveal">
        <thead>
          <tr>
            <th data-en="Term / Standard" data-ar="المصطلح / المعيار">Term / Standard</th>
            <th data-en="What it means"   data-ar="ما يعنيه">What it means</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><strong>ATX</strong></td>
            <td data-en="Standard size. Lots of PCIe slots, M.2 slots, and connections. Fits in Mid/Full tower cases."
                data-ar="الحجم القياسي. منافذ PCIe و M.2 كثيرة. يناسب الصناديق المتوسطة والكاملة.">
              Standard size. Lots of PCIe slots, M.2 slots, and connections. Fits in Mid/Full tower cases.
            </td>
          </tr>
          <tr>
            <td><strong>Micro-ATX (mATX)</strong></td>
            <td data-en="Shorter than ATX. Fewer bottom slots, but cheaper. Extremely popular for budget builds."
                data-ar="أقصر من ATX. منافذ سفلية أقل، لكنها أرخص. مشهورة للتجميعات الاقتصادية.">
              Shorter than ATX. Fewer bottom slots, but cheaper. Very popular for budget builds.
            </td>
          </tr>
          <tr>
            <td><strong>Mini-ITX</strong></td>
            <td data-en="Tiny board for small PCs. Usually only 1 PCIe slot and 2 RAM slots."
                data-ar="لوحة صغيرة جداً. عادة منفذ PCIe واحد ومنفذي رام فقط.">
              Tiny board for small PCs. Usually only 1 PCIe slot and 2 RAM slots.
            </td>
          </tr>
          <tr>
            <td><strong>Wi-Fi 7 / 6E</strong></td>
            <td data-en="Built-in wireless internet. Boards with 'Wi-Fi' in the name include antennas in the box."
                data-ar="إنترنت لاسلكي مدمج. اللوحات التي تحوي 'Wi-Fi' في الاسم تأتي مع هوائيات.">
              Built-in wireless internet. Boards with 'Wi-Fi' in the name include antennas in the box.
            </td>
          </tr>
          <tr>
            <td><strong>VRM (Phases)</strong></td>
            <td data-en="Voltage Regulator Module. Cleans and delivers power to the CPU. Better VRM = stability for high-end CPUs."
                data-ar="منظم الجهد الكهربائي. ينظف ويوصل الطاقة للمعالج. VRM أفضل = استقرار أكبر.">
              Voltage Regulator Module. Cleans and delivers power to the CPU. Better VRM = more stability.
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- BUYING GUIDE -->
  <section id="buying" class="section section--soft">
    <div class="container">
      <span class="eyebrow" data-en="// CHIPSETS DECODED" data-ar="// فك شفرة الشرائح">// CHIPSETS DECODED</span>
      <h2>
        <span data-en="Buying" data-ar="دليل">Buying</span>
        <span class="section-title" data-en="guide" data-ar="الشراء">guide</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="The 'Chipset' (like B650 or Z790) determines the board's tier. Here is how to match the motherboard to your CPU."
         data-ar="الـ 'Chipset' (مثل B650 أو Z790) يحدد فئة اللوحة. إليك كيف تطابق اللوحة مع معالجك.">
        The 'Chipset' determines the board's tier. Here is how to match the motherboard to your CPU.
      </p>

      <div class="usecase-grid scroll-reveal">

        <article class="usecase-card tier-budget">
          <div class="usecase-icon">A/H</div>
          <h3 data-en="Budget / Essential" data-ar="اقتصادية / أساسية">Budget / Essential</h3>
          <p class="price">~ $80 – $120</p>
          <p data-en="Basic connectivity. Limits RAM overclocking, fewer USB ports. Perfect for Core i3 or Ryzen 3/5."
             data-ar="توصيل أساسي. تحد من كسر سرعة الرام، منافذ USB أقل. مثالية لـ Core i3 أو Ryzen 3/5.">
            Basic connectivity. Perfect for Core i3 or Ryzen 3/5 CPUs.
          </p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong data-en="Look for:" data-ar="ابحث عن:">Look for:</strong>
            <span data-en=" Intel H610/H710 or AMD A620" data-ar=" Intel H610/H710 أو AMD A620"> Intel H610/H710 or AMD A620</span>
          </p>
        </article>

        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">B</div>
          <h3 data-en="The Sweet Spot" data-ar="النقطة المثالية">The Sweet Spot</h3>
          <p class="price">~ $150 – $220</p>
          <p data-en="Allows full RAM speeds, plenty of M.2 slots, strong power delivery for i7 or Ryzen 7. Best choice for 85% of users."
             data-ar="تسمح بسرعات الرام الكاملة، منافذ M.2 كافية. الخيار الأفضل لـ 85% من المستخدمين.">
            Best choice for 85% of users. Full RAM speeds, strong power delivery for i7 or Ryzen 7.
          </p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong data-en="Look for:" data-ar="ابحث عن:">Look for:</strong>
            <span data-en=" Intel B760/B860 or AMD B650" data-ar=" Intel B760/B860 أو AMD B650"> Intel B760/B860 or AMD B650</span>
          </p>
        </article>

        <article class="usecase-card tier-creator">
          <div class="usecase-icon">Z/X</div>
          <h3 data-en="Enthusiast / Overclock" data-ar="للمحترفين / كسر السرعة">Enthusiast / Overclock</h3>
          <p class="price">~ $280 – $500+</p>
          <p data-en="Unlocked CPU overclocking, massive VRM cooling, excessive USBs. Only needed if you buy an i9 or Ryzen 9."
             data-ar="تسمح بكسر سرعة المعالج، تبريد طاقة ضخم. ضرورية فقط لـ i9 أو Ryzen 9.">
            Only necessary if you buy an i9 or Ryzen 9.
          </p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong data-en="Look for:" data-ar="ابحث عن:">Look for:</strong>
            <span data-en=" Intel Z790/Z890 or AMD X670E/X870" data-ar=" Intel Z790/Z890 أو AMD X670E/X870"> Intel Z790/Z890 or AMD X670E/X870</span>
          </p>
        </article>

      </div>
    </div>
  </section>

  <!-- COMPATIBILITY -->
  <section id="compatibility" class="section">
    <div class="container">
      <div style="text-align: center; margin-bottom: var(--sp-6);">
        <span class="eyebrow" data-en="// THE WIRING DIAGRAM" data-ar="// مخطط التوصيلات">// THE WIRING DIAGRAM</span>
        <h2>
          <span data-en="Compatibility &amp;" data-ar="التوافق">Compatibility &amp;</span>
          <span class="section-title" data-en="dependencies" data-ar="والمتطلّبات">dependencies</span><span>.</span>
        </h2>
        <p class="lead" style="max-width: 62ch; margin: 0 auto;"
           data-en="Because the motherboard connects to everything, it has the most compatibility rules."
           data-ar="لأن اللوحة الأم تتصل بكل شيء، فلديها أكبر عدد من قواعد التوافق.">
          Because the motherboard connects to everything, it has the most compatibility rules.
        </p>
      </div>

      <div class="warning-cards scroll-reveal">

        <article class="warning-card is-critical">
          <div class="warn-icon" aria-hidden="true">⚠️</div>
          <div>
            <h4 data-en="Socket &amp; CPU MUST Match Exactly" data-ar="المنفذ (Socket) والمعالج يجب أن يتطابقا تماماً">
              Socket &amp; CPU MUST Match Exactly
            </h4>
            <p data-en="You cannot put an Intel CPU in an AMD motherboard. The socket type (e.g., AM5, LGA 1700) must match perfectly. Always check the official 'CPU Support List' on the manufacturer's website."
               data-ar="لا يمكنك وضع معالج Intel في لوحة AMD. نوع المنفذ (مثل AM5، LGA 1700) يجب أن يتطابق تماماً. تحقق دائماً من 'قائمة المعالجات المدعومة'.">
              You cannot put an Intel CPU in an AMD motherboard. The socket type must match perfectly.
            </p>
          </div>
        </article>

        <article class="warning-card is-warn">
          <div class="warn-icon" aria-hidden="true">🔄</div>
          <div>
            <h4 data-en="BIOS Updates" data-ar="تحديثات الـ BIOS">BIOS Updates</h4>
            <p data-en="If you buy a motherboard from January but install a CPU released in July, the motherboard won't recognize it. Look for boards with a 'BIOS Flashback' button — this lets you update via USB without needing an older CPU."
               data-ar="إذا اشتريت لوحة من يناير وركبت معالجاً أُصدر في يوليو، فاللوحة لن تتعرف عليه. ابحث عن زر 'BIOS Flashback' لتحديث اللوحة عبر USB بدون معالج قديم.">
              Look for boards with a 'BIOS Flashback' button to update via USB without needing an older CPU.
            </p>
          </div>
        </article>

      </div>
    </div>
  </section>

  <!-- HISTORY -->
  <section id="history" class="section">
    <div class="container">
      <span class="eyebrow" data-en="// FURTHER READING · EVOLUTION" data-ar="// قراءة إضافية · التطوّر">// FURTHER READING · EVOLUTION</span>
      <h2>
        <span data-en="A brief" data-ar="تاريخ موجز">A brief</span>
        <span class="section-title" data-en="history" data-ar="للقطعة">history</span><span>.</span>
      </h2>

      <ol class="history-timeline scroll-reveal">
        <li>
          <span class="year">1981</span>
          <div>
            <strong data-en="The 'Planar' Board." data-ar="لوحة 'بلانار' المستوية.">The 'Planar' Board.</strong>
            <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
               data-en="IBM's original PC motherboard. It held the CPU and RAM, but everything else required separate expansion cards."
               data-ar="اللوحة الأم الأصلية من IBM. كانت تحمل المعالج والرام، لكن كل شيء آخر كان يتطلب كروت توسعة منفصلة.">
              IBM's original PC motherboard. Everything else required separate expansion cards.
            </p>
          </div>
        </li>
        <li>
          <span class="year">1995</span>
          <div>
            <strong data-en="The ATX Standard." data-ar="معيار ATX.">The ATX Standard.</strong>
            <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
               data-en="Intel introduced the ATX shape. Remarkably, 30 years later, we still use the exact same screw hole placements."
               data-ar="قدمت Intel شكل ATX. والمثير أنه بعد 30 عاماً لا نزال نستخدم نفس أماكن مسامير التثبيت بالضبط.">
              Intel introduced the ATX shape — still used 30 years later with the exact same screw placements.
            </p>
          </div>
        </li>
        <li>
          <span class="year">2000s</span>
          <div>
            <strong data-en="The Great Integration." data-ar="الدمج العظيم.">The Great Integration.</strong>
            <p style="margin-top: 4px; color: var(--color-muted); font-size: 0.92rem;"
               data-en="Motherboards started including built-in Audio, Ethernet, and USB controllers. No more needing 5 expansion cards."
               data-ar="بدأت اللوحات بتضمين متحكمات الصوت والشبكة والـ USB مدمجة. لم تعد بحاجة لـ 5 كروت توسعة.">
              Built-in Audio, Ethernet, and USB controllers. No more needing 5 separate expansion cards.
            </p>
          </div>
        </li>
      </ol>
    </div>
  </section>

  <!-- GOLDEN TIP -->
  <section id="tip" class="section">
    <div class="container">
      <div class="golden-tip scroll-reveal">
        <div class="tip-icon">🚫</div>
        <div>
          <span class="eyebrow" style="color: var(--color-ink);"
                data-en="// SPACE-PC GOLDEN TIP" data-ar="// النصيحة الذهبية من سبيس-بي سي">// SPACE-PC GOLDEN TIP</span>
          <h3 data-en="Motherboards do NOT increase your FPS." data-ar="اللوحات الأم لا تزيد من معدل الإطارات (FPS).">
            Motherboards do NOT increase your FPS.
          </h3>
          <p data-en="A $150 B650 and a $400 X670 will run your games at the exact same frame rate with the same CPU and GPU. Spend enough for the ports and stability you need — put the rest into a better GPU."
             data-ar="لوحة B650 بـ 150$ ولوحة X670 بـ 400$ ستشغل ألعابك بنفس معدل الإطارات. ادفع ما يكفي للمنافذ والاستقرار وضع الباقي في كرت شاشة أفضل.">
            A $150 and $400 motherboard run games at the exact same FPS with the same CPU &amp; GPU. Put the saved money into a better GPU.
          </p>
        </div>
      </div>
    </div>
  </section>

  <!-- CTA -->
  <section class="section section--ink">
    <div class="container" style="text-align: center;">
      <span class="eyebrow" style="color: var(--color-accent);"
            data-en="// UP NEXT" data-ar="// التالي">// UP NEXT</span>
      <h2 data-en="Now meet the short-term memory." data-ar="والآن، تعرّف على الذاكرة قصيرة المدى.">
        Now meet the short-term memory.
      </h2>
      <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;"
         data-en="The Motherboard is ready. Now we need lightning-fast workspace for the CPU."
         data-ar="اللوحة الأم جاهزة. الآن نحتاج مساحة عمل فائقة السرعة للمعالج.">
        The Motherboard is ready. Now we need lightning-fast workspace for the CPU.
      </p>
      <a href="Default.aspx#components" class="btn btn--accent btn--lg"
         data-en="Browse all components" data-ar="استعرض كل القطع">Browse all components</a>
    </div>
  </section>

  <script>
    (function () {
      'use strict';
      console.log('%cSpace-PC ✦ Motherboard page loaded.',
                  'color:#fde047; background:#0a0a0a; padding:4px; font-weight:700; font-family:monospace;');
    })();
  </script>

</asp:Content>
