using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class Log_Out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["cust"] = null;
            Session["ads"] = null;
            Session.Contents.RemoveAll();
            Response.Redirect("Index.aspx");
        }
    }
}