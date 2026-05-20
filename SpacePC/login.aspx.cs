using System;
using System.Data.SqlClient;
using System.Web;

namespace SpacePC
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // هنا نقدر نقرأ الـ Cookie إذا كان المستخدم مسجل دخول من قبل
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // 1. استقبال البيانات من الفورم
            string email = loginEmail.Text;
            string password = loginPassword.Text;

            // 2. سطر الاتصال بقاعدة البيانات اللي أنشأناها في مجلد App_Data
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SpacePC_DB.mdf;Integrated Security=True";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                // 3. عملية الـ CRUD (Retrieving/Searching) - نبحث عن المستخدم في الجدول
                string query = "SELECT Id FROM Users WHERE Email = @Email AND Password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    conn.Open();
                    object result = cmd.ExecuteScalar();

                    if (result != null) // إذا لقينا المستخدم في الداتا بيس
                    {
                        // 4. استخدام الـ Sessions لحفظ حالة تسجيل الدخول
                        Session["UserEmail"] = email;

                        // 5. استخدام الـ Cookies إذا حط صح على "تذكرني"
                        if (rememberMe.Checked)
                        {
                            HttpCookie userCookie = new HttpCookie("SpacePC_User");
                            userCookie.Values["Email"] = email;
                            userCookie.Expires = DateTime.Now.AddDays(30); // الكوكي يجلس 30 يوم
                            Response.Cookies.Add(userCookie);
                        }

                        // توجيه المستخدم للصفحة الرئيسية بعد نجاح الدخول
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        // إذا الإيميل أو الباسوورد غلط
                        lblMessage.Text = "Invalid email or password.";
                        lblMessage.Style["display"] = "block";
                        lblMessage.Style["background"] = "red"; // نخليه أحمر عشان التنبيه
                    }
                }
            }
        }
    }
}