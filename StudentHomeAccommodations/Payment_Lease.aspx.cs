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
    public partial class Payment_Lease : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connStr = @"Data Source=.;Initial Catalog=dbStudentHome;Integrated Security=True";
        SqlConnection conn;
        SqlDataAdapter initialAdapter;
        SqlCommand command;
        HttpCookie _AccommodationCookie = new HttpCookie("AccommodationInfo");
        HttpCookie _ClientCookie = new HttpCookie("ClientInfo");

        string paymentType,client;
        decimal Amount;
        string payRef;
        protected void btnDone_Click(object sender, EventArgs e)
        {
            Random rand = new Random();
            int payrefRand = rand.Next(1000, 2000);
             Amount = decimal.Parse(txtAmount.Text);
             paymentType = ddlPayment.SelectedValue;
             HttpCookie _AccommodationCookie = Request.Cookies["AccommodationInfo"];
            HttpCookie _ClientCookie = Request.Cookies["ClientID"];
            client = _ClientCookie["ClientID"];
            payRef = _AccommodationCookie["AccommodationID"] + paymentType+ payrefRand.ToString();

           conn.Open();

            string sql = $"INSERT Payment(accommodation_ID, paymentReference, amountPaid, paymentType, client_ID) VALUES(@accommodation_ID,@paymentReference, @amountPaid, @paymentType, @client_ID)";
            command = new SqlCommand(sql, conn);
            command.Parameters.AddWithValue("@amountPaid", Amount);
            command.Parameters.AddWithValue("@accommodation_ID", _AccommodationCookie["AccommodationID"]);
            command.Parameters.AddWithValue("@paymentType", paymentType);
            command.Parameters.AddWithValue("@paymentReference", payRef);
            command.Parameters.AddWithValue("@client_ID", client);
            command.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Confirmation.aspx");
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {

            string filename = "https://capetownproperty.blaauwberg.net/forms/lease_agreement_contract.pdf" + "lease_agreement_contract.pdf";
            string path = MapPath(filename);
            byte[] bts = System.IO.File.ReadAllBytes(path);
            Response.Clear();
            Response.ClearHeaders();
            Response.AddHeader("Content-Type", "Application/octet-stream");
            Response.AddHeader("Content-Length", bts.Length.ToString());
            Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
            Response.BinaryWrite(bts);
            Response.Flush();
            Response.End();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            
                if (this.flLeaseUpload.HasFile)
                {
                    this.flLeaseUpload.SaveAs("c:\\" + this.flLeaseUpload.FileName);
                }
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Accommodation.aspx");
        }
    }
}