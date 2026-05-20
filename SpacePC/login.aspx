<%@ Page Title="Login | Space-PC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SpacePC.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Login | Space-PC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
  <style>
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
    .auth-side-image:hover { transform: rotate(0); }

    .auth-form-side {
      padding: var(--sp-7) var(--sp-5);
      display: grid;
      place-items: center;
    }

    .success-msg {
      display: none;
      padding: var(--sp-3) var(--sp-4);
      background: var(--color-success);
      color: #fff;
      border-radius: var(--r-sm);
      border: var(--border-base);
      font-family: var(--font-display);
      font-weight: 600;
      margin-top: var(--sp-4);
      animation: fadeInUp 0.4s var(--ease) both;
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
            data-en="Every PC builder started with one part they didn't understand."
            data-ar="كل مجمّع حاسوب بدأ بقطعة واحدة لم يفهمها.">
            Every PC builder started with one part they didn't understand.
          </blockquote>
          <p class="signature" data-en="// SPACE-PC PHILOSOPHY" data-ar="// فلسفة سبيس-بي سي">// SPACE-PC PHILOSOPHY</p>
        </div>

        <div class="auth-side-image" role="img"
             aria-label="Custom PC build with components laid out"
             data-en-alt="Custom PC build with components laid out"
             data-ar-alt="تجميعة حاسوب مخصصة مع القطع المنظّمة"></div>
      </aside>

      <section class="auth-form-side">
        <div class="auth-card">
          <span class="eyebrow" data-en="// LOG IN" data-ar="// تسجيل الدخول">// LOG IN</span>
          <h1 data-en="Welcome back." data-ar="مرحباً بعودتك.">Welcome back.</h1>
          <p class="sub"
             data-en="Sign in to continue your PC building journey."
             data-ar="سجّل دخولك لمواصلة رحلتك في بناء الحاسوب.">
            Sign in to continue your PC building journey.
          </p>

          <div id="login-form">
            
            <div class="field">
              <label for="loginEmail" data-en="Email address" data-ar="البريد الإلكتروني">Email address</label>
              <asp:TextBox ID="loginEmail" runat="server" CssClass="input" TextMode="Email" ClientIDMode="Static" placeholder="you@example.com"></asp:TextBox>
              <span class="error-msg"
                    data-en="Please enter a valid email address."
                    data-ar="يرجى إدخال بريد إلكتروني صحيح.">
                Please enter a valid email address.
              </span>
            </div>

            <div class="field">
              <label for="loginPassword" data-en="Password" data-ar="كلمة المرور">Password</label>
              <div class="password-wrap">
                <asp:TextBox ID="loginPassword" runat="server" CssClass="input" TextMode="Password" ClientIDMode="Static" placeholder="••••••••"></asp:TextBox>
                <button type="button"
                        class="toggle-password"
                        data-target="loginPassword"
                        data-show="SHOW"
                        data-hide="HIDE"
                        aria-label="Toggle password visibility">SHOW</button>
              </div>
              <span class="error-msg"
                    data-en="Password must be at least 6 characters."
                    data-ar="كلمة المرور يجب أن تكون 6 أحرف على الأقل.">
                Password must be at least 6 characters.
              </span>
            </div>

            <div class="checkbox-row">
              <label class="checkbox">
                <asp:CheckBox ID="rememberMe" runat="server" ClientIDMode="Static" />
                <span data-en="Remember me" data-ar="تذكّرني">Remember me</span>
              </label>
              <a href="#"
                 style="color: var(--color-secondary); font-weight: 600; font-size: 0.9rem; border-bottom: 2px solid var(--color-secondary);"
                 data-en="Forgot password?"
                 data-ar="نسيت كلمة المرور؟">Forgot password?</a>
            </div>

            <asp:LinkButton ID="btnLogin" runat="server" CssClass="btn btn--primary btn--lg" OnClick="btnLogin_Click" data-en="Login →" data-ar="تسجيل الدخول →">
                Login →
            </asp:LinkButton>

            <asp:Label ID="lblMessage" runat="server" CssClass="success-msg" ClientIDMode="Static"></asp:Label>
          </div>

          <p class="auth-divider">
            <span data-en="Don't have an account?" data-ar="ليس لديك حساب؟">Don't have an account?</span>
            <a href="Signup.aspx" data-en="Sign up here." data-ar="أنشئ حساباً هنا.">Sign up here.</a>
          </p>
        </div>
      </section>
    </div>

    <script>
      (function loginPageEmbedded() {
        'use strict';
        const email = document.getElementById('loginEmail');
        if (email) email.focus();
        console.log('%cSpace-PC ✦ Login page loaded.', 'color:#ec4899; font-weight:700; font-family:monospace;');
      })();
    </script>
</asp:Content>
