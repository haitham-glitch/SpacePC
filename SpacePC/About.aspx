<%@ Page Title="About Us | Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="SpacePC.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    About Us | Space-PC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    .about-hero-image {
      max-width: 760px;
      width: 100%;
      aspect-ratio: 16/9;
      object-fit: cover;
      margin: var(--sp-6) auto 0;
      display: block;
      border: var(--border-bold);
      border-radius: var(--r-md);
      box-shadow: var(--shadow-lg);
      transform: rotate(-1deg);
      transition: transform var(--t-base);
    }
    .about-hero-image:hover { transform: rotate(0); }

    .principle-strip {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: var(--sp-4);
      margin: var(--sp-7) 0;
      padding: var(--sp-6);
      background: var(--color-ink);
      color: var(--color-bg);
      border-radius: var(--r-md);
      border: var(--border-bold);
    }
    .principle-strip .item {
      text-align: center;
      padding: var(--sp-3);
    }
    .principle-strip .item h4 {
      font-size: 1.05rem;
      color: var(--color-accent);
      margin-bottom: var(--sp-2);
    }
    .principle-strip .item p {
      font-size: 0.88rem;
      opacity: 0.85;
      margin: 0;
    }

    @media (max-width: 880px) {
      .principle-strip { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 540px) {
      .principle-strip { grid-template-columns: 1fr; }
    }
  </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="about-hero">
      <div class="container">
        <span class="eyebrow" data-en="// ABOUT US" data-ar="// من نحن">// ABOUT US</span>
        <h1>
          <span data-en="We're builders who got tired of" data-ar="نحن مجمّعون سئمنا">We're builders who got tired of</span>
          <span class="section-title" data-en="cryptic guides." data-ar="الأدلة المعقّدة.">cryptic guides.</span>
        </h1>
        <p data-en="Space-PC exists because every PC building tutorial we've ever read assumed we already knew the answer. We're fixing that — one component at a time."
           data-ar="نشأ سبيس-بي سي لأنّ كل دليل لبناء الحاسوب قرأناه يفترض أننا نعرف الإجابة مسبقاً. نحن نُصلح ذلك — قطعة قطعة.">
          Space-PC exists because every PC building tutorial we've ever read assumed we already knew the answer. We're fixing that — one component at a time.
        </p>

        <img class="about-hero-image"
             src="https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=1200&q=70"
             alt="Custom RGB PC build with glass side panel"
             data-en-alt="Custom RGB PC build with glass side panel"
             data-ar-alt="تجميعة حاسوب مخصصة بإضاءة RGB ولوحة جانبية زجاجية" />
      </div>
    </section>

    <section class="section">
      <div class="container">
        <div class="story-grid">

          <article class="story-card is-pink scroll-reveal">
            <div class="num-badge">01</div>
            <span class="eyebrow" data-en="// OUR STORY" data-ar="// قصتنا">// OUR STORY</span>
            <h2 data-en="Started with one question." data-ar="بدأنا بسؤال واحد.">Started with one question.</h2>
            <p data-en='"What does this part actually do?"'
               data-ar='"ما الذي تفعله هذه القطعة فعلياً؟"'>
              "What does this part actually do?"
            </p>
            <p data-en="That was the first question that nobody answered clearly when we tried to build our first PCs. Forums threw acronyms at us. YouTube channels assumed prior knowledge. Spec sheets read like alien documents."
               data-ar="هذا كان أول سؤال لم يُجبه أحد بوضوح عندما حاولنا بناء أوّل تجميعاتنا. المنتديات أغرقتنا بالاختصارات. قنوات يوتيوب افترضت معرفة سابقة. أوراق المواصفات بدت كوثائق فضائية.">
              That was the first question that nobody answered clearly when we tried to build our first PCs. Forums threw acronyms at us. YouTube channels assumed prior knowledge. Spec sheets read like alien documents.
            </p>
            <p data-en="So we decided to build the resource we wished existed — one that starts at zero and respects the reader."
               data-ar="فقرّرنا أن نبني المصدر الذي تمنيّنا وجوده — مصدر يبدأ من الصفر ويحترم القارئ.">
              So we decided to build the resource we wished existed — one that starts at zero and respects the reader.
            </p>

            <ul class="values-list">
              <li data-en="Plain language always — even for technical truths."
                  data-ar="لغة بسيطة دائماً — حتى للحقائق التقنية.">
                Plain language always — even for technical truths.
              </li>
              <li data-en="Examples before specs. Specs make sense once you understand the use case."
                  data-ar="أمثلة قبل المواصفات. المواصفات تُفهم بعد فهم الاستخدام.">
                Examples before specs. Specs make sense once you understand the use case.
              </li>
              <li data-en="No paid placements. We don't take money from brands."
                  data-ar="لا إعلانات مدفوعة. لا نأخذ أموالاً من العلامات التجارية.">
                No paid placements. We don't take money from brands.
              </li>
            </ul>
          </article>

          <article class="story-card is-blue scroll-reveal reveal-delay-2">
            <div class="num-badge">02</div>
            <span class="eyebrow" data-en="// THE VISION" data-ar="// الرؤية">// THE VISION</span>
            <h2 data-en="Eradicate hardware illiteracy."
                data-ar="القضاء على الأمية في عالم الهاردوير.">
              Eradicate hardware illiteracy.
            </h2>
            <p data-en="Personal computers shape how people work, study, create, and play — yet most users have no idea what's inside their machine. That gap costs money (overpaying for the wrong parts), wastes potential (under-using what they own), and breeds dependence on biased shop advice."
               data-ar="الحواسيب الشخصية تُشكّل طريقة عمل الناس ودراستهم وإبداعهم ولعبهم — ومع ذلك معظم المستخدمين لا يعرفون ما بداخل أجهزتهم. هذه الفجوة تكلّفهم مالاً (يدفعون أكثر لقطع خاطئة)، وتُهدر الإمكانات (يستخدمون ما يملكون بنسبة أقل)، وتُولّد اعتماداً على نصائح المحلات المتحيّزة.">
              Personal computers shape how people work, study, create, and play — yet most users have no idea what's inside their machine. That gap costs money (overpaying for the wrong parts), wastes potential (under-using what they own), and breeds dependence on biased shop advice.
            </p>
            <p data-en="Our vision is a future where someone in Jeddah, Cairo, Riyadh, or Dubai can confidently walk into a PC store, talk specs, and build their own machine — without ever having felt confused or condescended to."
               data-ar="رؤيتنا هي مستقبل يستطيع فيه شخص في جدة أو القاهرة أو الرياض أو دبي أن يدخل محل حواسيب بثقة، ويتحدّث عن المواصفات، ويبني جهازه — دون أن يشعر يوماً بالتشويش أو التقليل من شأنه.">
              Our vision is a future where someone in Jeddah, Cairo, Riyadh, or Dubai can confidently walk into a PC store, talk specs, and build their own machine — without ever having felt confused or condescended to.
            </p>
            <p data-en="That's why this site exists in both Arabic and English — and why every component name appears in both languages on every Arabic page. Knowing the local term and the global market term is power."
               data-ar="لهذا السبب يوجد هذا الموقع بالعربية والإنجليزية معاً — ولهذا يظهر اسم كل قطعة باللغتين في كل صفحة عربية. معرفة المصطلح المحلي والمصطلح السوقي العالمي = قوة.">
              That's why this site exists in both Arabic and English — and why every component name appears in both languages on every Arabic page. Knowing the local term and the global market term is power.
            </p>
          </article>

        </div>
      </div>
    </section>

    <section class="section" style="padding-top: 0;">
      <div class="container">
        <div class="principle-strip scroll-reveal">
          <div class="item">
            <h4 data-en="Free forever" data-ar="مجاني للأبد">Free forever</h4>
            <p data-en="Education shouldn't be paywalled."
               data-ar="التعليم لا يجب أن يكون خلف جدار دفع.">
              Education shouldn't be paywalled.
            </p>
          </div>
          <div class="item">
            <h4 data-en="Beginner-first" data-ar="المبتدئ أولاً">Beginner-first</h4>
            <p data-en="Every guide is reviewed by someone who's never built before."
               data-ar="كل دليل يُراجَع من قبل شخص لم يجمّع حاسوباً من قبل.">
              Every guide is reviewed by someone who's never built before.
            </p>
          </div>
          <div class="item">
            <h4 data-en="Bilingual" data-ar="ثنائي اللغة">Bilingual</h4>
            <p data-en="Arabic and English, side by side, always."
               data-ar="العربية والإنجليزية، جنباً إلى جنب، دائماً.">
              Arabic and English, side by side, always.
            </p>
          </div>
          <div class="item">
            <h4 data-en="Brand-neutral" data-ar="محايد تجارياً">Brand-neutral</h4>
            <p data-en="No paid placements. The recommendation is the recommendation."
               data-ar="لا إعلانات مدفوعة. التوصية هي التوصية.">
              No paid placements. The recommendation is the recommendation.
            </p>
          </div>
        </div>
      </div>
    </section>

    <section class="section section--ink">
      <div class="container" style="text-align: center;">
        <span class="eyebrow" style="color: var(--color-accent);"
              data-en="// JOIN US" data-ar="// انضمّ إلينا">// JOIN US</span>
        <h2 style="max-width: 22ch; margin-inline: auto;"
            data-en="Want to learn the parts? Start with the brain."
            data-ar="تريد تعلّم القطع؟ ابدأ بالعقل.">
          Want to learn the parts? Start with the brain.
        </h2>
        <p style="max-width: 50ch; margin: var(--sp-4) auto var(--sp-6); opacity: 0.85;"
           data-en="Our component guides are the perfect place to start your hardware education — pick any part to dive in."
           data-ar="أدلّة القطع لدينا هي المكان المثالي لبدء تعلّم الهاردوير — اختر أيّ قطعة وابدأ.">
          Our component guides are the perfect place to start your hardware education — pick any part to dive in.
        </p>
        <a href="Default.aspx#components" class="btn btn--accent btn--lg"
           data-en="Browse the components →" data-ar="استعرض القطع →">Browse the components →</a>
      </div>
    </section>

    <script>
      (function () {
        'use strict';
        console.log('%cSpace-PC ✦ About page loaded.', 'color:#16a34a; font-weight:700; font-family:monospace;');
      })();
    </script>
</asp:Content>
