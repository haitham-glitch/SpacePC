<%@ Page Title="Case | The Skeleton — Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="case.aspx.cs" Inherits="SpacePC.case_page" %>

<asp:Content ID="TitleContent" ContentPlaceHolderID="TitleContent" runat="server">
  Case | The Skeleton — Space-PC
</asp:Content>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .breadcrumbs { font-family: var(--font-display); font-size: 0.85rem; color: var(--color-muted); padding-top: var(--sp-5); margin-bottom: 0; }
    .breadcrumbs a { color: var(--color-muted); border-bottom: 1px dashed transparent; transition: all var(--t-fast); }
    .breadcrumbs a:hover { color: var(--color-primary); border-bottom-color: var(--color-primary); }
    .breadcrumbs .sep { margin: 0 var(--sp-2); color: var(--color-soft); }
    .component-tag { display: inline-block; padding: 4px 12px; background: var(--color-ink); color: var(--color-bg); font-family: var(--font-display); font-size: 0.78rem; font-weight: 700; letter-spacing: 0.15em; border-radius: var(--r-sm); margin-bottom: var(--sp-4); text-transform: uppercase; }
    .case-illustration { width: 100%; height: 100%; max-width: 360px; max-height: 360px; }
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
        <span data-en="Case" data-ar="الصندوق (Case)">Case</span>
      </nav>

      <div class="component-header">
        <div class="reveal">
          <span class="component-tag" data-en="// COMPONENT 07" data-ar="// القطعة 07">// COMPONENT 07</span>
          <h1>
            <span data-en="Case." data-ar="الصندوق.">Case.</span><br />
            <span class="section-title" data-en="The Skeleton." data-ar="الهيكل.">The Skeleton.</span>
          </h1>
          <p class="lead" style="color: var(--color-muted);"
             data-en="The Case holds everything together — the motherboard, PSU, drives, and fans. It decides your airflow, your aesthetics, and whether your build fits in the room."
             data-ar="الصندوق يحمل كل شيء معاً — اللوحة الأم، مزود الطاقة، الأقراص، والمراوح. يُحدّد تدفق الهواء، المظهر، وما إذا كانت تجميعتك تتسع في الغرفة.">
            The Case holds everything together. It decides your airflow, your aesthetics, and whether your build fits in the room.
          </p>
          <div class="definition reveal reveal-delay-1">
            <strong data-en="In plain English:" data-ar="بكل بساطة:">In plain English:</strong>
            <span data-en="The PC Case is the metal or plastic enclosure that houses all your components. It protects them from dust and physical damage, provides mounting points for the motherboard and drives, and manages the airflow that keeps everything cool."
                  data-ar="صندوق الحاسوب هو الهيكل المعدني أو البلاستيكي الذي يحتضن كل قطعك. يحميها من الغبار والتلف، ويوفر نقاط تثبيت للوحة الأم والأقراص، ويدير تدفق الهواء الذي يُبقي كل شيء بارداً.">
              The PC Case houses all your components, protects them, and manages the airflow that keeps everything cool.
            </span>
          </div>
        </div>

        <div class="component-image reveal reveal-delay-2">
          <svg class="case-illustration" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
            <rect x="120" y="40" width="160" height="320" rx="6" fill="#1a1a1a" stroke="#0a0a0a" stroke-width="4"/>
            <rect x="122" y="42" width="156" height="316" rx="5" fill="#2a2a2a"/>
            <rect x="130" y="55" width="140" height="8" rx="2" fill="#333"/>
            <circle cx="160" cy="70" r="6" fill="#111" stroke="#555" stroke-width="2"/>
            <circle cx="180" cy="70" r="6" fill="#111" stroke="#555" stroke-width="2"/>
            <rect x="240" y="62" width="20" height="16" rx="2" fill="#111" stroke="#555" stroke-width="1.5"/>
            <rect x="130" y="90" width="140" height="80" rx="3" fill="#111" stroke="#333" stroke-width="2"/>
            <g stroke="#ec4899" stroke-width="1.5" fill="none" opacity="0.6">
              <circle cx="200" cy="130" r="30"/>
              <circle cx="200" cy="130" r="20"/>
              <line x1="200" y1="100" x2="200" y2="160"/>
              <line x1="170" y1="130" x2="230" y2="130"/>
            </g>
            <rect x="130" y="185" width="140" height="8" rx="2" fill="#fde047" opacity="0.3"/>
            <rect x="130" y="200" width="140" height="50" rx="3" fill="#111" stroke="#333" stroke-width="2"/>
            <rect x="140" y="210" width="120" height="30" rx="2" fill="#c0c0c0" opacity="0.7"/>
            <text x="200" y="230" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="9" font-weight="700" fill="#0a0a0a">M.2 NVMe</text>
            <rect x="130" y="265" width="140" height="30" rx="3" fill="#111" stroke="#333" stroke-width="2"/>
            <rect x="130" y="305" width="140" height="30" rx="3" fill="#111" stroke="#333" stroke-width="2"/>
            <g fill="#333" stroke="#0a0a0a" stroke-width="1.5">
              <rect x="278" y="95"  width="6" height="100" rx="1"/>
              <rect x="278" y="205" width="6" height="80"  rx="1"/>
            </g>
            <text x="200" y="390" text-anchor="middle" font-family="IBM Plex Mono, monospace" font-size="14" font-weight="700" fill="#0a0a0a">CASE</text>
          </svg>
        </div>
      </div>

      <div class="quick-jump scroll-reveal">
        <strong data-en="Jump to:" data-ar="انتقل إلى:">Jump to:</strong>
        <a href="#sizes"         data-en="Form Factors"     data-ar="الأحجام">Form Factors</a>
        <a href="#airflow"       data-en="Airflow"          data-ar="تدفق الهواء">Airflow</a>
        <a href="#standards"     data-en="What to Look For" data-ar="ما تبحث عنه">What to Look For</a>
        <a href="#buying"        data-en="Buying Guide"     data-ar="دليل الشراء">Buying Guide</a>
        <a href="#tip"           data-en="Golden Tip"       data-ar="النصيحة الذهبية">Golden Tip</a>
      </div>
    </div>
  </section>

  <!-- Form Factors -->
  <section id="sizes" class="section section--soft">
    <div class="container">
      <span class="eyebrow">// SIZE MATTERS</span>
      <h2>
        <span>Form</span>
        <span class="section-title">factors</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="Cases come in different sizes that match different motherboard form factors. Picking the wrong size means your motherboard won't physically fit."
         data-ar="الصناديق تأتي بأحجام مختلفة تتناسب مع أشكال اللوحة الأم المختلفة. اختيار الحجم الخاطئ يعني أن لوحتك الأم لن تناسبه فيزيائياً.">
        Cases come in different sizes. Picking the wrong size means your motherboard won't fit.
      </p>
      <div class="brands-grid is-three-up scroll-reveal">
        <article class="brand-card">
          <h3>Full Tower</h3>
          <p class="tagline">// MAX SPACE · MAX AIRFLOW</p>
          <p>Supports all form factors — E-ATX, ATX, mATX. Massive space for custom water cooling loops, multiple GPUs, and abundant storage. Overkill for most users.</p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Fits</h4>
          <ul>
            <li>E-ATX, ATX, Micro-ATX, Mini-ITX</li>
            <li>Multiple 360mm radiators</li>
            <li>4+ HDDs + multiple SSDs</li>
          </ul>
        </article>
        <article class="brand-card is-intel">
          <h3>Mid Tower</h3>
          <p class="tagline">// THE SWEET SPOT · MOST POPULAR</p>
          <p>The most popular category. Fits ATX and smaller boards, most GPU lengths, and 240/360mm radiators. Perfect balance of space, airflow, and desk footprint.</p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Fits</h4>
          <ul>
            <li>ATX, Micro-ATX, Mini-ITX</li>
            <li>Up to 360mm radiators (most models)</li>
            <li>GPUs up to ~340mm long</li>
          </ul>
        </article>
        <article class="brand-card is-amd">
          <h3>Mini-ITX</h3>
          <p class="tagline">// TINY · CHALLENGING BUILD</p>
          <p>For Mini-ITX motherboards only. Compact and elegant but builds are difficult — thermal management is tricky, and you'll pay a premium for compatible components.</p>
          <h4 style="margin-top: var(--sp-5); font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.1em; color: var(--color-muted);">Fits</h4>
          <ul>
            <li>Mini-ITX only</li>
            <li>Limited radiator support</li>
            <li>Shorter GPUs recommended</li>
          </ul>
        </article>
      </div>
    </div>
  </section>

  <!-- Airflow -->
  <section id="airflow" class="section">
    <div class="container">
      <span class="eyebrow">// THERMAL MANAGEMENT</span>
      <h2>
        <span>Airflow</span>
        <span class="section-title">matters</span><span>.</span>
      </h2>
      <p class="lead" style="max-width: 60ch;"
         data-en="A case with poor airflow will throttle even the best components. Hot air must exit fast, and cool air must replace it. Here's the basics."
         data-ar="صندوق بتدفق هواء ضعيف سيُقيّد حتى أفضل القطع. الهواء الساخن يجب أن يخرج بسرعة والبارد يجب أن يحلّ محله. إليك الأساسيات.">
        A case with poor airflow will throttle even the best components. Hot air must exit fast, and cool air must replace it.
      </p>
      <table class="standards-table scroll-reveal">
        <thead>
          <tr>
            <th>Concept</th>
            <th>What it means</th>
          </tr>
        </thead>
        <tbody>
          <tr><td><strong>Positive Pressure</strong></td><td>More intake fans than exhaust. Pushes dust out through gaps, keeping the inside cleaner. Good for dusty environments.</td></tr>
          <tr><td><strong>Negative Pressure</strong></td><td>More exhaust than intake. Pulls cool air in through every gap — including where dust accumulates. Requires more frequent cleaning.</td></tr>
          <tr><td><strong>Balanced Airflow</strong></td><td>Equal intake and exhaust. The most common and recommended configuration for most builds.</td></tr>
          <tr><td><strong>Mesh Front Panel</strong></td><td>A mesh front panel allows far more air into the case than a solid panel. Dramatically lowers temperatures — prioritize this.</td></tr>
          <tr><td><strong>Fan Placement</strong></td><td>Front/Bottom = Intake (cool air in). Rear/Top = Exhaust (hot air out). This follows the natural heat-rises principle.</td></tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- What to Look For -->
  <section id="standards" class="section section--soft">
    <div class="container">
      <span class="eyebrow">// CHECKLIST</span>
      <h2>
        <span>What to</span>
        <span class="section-title">look for</span><span>.</span>
      </h2>
      <div class="usecase-grid scroll-reveal">
        <article class="usecase-card tier-budget">
          <div class="usecase-icon">📐</div>
          <h3>Compatibility</h3>
          <p class="price">Check BEFORE buying</p>
          <ul style="margin-top: var(--sp-3); font-size: 0.9rem;">
            <li>Motherboard form factor support (ATX, mATX, ITX)</li>
            <li>GPU clearance length (check your GPU's length)</li>
            <li>CPU cooler height clearance</li>
            <li>Radiator support (240mm / 360mm)</li>
          </ul>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">🌬️</div>
          <h3>Airflow</h3>
          <p class="price">The most important factor</p>
          <ul style="margin-top: var(--sp-3); font-size: 0.9rem;">
            <li>Mesh front panel (strongly preferred)</li>
            <li>Minimum 2 pre-installed fans</li>
            <li>Dust filters on intake vents</li>
            <li>Cable management channels behind the tray</li>
          </ul>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">✨</div>
          <h3>Extras</h3>
          <p class="price">Nice to have</p>
          <ul style="margin-top: var(--sp-3); font-size: 0.9rem;">
            <li>Tempered glass side panel (to show the build)</li>
            <li>USB-C front panel port</li>
            <li>Tool-less drive installation</li>
            <li>PSU shroud (hides cables)</li>
          </ul>
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
          <p class="price">~ $50 – $80</p>
          <p>Fractal Design Focus 2, Corsair 4000D Airflow. Both have excellent airflow for the price with mesh fronts.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> Fractal Focus 2 / Corsair 4000D
          </p>
        </article>
        <article class="usecase-card tier-gaming">
          <div class="usecase-icon">⚡</div>
          <h3>Mid-Range</h3>
          <p class="price">~ $100 – $150</p>
          <p>Lian Li Lancool 216, Fractal Design North, be quiet! Pure Base 500DX. Premium build quality, excellent airflow, gorgeous aesthetics.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> Lian Li Lancool 216 / Fractal North
          </p>
        </article>
        <article class="usecase-card tier-creator">
          <div class="usecase-icon">👑</div>
          <h3>Premium</h3>
          <p class="price">~ $160 – $300</p>
          <p>Lian Li O11 Dynamic EVO, Corsair 7000D, Phanteks Enthoo Pro 2. Flagship cases with show-stopping design and maximum cooling potential.</p>
          <p style="margin-top: var(--sp-3); padding-top: var(--sp-3); border-top: 1px solid var(--color-soft); font-size: 0.9rem;">
            <strong>Pick:</strong> Lian Li O11 EVO / Phanteks Pro 2
          </p>
        </article>
      </div>
    </div>
  </section>

  <!-- Golden Tip -->
  <section id="tip" class="section">
    <div class="container">
      <div class="golden-tip scroll-reveal">
        <div class="tip-icon">🌬️</div>
        <div>
          <span class="eyebrow" style="color: var(--color-accent);">// SPACE-PC GOLDEN TIP</span>
          <h3 data-en="Airflow first. RGB second. Always." data-ar="تدفق الهواء أولاً. الإضاءة ثانياً. دائماً.">Airflow first. RGB second. Always.</h3>
          <p>The most common mistake new builders make is choosing a case based on how it looks, then discovering their temperatures are terrible because of a solid front panel. A case with a mesh front and 3 fans will always outperform a prettier solid-panel case. Pick airflow first — then aesthetics within that constraint.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- CTA -->
  <section class="section section--ink">
    <div class="container" style="text-align: center;">
      <span class="eyebrow" style="color: var(--color-accent);">// YOU'RE READY</span>
      <h2 data-en="You now know all 7 components." data-ar="أنت الآن تعرف كل القطع السبع.">You now know all 7 components.</h2>
      <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;"
         data-en="CPU. GPU. Motherboard. RAM. Storage. PSU. Case. Create an account to save your research and start building your list."
         data-ar="المعالج. كرت الشاشة. اللوحة الأم. الذاكرة. التخزين. مزود الطاقة. الصندوق. أنشئ حساباً لحفظ بحثك وابدأ قائمتك.">
        CPU. GPU. Motherboard. RAM. Storage. PSU. Case. Create an account to save your research.
      </p>
      <a href="Signup.aspx" class="btn btn--accent btn--lg"
         data-en="Create your account" data-ar="أنشئ حسابك">Create your account</a>
    </div>
  </section>

  <script>
    (function () { 'use strict';
      console.log('%cSpace-PC ✦ Case page loaded.', 'color:#f5f1e8; background:#0a0a0a; font-weight:700; font-family:monospace;');
    })();
  </script>

</asp:Content>
