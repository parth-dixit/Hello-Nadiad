using Project_SEM5;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class UpdateBusinessInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String qry = "SELECT * FROM User_Business WHERE BId=" + Session["Bid"].ToString();
            try
            {
                SqlDataReader dr = ProjectClass.getRecords(qry);
                if (dr.Read())
                {
                    txtName.Text = dr.GetValue(2).ToString();
                    txtAdress.Text = dr.GetValue(3).ToString();
                    ddlCategory.SelectedItem.Equals(dr.GetValue(4).ToString());
                    txtContact.Text = dr.GetValue(5).ToString();
                    ddlArea.SelectedItem.Equals(dr.GetValue(6).ToString());
                    txtEmail.Text = dr.GetValue(7).ToString();
                    txtDescription.Text = dr.GetValue(8).ToString();

                }
                dr.Close();
            }
            catch { }
        }
    }
}