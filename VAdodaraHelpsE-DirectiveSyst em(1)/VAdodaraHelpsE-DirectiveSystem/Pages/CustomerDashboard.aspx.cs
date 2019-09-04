using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data;
using System.Web.Configuration;

namespace VAdodaraHelpsE_DirectiveSystem
{
    public partial class CustomerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust"] != null)
            {
                string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection myconn = new SqlConnection(connectionstring);
                myconn.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = myconn;
                com.CommandText = "select * from customer where first_name = '" + Session["cust"] + "'";
                SqlDataReader dr;
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    string s = dr.GetValue(2).ToString() + " " + dr.GetValue(3).ToString();
                    Label1.Text = s;
                    string a = dr.GetValue(5).ToString();
                    lblEmail.Text = dr.GetValue(5).ToString();
                    lblAddress.Text = dr.GetValue(7).ToString();
                    lblResidentalArea.Text = dr.GetValue(8).ToString();
                    lblContact.Text = dr.GetValue(10).ToString();
                }
                dr.Close();
            }
            else
            {
                Response.Redirect("Login_page.aspx");
            }
        }
    }
}
