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
    public partial class Personal_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            _ClientCookie["ClientName"] = txtName.Text;
            _ClientCookie["ClientSurname"] = txtLname.Text;
            _ClientCookie["ClientEmail"] = txtEmail.Text;
            _ClientCookie["ClientPhoneNum"] = txtNumber.Text;
            
            Response.Cookies.Add(_ClientCookie);


        }
        string connectStr = @"Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True";
        SqlConnection connect;
        SqlCommand command;
        SqlDataAdapter DA;
        SqlDataReader DR;

        HttpCookie _ClientCookie = new HttpCookie("ClientInfo");

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            

            connect = new SqlConnection(connectStr);
            connect.Open();

            string sql = $"INSERT INTO Client(firstName, lastName, emailAddress, cellphoneNumber) VALUES(@Fname, @Lname, @Email, @Cellphone)";
            command = new SqlCommand(sql, connect);
            
            command.Parameters.AddWithValue("@Fname", txtName.Text);
            command.Parameters.AddWithValue("@Lname", txtLname.Text);
            command.Parameters.AddWithValue("@Email", txtEmail.Text);
            command.Parameters.AddWithValue("@Cellphone", int.Parse(txtNumber.Text));
            
            command.ExecuteNonQuery();
            
            string mySQL = $"SELECT * FROM Client WHERE firstName LIKE '%" + _ClientCookie["ClientName"] + "%'";
            SqlCommand myCommand = new SqlCommand(mySQL, connect);

            

            using (SqlDataReader rd = myCommand.ExecuteReader())
            {
                while (rd.Read())
                {
                    _ClientCookie["ClientID"] = rd[0].ToString();

                }
            }
            connect.Close();

            Response.Cookies.Add(_ClientCookie);

            Response.Redirect("Accommodation.aspx");
        }
    }
}