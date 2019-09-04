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
    public partial class Login_page : System.Web.UI.Page
    {
        string mail = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(mail);
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connectionstring);
            myconn.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = myconn;
            com.CommandText = "select * from UserDB";
            SqlDataReader dr;
            dr = com.ExecuteReader();
            while (dr.Read())
            {
                mail = dr["email"].ToString();
                if (dr["email"].ToString() == txtEmail.Text && dr["password"].ToString() == txtPassword.Text)
                {
                    if (DropDownList1.SelectedItem.Text == "Admin")
                    {

                    }
                    else if (DropDownList1.SelectedItem.Text == "Customer")
                    {
                        Session["cust"] = dr["first_name"].ToString();
                        Response.Redirect("CustomerDashboard.aspx");
                    }
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connectionstring);
            myconn.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = myconn;
            com.CommandText = "select * from UserDB";
            SqlDataReader dr;
            dr = com.ExecuteReader();
            while(dr.Read())
            {
                mail = dr["email"].ToString();
                if (dr["email"].ToString() == txtEmail.Text && dr["password"].ToString() == txtPassword.Text)
                {
                    if (DropDownList1.SelectedItem.Text == "Admin")
                    {

                    }
                    else if (DropDownList1.SelectedItem.Text == "Customer")
                    {
                        Session["cust"] = dr["first_name"].ToString();
                        Response.Redirect("CustomerDashboard.aspx");
                    }
                }
            }
            //Response.Redirect("Login_page.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}