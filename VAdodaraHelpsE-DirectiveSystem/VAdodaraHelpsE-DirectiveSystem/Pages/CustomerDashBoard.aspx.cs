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
    public partial class CustomerDashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                String qry;
                if (!IsPostBack)
                {
                    if (Session["uid"].ToString() == "")
                        Response.Redirect("Index.aspx");
                    else
                    {
                        qry = "select * from UserDB where User_Id='" + Session["uid"].ToString() + "'";
                        SqlDataReader dr = ProjectClass.getRecords(qry);
                        if (dr.Read())
                        {
                            string s= dr.GetValue(2).ToString() + " " + dr.GetValue(3).ToString();
                            lblName.Text = "Hello";
                            string a= dr.GetValue(5).ToString();
                            lblEmail.Text = dr.GetValue(5).ToString();
                            lblAddress.Text = dr.GetValue(7).ToString();
                            lblResidentalArea.Text = dr.GetValue(8).ToString();
                            lblContact.Text = dr.GetValue(10).ToString();
                        }
                        dr.Close();
                    }
                }
            }
            catch { }
            finally { }
        }
    }
}