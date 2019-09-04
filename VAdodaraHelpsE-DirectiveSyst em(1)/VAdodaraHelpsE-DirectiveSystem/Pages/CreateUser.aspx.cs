using System;
using ProjectCE002;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Data;
using System.Web.Configuration;
using System.Diagnostics;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

protected void Button1_Click1(object sender, EventArgs e)
        {
            if(txtPassword.Text != txtcnfpass.Text)
            {
                Response.Redirect("CreateUser.aspx");
            }
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring2"].ConnectionString;
            SqlConnection myconn1 = new SqlConnection(connectionstring);
            string insertsql = " ";
            insertsql += "insert into  UserDB (";
            insertsql += "first_name,last_name,password,resident_address,pincode,email,contact_no,gender)";
            insertsql += " values ('" + txtFiistName.Text + "', '" + txtLastName.Text + "','" + txtPassword.Text + "','" + txtAddress.Text + "','" + txtPincode.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','Male')";
            Debug.WriteLine(insertsql);
            SqlCommand com1 = new SqlCommand(insertsql, myconn1);
            try
            {
                myconn1.Open();
                com1.ExecuteNonQuery();
            }
            catch {
                Debug.WriteLine(insertsql);
            }
            myconn1.Close();
            Response.Redirect("Index.aspx");
        }

      
    }
}