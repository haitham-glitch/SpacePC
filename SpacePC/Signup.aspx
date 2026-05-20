<%@ Page Title="Sign Up | Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SpacePC.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Sign Up | Space-PC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
    /* نستخدم نفس ستايلات الـ auth-layout الموحدة */
    .auth-layout {
      display: grid;
      grid-template-columns: 1fr 1fr;
      min-height: calc(100vh - 76px);
    }
    .auth-side {
      position: relative;
      background: var(--color-ink);
      color: var(--color-bg);
      padding: var(--sp-7);
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      overflow: hidden;
    }
    .auth-side::before {
      content: '';
      position: absolute;
      width: 360px; height: 360px;
      border-radius: 50%;
      background: var(--color-primary);
      opacity: 0.5;
      filter: blur(80px);
      top: -100px; right: -80px;
      z-index: 0;
    }
    .auth-side::after {
      content: '';
      position: absolute;
      width: 280px; height: 280px;
      border-radius: 50%;
      background: var(--color-secondary);
      opacity: 0.45;
      filter: blur(80px);
      bottom: -80px; left: -60px;
      z-index: 0;
    }
    .auth-side > * { position: relative; z-index: 1; }

    .auth-side .quote {
      font-family: var(--font-display);
      font-size: 1.6rem;
      line-height: 1.3;
      max-width: 18ch;
      margin-top: var(--sp-7);
    }
    .auth-side .quote::before {
      content: '"';
      font-size: 4rem;
      line-height: 0.8;
      color: var(--color-accent);
      display: block;
      margin-bottom: var(--sp-2);
    }
    .auth-side .signature {
      font-family: var(--font-display);
      font-size: 0.85rem;
      letter-spacing: 0.1em;
      color: var(--color-accent);
      margin-top: var(--sp-4);
      text-transform: uppercase;
    }

    .auth-side-image {
      width: 100%;
      aspect-ratio: 4/3;
      background-image: url('https://images.unsplash.com/photo-1591488320449-011701bb6704?auto=format&fit=crop&w=900&q=70');
      background-size: cover;
      background-position: center;
      border-radius: var(--r-md);
      border: var(--border-bold);
      box-shadow: var(--shadow-md);
      margin-top: var(--sp-6);
      transform: rotate(-1.5deg);
      transition: transform var(--t-base);
    }

    .auth-form-side {
      padding: var(--sp-7) var(--sp-5);
      display: grid;
      place-items: center;
    }

    .error-label {
      display: block;
      color: red;
      font-weight: 600;
      margin-top: var(--sp-2);
    }

    @media (max-width: 880px) {
      .auth-layout { grid-template-columns: 1fr; }
      .auth-side { display: none; }
    }
  </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auth-layout">
      <aside class="auth-side">
        <div>
          <a href="Default.aspx" class="brand" style="color: var(--color-bg);">
            <span class="brand-mark" style="background: var(--color-accent); color: var(--color-ink);">S</span>
            <span data-en="Space-PC" data-ar="سبيس-بي سي" style="color: var(--color-bg);">Space-PC</span>
          </a>
          <blockquote class="quote"
            data-en="The journey of a thousand miles begins with a single component."
            data-ar="رحلة الألف ميل تبدأ بقطعة حاسوب واحدة.">
            The journey of a thousand miles begins with a single component.
          </blockquote>
          <p class="signature" data-en="// START BUILDING" data-ar="// ابدأ البناء">// START BUILDING</p>
        </div>
        <div class="auth-side-image" role="img" aria-label="PC Build"></div>
      </aside>

      <section class="auth-form-side">
        <div class="auth-card">
          <span class="eyebrow" data-en="// SIGN UP" data-ar="// إنشاء حساب">// SIGN UP</span>
          <h1 data-en="Create an account." data-ar="أنشئ حساباً جديداً.">Create an account.</h1>
          <p class="sub" data-en="Join Space-PC and track your build progress." data-ar="انضم إلى سبيس-بي سي وابدأ بتتبع تجميعتك.">
            Join Space-PC and track your build progress.
          </p>

          <div id="signup-form">
            <div class="field">
              <label for="signupEmail" data-en="Email address" data-ar="البريد الإلكتروني">Email address</label>
              <asp:TextBox ID="signupEmail" runat="server" CssClass="input" TextMode="Email" ClientIDMode="Static" placeholder="name@example.com"></asp:TextBox>
            </div>

            <div class="field">
              <label for="signupPassword" data-en="Password" data-ar="كلمة المرور">Password</label>
              <asp:TextBox ID="signupPassword" runat="server" CssClass="input" TextMode="Password" ClientIDMode="Static" placeholder="••••••••"></asp:TextBox>
            </div>

            <div class="field">
              <label for="signupConfirmPassword" data-en="Confirm Password" data-ar="تأكيد كلمة المرور">Confirm Password</label>
              <asp:TextBox ID="signupConfirmPassword" runat="server" CssClass="input" TextMode="Password" ClientIDMode="Static" placeholder="••••••••"></asp:TextBox>
            </div>

            <div style="margin-bottom: var(--sp-4);">
                <asp:Label ID="lblSignupMessage" runat="server" CssClass="error-label"></asp:Label>
            </div>

            <asp:LinkButton ID="btnRegister" runat="server" CssClass="btn btn--primary btn--lg" OnClick="btnRegister_Click" data-en="Sign Up →" data-ar="إنشاء حساب →">
                Sign Up →
            </asp:LinkButton>
          </div>

          <p class="auth-divider">
            <span data-en="Already have an account?" data-ar="لديك حساب بالفعل؟">Already have an account?</span>
            <a href="login.aspx" data-en="Log in here." data-ar="سجّل دخولك هنا.">Log in here.</a>
          </p>
        </div>
      </section>
    </div>
</asp:Content>
