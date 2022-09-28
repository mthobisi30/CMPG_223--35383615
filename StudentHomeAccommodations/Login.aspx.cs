using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace StudentHomeAccommodations
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connStr = @"Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True";
        public SqlConnection conn;
        public SqlDataAdapter initialAdapter;
        SqlCommand command;
        public HttpCookie ClientCookie = new HttpCookie("ClientsRegister");

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            HttpCookie ClientCookie = Request.Cookies["ClientsRegister"];
            if (ClientCookie != null)
            {
                string mySQL = $"SELECT * FROM Register WHERE Student_ID LIKE '%" + ClientCookie["StudentNum"] + "%'";
                SqlCommand myCommand = new SqlCommand(mySQL, conn);

                conn.Open();

                using (SqlDataReader rd = myCommand.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        if (rd[0].ToString() == ClientCookie["ClientUserName"] && txtPassword.Text == ClientCookie["ClientPassword"])
                        {
                            Response.Redirect("Accommodation.aspx");

                        }
                    }
                }

                string sql = $"INSERT INTO Login(UserName, Student_ID, password) VALUES(@UserName, @password)";
                command = new SqlCommand(sql, conn);
                command.Parameters.AddWithValue("@UserName", txtUserName.Text);
                command.Parameters.AddWithValue("@password", txtPassword.Text);
                command.ExecuteNonQuery();
                
                conn.Close();
            }
            else
            {
                txtUserName.Focus();
            }

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}