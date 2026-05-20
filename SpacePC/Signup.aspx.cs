using System;
using System.Data.SqlClient;

namespace SpacePC
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // 1. استقبال البيانات من حقول الإدخال
            string email = signupEmail.Text.Trim();
            string password = signupPassword.Text;
            string confirmPassword = signupConfirmPassword.Text;

            // التحقق من تعبئة الخانات ومن تطابق كلمتي المرور
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                lblSignupMessage.Text = "Please fill in all fields.";
                return;
            }

            if (password != confirmPassword)
            {
                lblSignupMessage.Text = "Passwords do not match!";
                return;
            }

            // 2. نص الاتصال بقاعدة البيانات المحلية المحلية داخل مجلد App_Data
            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SpacePC_DB.mdf;Integrated Security=True";

            // 3. كتابة أمر الـ CRUD (Insertion) لإدخال البيانات
            string query = "INSERT INTO Users (Email, Password) VALUES (@Email, @Password)";

            try
            {
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password); // حفظ الباسوورد بشكل مباشر لتسهيل متطلبات الواجب الجامعي

                        conn.Open();
                        cmd.ExecuteNonQuery(); // تنفيذ أمر الحفظ في الجدول
                        conn.Close();
                    }
                }

                // بعد نجاح عملية التسجيل، نوجهه لصفحة تسجيل الدخول عشان يجرب الحساب الجديد
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                lblSignupMessage.Text = "Error during registration: " + ex.Message;
            }
        }
    }
}