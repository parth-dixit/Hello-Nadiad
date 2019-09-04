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
    public partial class DeleteBusiness : System.Web.UI.Page
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
                com.CommandText = "select * customer";
                SqlDataReader dr;
                dr = com.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                myconn.Close();

                string connectionstring1 = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection myconn1 = new SqlConnection(connectionstring1);
                myconn1.Open();
                Label2.Text = "Request Pending";
                SqlCommand com1 = new SqlCommand();
                com1.Connection = myconn;
                com1.CommandText = "select * Ad_request";
                SqlDataReader rdr;
                rdr = com.ExecuteReader();
                GridView2.DataSource = rdr;
                GridView2.DataBind();
                rdr.Close();
                myconn1.Close();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connectionstring2 = WebConfigurationManager.ConnectionStrings["connectionstring2"].ConnectionString;
            SqlConnection myconn2 = new SqlConnection(connectionstring2);
            string deletesql = "delete from customer where first_name = '" + GridView1.SelectedRow.Cells[1].Text + "'";
            SqlCommand com1 = new SqlCommand(deletesql, myconn2);
            try
            {
                myconn2.Open();
                com1.ExecuteNonQuery();
                myconn2.Close();
            }
            catch { }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connectionstring3 = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn3 = new SqlConnection(connectionstring3);
            string deletesql = "delete from Ad_request where first_name = '" + GridView1.SelectedRow.Cells[1].Text + "'";
            SqlCommand com1 = new SqlCommand(deletesql, myconn3);
            try
            {
                myconn3.Open();
                com1.ExecuteNonQuery();
                myconn3.Close();
            }
            catch { }
        }
    }
}