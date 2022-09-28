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
    public partial class Maintenance_Repairs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            description = txtDescription.Text;
            complaint = txtComplaint.Text;

            HttpCookie _ClientCookie = Request.Cookies["ClientID"];
            HttpCookie _AccommodationCookie = Request.Cookies["AccommodationID"];
        }
        string connectStr = @"Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True";
        SqlConnection connect;
        SqlCommand command;
        

        string maintenance_type,description,complaint, contractor;

        HttpCookie _ClientCookie = new HttpCookie("ClientInfo");
        HttpCookie _AccommodationCookie = new HttpCookie("AccommodationInfo");

        protected void btnDone_Click(object sender, EventArgs e)
        {
            connect = new SqlConnection(connectStr);
            connect.Open();

            string sql = $"INSERT INTO Maintenance_Repairs(accommodation_ID, client_ID, maintenanceType, contractorName, labourPrice) VALUES(@accommodation_ID, @client_ID, @maintenanceType, @contractorName, @labourPrice)";
            command = new SqlCommand(sql, connect);

            command.Parameters.AddWithValue("@accommodation_ID", _AccommodationCookie["AccommodationID"]);
            command.Parameters.AddWithValue("@client_ID", _ClientCookie["ClientID"]);
            command.Parameters.AddWithValue("@maintenanceType", maintenance_type);
            command.Parameters.AddWithValue("@contractorName", contractor);
            command.Parameters.AddWithValue("labourPrice", labour);

            command.ExecuteNonQuery();
        }

        double labour;
        protected void chkMaintenanceType_SelectedIndexChanged(object sender, EventArgs e)
        {
            int i = chkMaintenanceType.SelectedIndex;
            switch (i)
            {
                case 0:
                    maintenance_type = "Electrical";
                    contractor = "Will Elec Inc";
                    labour = 300.0;
                    break;
                case 1:
                    maintenance_type = "WIFI & Connectivity";
                    contractor = "Herotel";
                    labour = 100.0;
                    break;
                case 2:
                    maintenance_type = "Security";
                    contractor = "MooiRivier Security";
                    labour = 0.0;
                    break;
                case 3:
                    maintenance_type = "Doors&Cabinets";
                    contractor = "basic Maintainers";
                    labour = 300.0;
                    break;
                case 4:
                    maintenance_type = "Access (Keys, Remote & Fingerprint)";
                    contractor = "basic Maintainers";
                    labour = 150.0;
                    break;
            }
        }
    }
}