<%@ Page Title="Storage | The Digital Vault — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="storage.aspx.cs" Inherits="SpacePC.storage" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
  Storage | The Digital Vault — Space-PC
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
        <span data-en="Storage" data-ar="وحدات التخزين (Storage)">Storage</span>
      </nav>

      <div class="component-header">
        <div class="reveal">
          <span class="component-tag" data-en="// COMPONENT 05" data-ar="// القطعة 05">// COMPONENT 05</span>
          <h1>
            <span data-en="Storage." data-ar="وحدات التخزين.">Storage.</span><br />
            <span class="section-title" data-en="The Digital Vault." data-ar="الخزنة الرقمية.">The Digital Vault.</span>
          </h1>
          <p class="lead" style="color: var(--color-muted);"
             data-en="Every installed game. Every photo. Your operating system. It all lives in your Storage — ready to be called up whenever you need it."
             data-ar="كل لعبة مثبتة. كل صورة. نظام التشغيل. كلها تعيش في وحدة التخزين — جاهزة للاستدعاء متى ما احتجتها.">
            Every installed game. Every photo. Your operating system. It all lives in Storage — ready whenever you need it.
          </p>
          <div class="definition reveal reveal-delay-1">
            <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
            <span data-en="Storage is your computer's filing cabinet. Unlike RAM which forgets on shutdown, your storage keeps files permanently. Faster storage means faster loading screens."
                  data-ar="وحدة التخزين هي خزانة ملفات جهازك. على عكس الرام، تحتفظ بالملفات بشكل دائم. تخزين أسرع يعني شاشات تحميل أسرع.">
              Storage is your computer's filing cabinet. Unlike RAM, it keeps your files safe permanently.
            </span>
          </div>
        </div>

        <div class="component-image reveal reveal-delay-2">
          <svg class="ram-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
            <rect x="70" y="160" width="260" height="80" rx="2" fill="#111827" stroke="#0a0a0a" stroke-width="3"/>
            <g fill="#fde047" stroke="#0a0a0a" stroke-width="1.5">
              <rect x="55" y="170" width="15" height="6" rx="1"/>
              <rect x="55" y="180" width="15" height="6" rx="1"/>
              <rect x="55" y="190" width="15" height="6" rx="1"/>
              <rect x="55" y="200" width="15" height="6" rx="1"/>
              <rect x="55" y="210" width="15" height="6" rx="1"/>
              <rect x="55" y="220" width="15" height="6" rx="1"/>
            </g>
            <rect x="50" y="198" width="25" height="8" fill="#111827" stroke="#0a0a0a" stroke-width="1.5"/>
            <circle cx="330" cy="200" r="10" fill="#f5f1e8" stroke="#0a0a0a" stroke-width="3"/>
            <g fill="#374151" stroke="#0a0a0a" stroke-width="2">
              <rect x="90"  y="170" width="30" height="60" rx="2"/>
              <rect x="130" y="170" width="20" height="60" rx="2"/>
              <rect x="165" y="170" width="60" height="60" rx="2"/>
              <rect x="235" y="170" width="60" height="60" rx="2"/>
            </g>
            <rect x="80" y="165" width="225" height="70" rx="2" fill="#c0c0c0" stroke="#0a0a0a" stroke-width="1.5" opacity="0.9"/>
            <text x="190" y="205" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a">M.2 NVMe SSD 2TB</text>
            <text x="200" y="375" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a">STORAGE</text>
          </svg>
        </div>
      </div>

      <div class="quick-jump scroll-reveal">
        <strong data-en="Jump to:" data-ar="انتقل إلى:">Jump to:</strong>
        <a href="#types"         data-en="NVMe vs SATA"  data-ar="NVMe مقابل SATA">NVMe vs SATA</a>
        <a href="#howmuch"       data-en="How Much?"     data-ar="كم تحتاج؟">How Much?</a>
        <a href="#standards"     data-en="Standards"     data-ar="المعايير">Standards</a>
        <a href="#buying"        data-en="Buying Guide"  data-ar="دليل الشراء">Buying Guide</a>
        <a href="#compatibility" data-en="Compatibility" data-ar="التوافق">Compatibility</a>
        <a href="#tip"           data-en="Golden Tip"    data-ar="النصيحة الذهبية">Golden Tip</a>
      </div>
    </div>
  </section>

  <!-- NVMe vs SATA -->
  <section id="types" class="section section--soft">
    <div class="container">
      <span class="eyebrow" data-en="// THE BIG CHOICE" data-ar="// الاختيار الكبير">// THE BIG CHOICE</span>
      <h2>
        <span data-en="NVMe vs" data-ar="NVMe مقابل">NVMe vs</span>
        <span class="section-title">SATA SSDs</span><span>.</span>
      </h2>
      <div class="brands-grid scroll-reveal">
        <article class="brand-card">
          <h3>NVMe M.2</h3>
          <p class="tagline">// THE CURRENT STANDARD · PLUGS INTO MOTHERBOARD</p>
          <p>The modern standard. These tiny drives plug directly into your motherboard — incredibly fast, no cables needed.</p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Key specs</h4>
          <ul>
            <li><strong>Speed range</strong> — 3000 – 14000 MB/s</li>
            <li><strong>Connection</strong> — PCIe lanes (Direct to CPU)</li>
            <li><strong>Cables needed</strong> — None</li>
            <li><strong>Form factor</strong> — M.2 2280</li>
          </ul>
        </article>
        <article class="brand-card is-amd">
          <h3>SATA SSD</h3>
          <p class="tagline">// OLDER TECH · USES CABLES</p>
          <p>Still 5x faster than HDD, but limited by SATA cable interface. Good for cheap secondary storage, not ideal as primary boot drive.</p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Key specs</h4>
          <ul>
            <li><strong>Speed range</strong> — 500 – 550 MB/s</li>
            <li><strong>Connection</strong> — SATA Controller</li>
            <li><strong>Cables needed</strong> — Data Cable + Power Cable</li>
            <li><strong>Form factor</strong> — 2.5 Inch Block</li>
          </ul>
        </article>
      </div>
    </div>
  </section>

  <!-- How Much? -->
  <section id="howmuch" class="section">
    <div class="container">
      <span class="eyebrow">// THE REAL QUESTION</span>
      <h2>
        <span data-en="How much" data-ar="كم تحتاج">How much</span>
        <span class="section-title" data-en="capacity?" data-ar="من المساحة؟">capacity?</span>
      </h2>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">📁</div>
          <h3>500 GB</h3>
          <p class="price">The bare minimum</p>
          <p>Fits Windows + a handful of games. You'll run out fast if you game heavily. Only viable as an OS-only drive with an HDD for extra storage.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Use case:</strong> Tight budget only
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">🎮</div>
          <h3>1 TB</h3>
          <p class="price">The sweet spot</p>
          <p>The recommended minimum for a gaming PC in 2026. Fits Windows + 5–8 large modern games comfortably. Best value-per-dollar tier.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Use case:</strong> Gaming, everyday use
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">🎬</div>
          <h3>2 TB+</h3>
          <p class="price">The future-proof choice</p>
          <p>Ideal for content creators, large game libraries, and users who don't want to think about storage for years. 2 TB NVMe prices have dropped dramatically.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Use case:</strong> Content creation, large libraries
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- Standards Table -->
  <section id="standards" class="section section--soft">
    <div class="container">
      <span class="eyebrow">// 2026 SNAPSHOT</span>
      <h2>
        <span>Sizes &amp;</span>
        <span class="section-title">standards</span><span>.</span>
      </h2>
      <table class="standards-table scroll-reveal">
        <thead>
          <tr>
            <th>Term / Standard</th>
            <th>What it means</th>
          </tr>
        </thead>
        <tbody>
          <tr><td><strong>PCIe Gen 4</strong></td><td>Up to 7000 MB/s. The sweet spot for gaming — fast enough for anything and widely available.</td></tr>
          <tr><td><strong>PCIe Gen 5</strong></td><td>Up to 14,000 MB/s. Overkill for gaming. Runs very hot, needs a heatsink, and costs significantly more.</td></tr>
          <tr><td><strong>PCIe Gen 3</strong></td><td>Up to 3500 MB/s. Still acceptable for an OS drive. Common on older and budget boards.</td></tr>
          <tr><td><strong>M.2 2280</strong></td><td>The physical size standard for NVMe drives. 22mm wide, 80mm long — fits in virtually all boards.</td></tr>
          <tr><td><strong>DRAM Cache</strong></td><td>Drives with a DRAM cache chip maintain consistent speeds under sustained write loads. Dram-less drives slow down during large transfers.</td></tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- Buying Guide -->
  <section id="buying" class="section">
    <div class="container">
      <span class="eyebrow">// PICK YOUR DRIVE</span>
      <h2>
        <span>Buying</span>
        <span class="section-title">guide</span><span>.</span>
      </h2>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">🏷️</div>
          <h3>Budget Build</h3>
          <p class="price">~ $50 – $70</p>
          <p>1 TB NVMe Gen 3 SSD. Brands: Kingston NV3, WD Blue SN580. Fast enough, affordable, no-fuss.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 1 TB Gen 3 NVMe
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">⚡</div>
          <h3>Gaming Build</h3>
          <p class="price">~ $80 – $120</p>
          <p>1–2 TB NVMe Gen 4 SSD. Brands: Samsung 990 Pro, WD Black SN850X, Seagate FireCuda 530. Perfect for gaming and everyday use.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 1–2 TB Gen 4 NVMe
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">🖥️</div>
          <h3>Creator / Pro</h3>
          <p class="price">~ $150 – $300</p>
          <p>2–4 TB Gen 4 NVMe as the primary drive. Add a secondary SATA SSD or HDD for bulk project storage.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> 2+ TB Gen 4 NVMe + secondary HDD
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- Compatibility -->
  <section id="compatibility" class="section section--soft">
    <div class="container">
      <h2>
        <span>Compatibility &amp;</span>
        <span class="section-title">dependencies</span><span>.</span>
      </h2>
      <div class="warning-cards scroll-reveal">
        <article class="warning-card is-critical">
          <div class="warn-icon">⚠️</div>
          <div>
            <h4>Never use an HDD as your boot drive</h4>
            <p>Installing Windows on a mechanical hard drive (HDD) in 2026 will make even a $3000 PC feel like a broken laptop from 2010. Boot times take minutes instead of seconds. Your primary C: drive MUST be an NVMe SSD.</p>
          </div>
        </article>
        <article class="warning-card is-warn">
          <div class="warn-icon">🔧</div>
          <div>
            <h4>Don't lose the tiny M.2 screw</h4>
            <p>NVMe M.2 drives require a tiny standoff and screw to hold them against the motherboard. These screws come in the MOTHERBOARD box, not the SSD box. Screwing the drive at an angle without the standoff will snap it in half.</p>
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
          <h3>For gaming, Gen 4 is all you need.</h3>
          <p>Don't let marketing fool you. Gen 5 SSDs boast 14,000 MB/s but games don't load files large enough to benefit. In real-world tests, a Gen 5 drive loads games only ~0.5s faster than a solid Gen 4 drive — but costs twice as much. Save that money for a better GPU.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- CTA -->
  <section class="section section--ink">
    <div class="container" style="text-align: center;">
      <span class="eyebrow" style="color: var(--color-accent);">// UP NEXT</span>
      <h2>Now meet the artist.</h2>
      <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;">
        Storage holds the game data. The RAM feeds it to the CPU. The GPU paints the picture.
      </p>
      <a href="Default.aspx#components" class="btn btn--accent btn--lg"
         data-en="Browse all components" data-ar="استعرض كل القطع">Browse all components</a>
    </div>
  </section>

  <script>
    (function () { 'use strict';
      console.log('%cSpace-PC ✦ Storage page loaded.', 'color:#10b981; font-weight:700; font-family:monospace;');
    })();
  </script>

</asp:Content>
