using System;
using Project_SEM5;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
protected void Button1_Click1(object sender, EventArgs e)
        {
           
              string  qry = "INSERT INTO UserDB (Password, First_Name,Last_Name,Date_Of_Birth,Email,Gender,Residental_Address,Type,Pincode,User_Contact ) VALUES ('" + txtPassword.Text + "','" + txtFiistName.Text + "','" + txtLastName.Text + "','" + txtDOB.Text + "','" + txtEmail.Text + "','" + rbtnGender.SelectedValue.ToString() + "','" + txtAddress.Text + "','Advertiser',"+ txtPincode.Text + "," + txtContact.Text + ")";
                int S = ProjectClass.setrecords(qry);
                if (S == 1)
                    Label1.Text = "Success";
                else
                {
                    Label1.Text = "Fail";
                }
                  }

      
    }
}