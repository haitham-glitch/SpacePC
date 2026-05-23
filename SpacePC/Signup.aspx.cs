using System;
using System.Data.SqlClient;
using System.Configuration;

namespace SpacePC
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (signupPassword.Text != signupConfirmPassword.Text)
            {
                lblSignupMessage.Text = "كلمة المرور غير متطابقة!";
                return;
            }

            string email = signupEmail.Text;
            string password = signupPassword.Text;
            string fullName = email.Split('@')[0]; // نأخذ أول جزء من الإيميل كاسم

            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "INSERT INTO Users (FullName, Email, Password) VALUES (@FullName, @Email, @Password)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FullName", fullName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        Response.Redirect("login.aspx");
                    }
                    catch (Exception ex)
                    {
                        lblSignupMessage.Text = "حدث خطأ أثناء التسجيل: " + ex.Message;
                    }
                }
            }
        }
    }
}