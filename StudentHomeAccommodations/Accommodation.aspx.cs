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
    public partial class Accommodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DataTable DT = new DataTable();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("Select * from Accommodation", SQLConn);
            SQLAdapter.Fill(DT);

            GridView1.DataSource = DT;
            GridView1.DataBind();

            
            

            string mySQL = $"SELECT * FROM Accommodation WHERE accommodationName LIKE '%" + _AccommodationCookie["AccommodationName"] + "%'";
            SqlCommand myCommand = new SqlCommand(mySQL, SQLConn);

            SQLConn.Open();

            using (SqlDataReader rd = myCommand.ExecuteReader())
            {
                while (rd.Read())
                {
                    _AccommodationCookie["AccommodationID"] = rd[0].ToString();

                }
            }
        }
        SqlConnection SQLConn = new SqlConnection("Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True");
        
        SqlCommand command;
        HttpCookie _AccommodationCookie = new HttpCookie("AccommodationInfo");

        const double campusKey = 53000.00;

        const double lofts = 50000.00;
        const double sofia = 43000.00;
        const double Lavaria = 44000.00;
        const double lattitude = 34000.00;
        double Monthly, yearly;
        

        protected void btnReset_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment_Lease.aspx");
        }

        protected void btnProceedPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment_Lease.aspx");
        }

        protected void btnProceedMaintenance_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintenance_Repairs.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int count1 = 0, count2 = 0, count3 = 0, count4 = 0, count5 = 0;
            if (GridView1.SelectedRow.Cells[0].Text == "campusKey")
            {
                count1++;
                Monthly = campusKey / 10;
                yearly = campusKey;
                _AccommodationCookie["Count"] = count1.ToString();
            }
            else if (GridView1.SelectedRow.Cells[0].Text == "The Lofts")
            {
                count2++;
                Monthly = lofts / 10;
                yearly = lofts;
                _AccommodationCookie["Count"] = count2.ToString();
            }
            else if (GridView1.SelectedRow.Cells[0].Text == "Sofia")
            {
                count3++;
                Monthly = sofia / 10;
                yearly = sofia;
                _AccommodationCookie["Count"] = count3.ToString();
            }
            else if (GridView1.SelectedRow.Cells[0].Text == "Lattitude")
            {
                count4++;
                Monthly = lattitude / 10;
                yearly = lattitude;
                _AccommodationCookie["Count"] = count4.ToString();
            }
            else if (GridView1.SelectedRow.Cells[0].Text == "LaVaria")
            {
                count5++;
                Monthly = Lavaria / 10;
                yearly = Lavaria;
                _AccommodationCookie["Count"] = count4.ToString();
            }

            txtDisplay.Text = "Selected acommodation:+ " + '\n' +
                              GridView1.SelectedRow.Cells[0].Text + "\n\n" +
                              "Address: " + GridView1.SelectedRow.Cells[1].Text + " " +
                              GridView1.SelectedRow.Cells[1].Text + '\n' +
                              GridView1.SelectedRow.Cells[2].Text + '\n' +
                              GridView1.SelectedRow.Cells[3].Text + '\n' +
                              GridView1.SelectedRow.Cells[4].Text + "\n\n" +
                              "Annual Price: R" +yearly.ToString()+ "\n" + "Monthly: R" + Monthly.ToString();
            _AccommodationCookie["AccommodationName"] = GridView1.SelectedRow.Cells[0].Text;
            _AccommodationCookie["AccommodationPrice"] = yearly.ToString();
        }
    }
}