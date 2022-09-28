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
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string connectStr = @"Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True";
        SqlConnection connect;
        SqlCommand command;
        

        protected void ddlReports_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = ddlReports.SelectedIndex;

            switch (i)
            {
                case 0:
                    SqlCommand command = new SqlCommand("Select AccommodationName from Accommodations", connect);
                    connect.Open();
                    txtReport.Text = "Accommodation Summary Report " + "\n\n" + "Accommodation Names: " + '\n' + command.ExecuteScalar().ToString();
                    connect.Close();
        
                    break;
                case 1:
                    SqlCommand comm = new SqlCommand("Select COUNT(client_ID) from Client", connect);
                    connect.Open();
                    txtReport.Text = "Clients Report" + "\n\n" + "Number of Clients on the system:" + comm.ExecuteScalar().ToString();
                    connect.Close();
                    break;
                case 3:
                    SqlCommand cm = new SqlCommand("Select * from Payment", connect);
                    connect.Open();
                    txtReport.Text = "Transactions Report" + "\n\n"  + cm.ExecuteScalar().ToString();
                    connect.Close();
                    break;
                case 4:
                    SqlCommand com = new SqlCommand("Select * from Maintenance_Repairs", connect);
                    connect.Open();
                    txtReport.Text = "Maintenance Report" + "\n\n" + com.ExecuteScalar().ToString();
                    connect.Close();
                    break;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtReport.Text = "";
            ddlReports.ClearSelection();
        }

        protected void btnCLose_Click(object sender, EventArgs e)
        {
            this.Response.Close();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintenance_Repairs.aspx");
        }
    }
}