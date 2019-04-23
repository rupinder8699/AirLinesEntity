using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace AirLinesEntity
{
    public partial class CancelTicket : System.Web.UI.Page
    {
        Database.frmLogin obj = new Database.frmLogin();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"]!=null) {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                obj.cancelBooking(id);
                rslt.InnerHtml = "Your Booking  is Cancelled";

            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String Data = "<table><tr><td>Plane No</td><td>Plane Name</td><td>Departure</td><td>Destination</td><td>Price </td><td>Customer Name</td><td>No of Ticket</td><td>Date</td><td>Total Price</td><td>Cancel</td></tr>";
            DataTable tbRecord = new DataTable();
            

            tbRecord = obj.cancelTicket(Convert.ToInt32(TicketNo.Text.ToString()));
            if (tbRecord.Rows.Count > 0)
            {
                for (int x = 0; x < tbRecord.Rows.Count; x++)
                {
                    Data = Data + "<tr><td>" + tbRecord.Rows[x]["PlaneNo"] + "</td><td>" + tbRecord.Rows[x]["PlaneName"] + "</td><td>" + tbRecord.Rows[x]["Departure"] + "</td><td>" + tbRecord.Rows[x]["Destination"] + "</td><td>" + tbRecord.Rows[x]["Price"] + "</td><td>" + tbRecord.Rows[x]["CustomerName"] + "</td><td>" + tbRecord.Rows[x]["Tickets"] + "</td><td>" + tbRecord.Rows[x]["Sdate"] + "</td><td>" + tbRecord.Rows[x]["TotalPrice"] + "</td><td><a href='CancelTicket.aspx?id=" + tbRecord.Rows[x]["id"] + "' class='btn btn-primary'>Cancel</a></td></tr>";
                }

                PlaneRecord.InnerHtml = Data;
            }
            else
            {
                PlaneRecord.InnerHtml = "Record Not Found";
            }


        }
    }
}