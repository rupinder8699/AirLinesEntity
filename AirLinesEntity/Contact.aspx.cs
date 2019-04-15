using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirLinesEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Database.frmLogin obj = new Database.frmLogin();
            obj.sendMsg(Name.Text.ToString(), Email.Text.ToString(), Msg.Text.ToString());
            rslt.InnerHtml = "Thanks for Contact Us we will give feed Back ";

            Name.Text = "";
            Email.Text = "";
            Msg.Text = "";
        }
    }
}