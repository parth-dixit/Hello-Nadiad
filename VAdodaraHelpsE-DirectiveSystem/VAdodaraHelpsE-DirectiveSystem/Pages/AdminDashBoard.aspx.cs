using Project_SEM5;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class AdminDeshBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnAccept.Visible = true;
            btnReject.Visible = true;
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {
          string  qry = "UPDATE User_Business SET Request_Status='Granted' WHERE BId=" + GridView1.SelectedRow.Cells[0].Text;
            ProjectClass.setrecords(qry);
            btnReject.Visible = false;
            btnAccept.Visible = false;
            GridView1.DataBind();
        }

        protected void btnReject_Click(object sender, EventArgs e)
        {
            string qry = "UPDATE User_Business SET Request_Status='Cancel' WHERE BId=" + GridView1.SelectedRow.Cells[0].Text;
            ProjectClass.setrecords(qry);
            btnReject.Visible = false;
            btnAccept.Visible = false;
            GridView1.DataBind();
        }
    }
}