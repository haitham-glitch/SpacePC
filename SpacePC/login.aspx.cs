using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;

namespace SpacePC
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserInfo"] != null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = loginEmail.Text;
            string password = loginPassword.Text;

            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT FullName FROM Users WHERE Email=@Email AND Password=@Password";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    conn.Open();
                    object result = cmd.ExecuteScalar();

                    if (result != null)
                    {
                        // إنشاء الكوكي (Cookie) لحفظ حالة الدخول
                        HttpCookie userCookie = new HttpCookie("UserInfo");
                        userCookie["Email"] = email;
                        userCookie["Name"] = result.ToString();

                        if (rememberMe.Checked)
                        {
                            userCookie.Expires = DateTime.Now.AddDays(30);
                        }

                        Response.Cookies.Add(userCookie);
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "البريد الإلكتروني أو كلمة المرور خاطئة.";
                        lblMessage.Style["display"] = "block";
                        lblMessage.Style["background"] = "red";
                    }
                }
            }
        }
    }
}