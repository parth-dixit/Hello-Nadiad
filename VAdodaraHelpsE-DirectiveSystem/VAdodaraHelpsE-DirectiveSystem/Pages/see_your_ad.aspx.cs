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

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class see_your_ad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust"] != null)
            {
                Label1.Text = "Accepted Request";
                string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring2"].ConnectionString;
                SqlConnection myconn = new SqlConnection(connectionstring);
                myconn.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = myconn;
                Response.Write(Session["cust"].ToString());
            com.CommandText = "select * from customer where first_name = '" + Session["cust"] + "'";
                SqlDataReader dr;
               // dr = com.ExecuteReader();
                //GridView1.DataSource = dr;
                //GridView1.DataBind();
               // dr.Close();
                myconn.Close();

                string connectionstring1 = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection myconn1 = new SqlConnection(connectionstring1);
                myconn1.Open();
                Label2.Text = "Request Pending";
                SqlCommand com1 = new SqlCommand();
                com1.Connection = myconn;
            com1.CommandText = "select * from Ad_request where first_name = '" + Session["cust"] + "'";
                SqlDataReader rdr;
                //rdr = com1.ExecuteReader();
               // GridView2.DataSource = rdr;
               // GridView2.DataBind();
               // rdr.Close();
                myconn.Close();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}