using System;
using System.Web;

namespace SpacePC
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // فحص الكوكي: هل المستخدم مسجل دخول؟
                if (Request.Cookies["UserInfo"] != null)
                {
                    // إخفاء أزرار الزوار وإظهار أزرار المستخدم
                    guestNav.Visible = false;
                    userNav.Visible = true;

                    // سحب اسم المستخدم من الكوكي وعرضه
                    lblUserName.Text = Request.Cookies["UserInfo"]["Name"];
                }
                else
                {
                    // إذا مو مسجل، نعكس العملية
                    guestNav.Visible = true;
                    userNav.Visible = false;
                }
            }
        }

        // كود زر تسجيل الخروج
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // تدمير الكوكي
            if (Request.Cookies["UserInfo"] != null)
            {
                HttpCookie userCookie = new HttpCookie("UserInfo");
                userCookie.Expires = DateTime.Now.AddDays(-1); // نرجعه يوم ورا عشان ينحذف
                Response.Cookies.Add(userCookie);
            }

            // تحويل المستخدم للصفحة الرئيسية
            Response.Redirect("Default.aspx");
        }
    }
}