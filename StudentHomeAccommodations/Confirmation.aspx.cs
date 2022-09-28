using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentHomeAccommodations
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDetails.Text = "Congratulations! you have reached the final stage of the portal, you may proceed to view reports provided or log maintenance reports or close the portal if you are done.";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void btnMaintenance_Click(object sender, EventArgs e)
        {
            Response.Redirect("Maintenance_Repairs.aspx");
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            this.Response.Close();
        }
    }
}