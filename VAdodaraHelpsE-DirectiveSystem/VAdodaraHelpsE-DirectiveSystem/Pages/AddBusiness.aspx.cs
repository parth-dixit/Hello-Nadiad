using Project_SEM5;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class AddBusiness : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int id = 2;
            string qry = "INSERT INTO User_Business (User_Id, Business_Name,Business_Address,Business_Category,Business_Contact,Business_Area,Request_Status,Business_Email,Business_Description) VALUES (" + id + ",'" + txtName.Text + "','" + txtAdress.Text + "','" + ddlCategory.SelectedValue.ToString() + "','" + txtContact.Text + "','" + ddlArea.SelectedValue.ToString() +  "','Requesting','" + txtEmail.Text + "','" + txtDescription.Text + "')";
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
