<%@ Page Title="Power Supply | The Heart — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="power-supply.aspx.cs" Inherits="SpacePC.power_supply" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
  Power Supply | The Heart — Space-PC
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .breadcrumbs { font-family: var(--font-display); font-size: 0.85rem; color: var(--color-muted); padding-top: var(--sp-5); margin-bottom: 0; }
    .breadcrumbs a { color: var(--color-muted); border-bottom: 1px dashed transparent; transition: all var(--t-fast); }
    .breadcrumbs a:hover { color: var(--color-primary); border-bottom-color: var(--color-primary); }
    .breadcrumbs .sep { margin: 0 var(--sp-2); color: var(--color-soft); }
    .component-tag { display: inline-block; padding: 4px 12px; background: var(--color-accent); color: var(--color-ink); font-family: var(--font-display); font-size: 0.78rem; font-weight: 700; letter-spacing: 0.15em; border-radius: var(--r-sm); margin-bottom: var(--sp-4); text-transform: uppercase; }
    .psu-illustration { width: 100%; height: 100%; max-width: 360px; max-height: 360px; }
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
        <span data-en="Power Supply" data-ar="مزود الطاقة (Power Supply)">Power Supply</span>
      </nav>

      <div class="component-header">
        <div class="reveal">
          <span class="component-tag" data-en="// COMPONENT 06" data-ar="// القطعة 06">// COMPONENT 06</span>
          <h1>
            <span data-en="Power Supply." data-ar="مزود الطاقة.">Power Supply.</span><br />
            <span class="section-title" data-en="The Heart." data-ar="القلب.">The Heart.</span>
          </h1>
          <p class="lead" style="color: var(--color-muted);"
             data-en="Every component in your PC runs on electricity. The PSU converts wall power into clean, stable voltages your components can actually use. Cheap out here — at your peril."
             data-ar="كل قطعة في جهازك تعمل بالكهرباء. مزود الطاقة يحوّل الكهرباء من الحائط إلى جهود نظيفة ومستقرة يمكن لقطعك استخدامها. التوفير هنا — على مسؤوليتك.">
            Every component in your PC runs on electricity. The PSU converts wall power into clean, stable voltages your components can actually use. Cheap out here — at your peril.
          </p>
          <div class="definition reveal reveal-delay-1">
            <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
            <span data-en="The Power Supply Unit (PSU) is the component that plugs into your wall socket and distributes power to every other part — the CPU, GPU, motherboard, storage drives, and fans. A bad PSU can destroy every component connected to it."
                  data-ar="مزود الطاقة (PSU) هو المكوّن الذي يتصل بمقبس الحائط ويوزّع الطاقة على كل قطعة أخرى. مزود طاقة رديء يمكنه تدمير كل قطعة متصلة به.">
              The PSU plugs into your wall socket and distributes power to every component. A bad PSU can destroy every component connected to it.
            </span>
          </div>
        </div>

        <div class="component-image reveal reveal-delay-2">
          <svg class="psu-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
            <rect x="60" y="120" width="240" height="160" rx="6" fill="#1a1a1a" stroke="#0a0a0a" stroke-width="4"/>
            <rect x="62" y="122" width="236" height="156" rx="5" fill="#2a2a2a"/>
            <circle cx="290" cy="200" r="45" fill="#111" stroke="#0a0a0a" stroke-width="3"/>
            <circle cx="290" cy="200" r="35" fill="#1a1a1a" stroke="#333" stroke-width="2"/>
            <line x1="290" y1="165" x2="290" y2="235" stroke="#555" stroke-width="3"/>
            <line x1="255" y1="200" x2="325" y2="200" stroke="#555" stroke-width="3"/>
            <g fill="#fde047" stroke="#0a0a0a" stroke-width="1.5">
              <rect x="80" y="150" width="8" height="40" rx="1"/>
              <rect x="95" y="150" width="8" height="40" rx="1"/>
              <rect x="110" y="150" width="8" height="40" rx="1"/>
              <rect x="80" y="210" width="8" height="40" rx="1"/>
              <rect x="95" y="210" width="8" height="40" rx="1"/>
              <rect x="110" y="210" width="8" height="40" rx="1"/>
            </g>
            <rect x="130" y="155" width="120" height="90" rx="3" fill="#111" stroke="#333" stroke-width="2"/>
            <text x="190" y="208" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="13" font-weight="700" fill="#fde047">850W</text>
            <text x="190" y="225" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="9" fill="#888">80+ GOLD</text>
            <text x="200" y="370" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a">POWER SUPPLY</text>
          </svg>
        </div>
      </div>

      <div class="quick-jump scroll-reveal">
        <strong data-en="Jump to:" data-ar="انتقل إلى:">Jump to:</strong>
        <a href="#wattage"       data-en="Wattage Guide"     data-ar="دليل الواط">Wattage Guide</a>
        <a href="#ratings"       data-en="80+ Ratings"       data-ar="تقييمات 80+">80+ Ratings</a>
        <a href="#types"         data-en="Modular Types"     data-ar="أنواع الوحدات">Modular Types</a>
        <a href="#buying"        data-en="Buying Guide"      data-ar="دليل الشراء">Buying Guide</a>
        <a href="#tip"           data-en="Golden Tip"        data-ar="النصيحة الذهبية">Golden Tip</a>
      </div>
    </div>
  </section>

  <!-- Wattage Guide -->
  <section id="wattage" class="section section--soft">
    <div class="container">
      <span class="eyebrow">// HOW MUCH POWER?</span>
      <h2>
        <span>Wattage</span>
        <span class="section-title">guide</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="You need to pick a PSU powerful enough to run your system with headroom. Too little wattage = crashes and shutdowns. Too much = wasted money. Here's how to match wattage to your build."
         data-ar="تحتاج لاختيار مزود طاقة قوي بما يكفي لتشغيل نظامك مع هامش أمان. قدرة منخفضة = تعطّلات. قدرة عالية جداً = مال ضائع. إليك كيفية مطابقة الواط مع تجميعتك.">
        Pick a PSU powerful enough to run your system with headroom. Too little wattage = crashes. Too much = wasted money.
      </p>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">💡</div>
          <h3>550 – 650W</h3>
          <p class="price">Budget / Office Builds</p>
          <p>Sufficient for integrated graphics or entry-level dedicated GPUs (RX 6600, RTX 4060). Ryzen 5 / Core i5 paired with a mid-range GPU.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>GPU tier:</strong> RTX 4060 / RX 7600 or below
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">⚡</div>
          <h3>750 – 850W</h3>
          <p class="price">Gaming Sweet Spot</p>
          <p>Handles most mainstream gaming builds — Ryzen 7 / Core i7 paired with an RTX 4070 Ti or RX 7900 XT. Leaves headroom for upgrades.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>GPU tier:</strong> RTX 4070 Ti / RX 7900 XT
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">🔥</div>
          <h3>1000W+</h3>
          <p class="price">High-End / Enthusiast</p>
          <p>Required for top-tier GPUs — RTX 4090, RX 7900 XTX — especially when paired with Ryzen 9 or Core i9. Do not under-spec your PSU for flagship GPUs.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>GPU tier:</strong> RTX 4090 / RX 7900 XTX
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- 80+ Ratings Table -->
  <section id="ratings" class="section">
    <div class="container">
      <span class="eyebrow">// EFFICIENCY RATINGS</span>
      <h2>
        <span>80 PLUS</span>
        <span class="section-title">ratings</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="The 80 PLUS rating tells you how efficiently the PSU converts AC wall power to DC power your components use. A more efficient PSU wastes less electricity as heat."
         data-ar="تقييم 80 PLUS يخبرك بكفاءة تحويل مزود الطاقة للكهرباء. مزود الطاقة الأكثر كفاءة يهدر طاقة أقل كحرارة.">
        The 80 PLUS rating tells you how efficiently the PSU converts AC wall power. Higher efficiency = less heat and electricity waste.
      </p>
      <table class="standards-table scroll-reveal">
        <thead>
          <tr>
            <th>Certification</th>
            <th>Efficiency at 50% Load</th>
            <th>Who It's For</th>
          </tr>
        </thead>
        <tbody>
          <tr><td><strong>80 PLUS White</strong></td><td>80%</td><td>Avoid — budget no-name units. Very inefficient.</td></tr>
          <tr><td><strong>80 PLUS Bronze</strong></td><td>85%</td><td>Acceptable minimum. Fine for budget builds.</td></tr>
          <tr><td><strong>80 PLUS Gold</strong></td><td>90%</td><td>The sweet spot. Recommended for all gaming builds.</td></tr>
          <tr><td><strong>80 PLUS Platinum</strong></td><td>92%</td><td>Excellent. Worth it for always-on or heavy workloads.</td></tr>
          <tr><td><strong>80 PLUS Titanium</strong></td><td>94%</td><td>Best available. Diminishing returns for most users.</td></tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- Modular Types -->
  <section id="types" class="section section--soft">
    <div class="container">
      <span class="eyebrow">// CABLE MANAGEMENT</span>
      <h2>
        <span>Modular</span>
        <span class="section-title">types</span><span>.</span>
      </h2>
      <div class="brands-grid is-three-up scroll-reveal">
        <article class="brand-card">
          <h3>Non-Modular</h3>
          <p class="tagline">// ALL CABLES FIXED · CHEAPEST</p>
          <p>All cables are permanently attached. You get tangled cables you don't need. Cheapest option but messy. Avoid unless on an extreme budget.</p>
        </article>
        <article class="brand-card is-intel">
          <h3>Semi-Modular</h3>
          <p class="tagline">// SOME CABLES FIXED · GOOD VALUE</p>
          <p>Essential cables (motherboard, CPU) are fixed. Optional cables (SATA, GPU) are detachable. Good balance of price and cable management.</p>
        </article>
        <article class="brand-card is-amd">
          <h3>Fully Modular</h3>
          <p class="tagline">// ALL CABLES DETACHABLE · CLEANEST</p>
          <p>Every cable is removable. Only connect what you need — cleaner build, better airflow. Worth the slight price premium for a quality build.</p>
        </article>
      </div>
    </div>
  </section>

  <!-- Buying Guide -->
  <section id="buying" class="section">
    <div class="container">
      <span class="eyebrow">// TRUSTED BRANDS</span>
      <h2>
        <span>Buying</span>
        <span class="section-title">guide</span><span>.</span>
      </h2>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">🏷️</div>
          <h3>Budget</h3>
          <p class="price">~ $60 – $90</p>
          <p>650W 80+ Bronze or Gold Semi-Modular. Brands: Corsair CX650M, EVGA B5, Seasonic Focus GX.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 650W Gold Semi-Modular
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">⚡</div>
          <h3>Gaming</h3>
          <p class="price">~ $100 – $150</p>
          <p>750–850W 80+ Gold Fully Modular. Brands: Corsair RM850x, Seasonic Focus GX-850, be quiet! Straight Power 12.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 850W Gold Fully Modular
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">🔥</div>
          <h3>High-End</h3>
          <p class="price">~ $180 – $300</p>
          <p>1000W+ 80+ Platinum or Gold. Brands: Corsair HX1000, Seasonic Prime TX-1000, be quiet! Dark Power Pro 13.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 1000W+ Platinum Fully Modular
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- Warnings -->
  <section class="section section--soft">
    <div class="container">
      <div class="warning-cards scroll-reveal">
        <article class="warning-card is-critical">
          <div class="warn-icon">⚠️</div>
          <div>
            <h4>A cheap PSU is the most dangerous component you can buy</h4>
            <p>A no-name or very cheap PSU that fails under load doesn't just shut your PC off. It can send voltage spikes through your system and fry your CPU, GPU, and motherboard — all at once. Never cheap out on the PSU. Budget $80–100 minimum for a reputable brand.</p>
          </div>
        </article>
        <article class="warning-card is-warn">
          <div class="warn-icon">🔧</div>
          <div>
            <h4>Never mix PSU cables from different units</h4>
            <p>Fully modular PSUs use proprietary cable pinouts. Even if two PSU cables look identical, mixing cables from different brands or models can cause a short circuit. Always use the cables that came in the box with your specific PSU.</p>
          </div>
        </article>
      </div>
    </div>
  </section>

  <!-- Golden Tip -->
  <section id="tip" class="section">
    <div class="container">
      <div class="golden-tip scroll-reveal">
        <div class="tip-icon">💛</div>
        <div>
          <span class="eyebrow" style="color: var(--color-accent);">// SPACE-PC GOLDEN TIP</span>
          <h3 data-en="Buy the PSU last — but don't skip the research." data-ar="اشتر مزود الطاقة أخيراً — لكن لا تتخطَّ البحث.">Buy the PSU last — but don't skip the research.</h3>
          <p>Once you know your full parts list, look up your GPU's Total Design Power (TDP) and add 20–30% for headroom. Use the PSU Cultists' Tier List (google it) — it's the most trusted community-maintained database for PSU quality rankings. Never buy a PSU without checking it first.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- CTA -->
  <section class="section section--ink">
    <div class="container" style="text-align: center;">
      <span class="eyebrow" style="color: var(--color-accent);">// UP NEXT</span>
      <h2>Now, the skeleton.</h2>
      <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;">
        The PSU is the heart. The Case is the skeleton that holds it all together — and decides your airflow.
      </p>
      <a href="Default.aspx#components" class="btn btn--accent btn--lg"
         data-en="Browse all components" data-ar="استعرض كل القطع">Browse all components</a>
    </div>
  </section>

  <script>
    (function () { 'use strict';
      console.log('%cSpace-PC ✦ PSU page loaded.', 'color:#fde047; background:#0a0a0a; font-weight:700; font-family:monospace;');
    })();
  </script>

</asp:Content>
