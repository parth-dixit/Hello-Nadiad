using Project_SEM5;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string qry = "Select * from UserDB where Email='" + txtEmail.Text + "' and Password='" + txtPassword.Text + "'";
            SqlDataReader s = ProjectClass.getRecords(qry);
            if (s.Read())
            {
                Session["uid"] = s.GetValue(0).ToString();
                if (s.GetValue(8).ToString() == "Admin")
                    Response.Redirect("AdminDashBoard.aspx");
                else
                    Response.Redirect("CustomerDashBoard.aspx");
            }
            else
                Label1.Text = "Enter Proper Data";
        }

        protected void btnSingup_Click(object sender, EventArgs e)
        {
            
        }

        protected void singup_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateUser.aspx");
        }
    }
}