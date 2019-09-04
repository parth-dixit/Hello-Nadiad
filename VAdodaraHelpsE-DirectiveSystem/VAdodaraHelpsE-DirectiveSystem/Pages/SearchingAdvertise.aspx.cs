using System;
using Project_SEM5;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class SearchingAdvertise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
                string s = "select * from User_Business";
            using (SqlDataReader dr = ProjectClass.getRecords(s))
            {
                Repeater1.DataSource = dr;
                Repeater1.DataBind();
            }
                  }
    }
}