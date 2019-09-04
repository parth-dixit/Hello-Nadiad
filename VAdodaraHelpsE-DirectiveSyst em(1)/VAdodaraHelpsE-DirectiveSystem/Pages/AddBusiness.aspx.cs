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
    public partial class AddBusiness : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["cust"] == null)
              Response.Redirect("Index.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
             if(Session["cust"] != null)
            {
            string connectionstring1 = WebConfigurationManager.ConnectionStrings["connectionstring2"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connectionstring1);
            myconn.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = myconn;
            com.CommandText = "select * from customer where first_name = '" + Session["cust"] + "'";
            SqlDataReader rdr;
            rdr = com.ExecuteReader();
            rdr.Read();
            string fir = rdr["first_name"].ToString();
            string las = rdr["last_name"].ToString();
            string mail = rdr["email"].ToString();
            string con_no = rdr["contact_no"].ToString();
            string pass = rdr["password"].ToString();
            myconn.Close();


            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn1 = new SqlConnection(connectionstring);
            string insertsql = " ";
            insertsql += "insert into Ad_request (";
            insertsql += "first_name,last_name,email,contact_no,password,bussiness_name,address,pincode,area,type,rating,total)";
            insertsql += " values ('" + fir + "', '" + las +"','" + mail + "','" + con_no + "','" + pass + "','" + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','5','1')";
            SqlCommand com1 = new SqlCommand(insertsql, myconn1);
            try
            {
                myconn1.Open();
                com1.ExecuteNonQuery();
            }
            catch { }
            myconn1.Close();
           Response.Redirect("CustomerDashBoard.aspx");

             }
             else
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}