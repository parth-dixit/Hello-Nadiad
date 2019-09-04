using System;
using System.Collections.Generic;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProjectCE002
{
    public class ProjectClass
    {
        static SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ProjectDataConnection"].ConnectionString.ToString());

        public static SqlDataReader getRecords(String qry)
        {
             SqlCommand cmd = new SqlCommand(qry, conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public static int setrecords(String qry)
        {
            SqlCommand cmd = new SqlCommand(qry, conn);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();
            return i;

        }
    }
}