using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace AirLinesEntity
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Database.frmLogin obj = new Database.frmLogin();
            DataTable tbl = new DataTable();

            if (Request.QueryString["id"]!=null) {
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
               tbl= obj.BookPlane(id);
                if (tbl.Rows.Count>0) {
                    PlaneNo.Text = tbl.Rows[0]["PlaneNo"].ToString();
                    PlaneName.Text= tbl.Rows[0]["PlaneName"].ToString();
                    Departure.Text= tbl.Rows[0]["Departure"].ToString();
                    Destination.Text= tbl.Rows[0]["Destination"].ToString();
                    Price.Text= tbl.Rows[0]["Price"].ToString();


                }


            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Database.frmLogin obj = new Database.frmLogin();

            int total = Convert.ToInt32(Price.Text.ToString()) * Convert.ToInt32(Tickets.Text.ToString());

            int y=obj.Booking(Convert.ToInt32(PlaneNo.Text.ToString()), PlaneName.Text.ToString(), Departure.Text.ToString(), Destination.Text.ToString(), Convert.ToInt32(Price.Text.ToString()), CustomerName.Text.ToString(), Convert.ToInt32(Tickets.Text.ToString()),Sdate.Text.ToString(),total);

            rslt.InnerHtml = "Ticket No is = " + y;

        }
    }
}