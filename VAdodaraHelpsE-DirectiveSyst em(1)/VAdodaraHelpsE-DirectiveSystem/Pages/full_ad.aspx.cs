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
    public partial class full_ad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ads"] != null)
            {
                string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection myconn = new SqlConnection(connectionstring);
                myconn.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = myconn;
                com.CommandText = "select first_name,last_name,email,address,area,pincode,contact_no,bussiness_name,rating,total from customer where bussiness_name = '" + Session["ads"] + "'";
                SqlDataReader rdr;
                rdr = com.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                rdr.Close();
                myconn.Close();
            }
            else
            {
                Response.Redirect("selected.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string revby = RadioButtonList1.SelectedItem.ToString();
            int revby1 = Int32.Parse(revby);
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connectionstring);
            myconn.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = myconn;
            com.CommandText = "select * from customer where bussiness_name = '" + Session["ads"] + "'";
            SqlDataReader rdr;
            rdr = com.ExecuteReader();

            rdr.Read();
            string rew = rdr["rating"].ToString();
            string tot = rdr["total"].ToString();
            int rev = Int32.Parse(rew);
            int total = Int32.Parse(tot);
            rev = rev * total;
            total++;
            rev = rev + revby1;
            rev = rev / total;
            rdr.Close();
            myconn.Close();
            SqlConnection myconn1 = new SqlConnection(connectionstring);
            string updatesql = " ";
            updatesql += "update customer set ";
            updatesql += "rating = " + rev.ToString() + " , total =  " + total.ToString(); ;
            updatesql += " where bussiness_name = '" + Session["ads"] + "'";
            SqlCommand com1 = new SqlCommand(updatesql, myconn1);
            try
            {
                myconn1.Open();
                com1.ExecuteNonQuery();
                myconn1.Close();
            }
            catch { }
            myconn1.Close();

        }
    }
}