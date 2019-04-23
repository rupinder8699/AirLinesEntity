using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace AirLinesEntity
{
    public partial class ViewPlane : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String Data = "<table><tr><td>Plane No</td><td>Plane Name</td><td>Departure</td><td>Destination</td><td>Price </td><td>Booking</td></tr>";
            DataTable tbRecord = new DataTable();
            Database.frmLogin obj = new Database.frmLogin();
            tbRecord = obj.ViewSearchPlane(Departure.Text.ToString(), Destination.Text.ToString());
            if (tbRecord.Rows.Count > 0)
            {
                for (int x=0;x<tbRecord.Rows.Count;x++) {
                    Data = Data + "<tr><td>"+tbRecord.Rows[x]["PlaneNo"]+ "</td><td>" + tbRecord.Rows[x]["PlaneName"] + "</td><td>" + tbRecord.Rows[x]["Departure"] + "</td><td>" + tbRecord.Rows[x]["Destination"] + "</td><td>" + tbRecord.Rows[x]["Price"] + "</td><td><a href='Booking.aspx?id="+tbRecord.Rows[x]["id"]+"' class='btn btn-primary'>Booking</a></td></tr>";
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