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
    public partial class selected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["area"] != null && Session["type"]!=null)
            {
                string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
                SqlConnection myconn = new SqlConnection(connectionstring);
                myconn.Open();
                SqlCommand com = new SqlCommand();
                com.Connection = myconn;
                string sess = Session["area"].ToString();
                com.CommandText = "select bussiness_name,address,rating from customer where area = '" + sess + "' and type = '" + Session["type"] + "' order by rating desc";
                SqlDataReader rdr;
                rdr = com.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                myconn.Close();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["ads"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("full_ad.aspx");
        }
    }
}