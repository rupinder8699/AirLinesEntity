using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirLinesEntity
{
    public partial class AddPlane : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            Database.frmLogin obj = new Database.frmLogin();
            
            if (obj.addPlane(Convert.ToInt32(PlaneNo.Text.ToString()), PlaneName.Text.ToString(), Depature.Text.ToString(), destination.Text.ToString(), Convert.ToInt32(Price.Text.ToString()))) {
                rslt.InnerHtml = "Record Saved";

            }else{
                rslt.InnerHtml = "check theRecord";
            }


            PlaneNo.Text = "";
            PlaneName.Text = "";
            destination.Text = "";
            Depature.Text = "";
            Price.Text = "";
        }
    }
}