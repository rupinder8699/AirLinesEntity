
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database;
namespace AirLinesEntity
{
    public partial class LoginPage : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
        



        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Database.frmLogin obj = new Database.frmLogin();
            int Rslt=obj.verify(UserName.Text.ToString(),Password.Text.ToString());
            if (Rslt == 1)
            {
                Response.Redirect("DashBoard.aspx");
            }
            else {
                rslt.InnerHtml = "Invalid User Name or Password";
                UserName.Text = "";
            }

        }
    }
}