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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connectStr = @"Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True";
        SqlConnection connect;
        SqlCommand command;
        
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            HttpCookie ClientCookie = new HttpCookie("ClientsRegister");
            ClientCookie["ClientName"] = txtUserName.Text;
            ClientCookie["ClientStudentNum"] = txtStudentNum.Text;
            ClientCookie["ClientPassword"] = txtPassword.Text;

            connect = new SqlConnection(connectStr);
            connect.Open();

            string sql = $"INSERT INTO Register(UserName, Student_ID, password) VALUES(@UserName,@Student_ID, @password)";
            command = new SqlCommand(sql, connect);
            command.Parameters.AddWithValue("@UserName", txtUserName.Text);
            command.Parameters.AddWithValue("@Student_ID", txtStudentNum.Text);
            command.Parameters.AddWithValue("@password", txtPassword.Text);
            command.ExecuteNonQuery();
            connect.Close();

            if (ClientCookie["ClientName"] != null && ClientCookie["ClientPassword"] != null )
            {
                Response.Redirect("Personal_Information.aspx");

            }
            else
            {
                Response.Write("<script>alert('Exception: ')</script>");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}