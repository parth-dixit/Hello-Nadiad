using System;
using ProjectCE002;

using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
             [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static AjaxControlToolkit.Slide[] slidingAjex()
        {
            AjaxControlToolkit.Slide[] slides = new AjaxControlToolkit.Slide[4];
            slides[0] = new AjaxControlToolkit.Slide("/images/1.jpg", "ered", "nice images");
            slides[1] = new AjaxControlToolkit.Slide("/images/2.jpg", "dss", "nice images");
            slides[2] = new AjaxControlToolkit.Slide("/images/3.jpg", "ds", "nice images");
            slides[3] = new AjaxControlToolkit.Slide("/images/4.jpg", "ds", "nice images");
            //return default(AjaxControlToolkit.Slide[]);
            //return default(AjaxControlToolkit.Slide[]);
            return slides;

        }


        protected void log_in_Click(object sender, EventArgs e)
        {
            Session["area"] = DropDownList2.SelectedItem.ToString();
            Session["type"] = DropDownList1.SelectedItem.ToString();
            Response.Redirect("selected.aspx");
        }

        /* protected void btnLogin_Click(object sender, EventArgs e)
         {
             string qry = "Select User_Id from UserDB where Email='"+txtEmail.Text+"' and Password='"+ txtPassword.Text +"'";
             SqlDataReader s = ProjectClass.getRecords(qry);
             if (s.Read())
                 Response.Redirect("CreateUser.aspx");
         }*/
    }
}