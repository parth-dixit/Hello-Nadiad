﻿using System;
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
using System.Diagnostics;

namespace VAdodaraHelpsE_DirectiveSystem.Pages
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connectionstring);
            myconn.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = myconn;
            com.CommandText = "select * from temp";
            SqlDataReader rdr;
            rdr = com.ExecuteReader();
            //GridView1.DataSource = rdr;
            //GridView1.DataBind();
            rdr.Close();
            myconn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string connectionstring = WebConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connectionstring);
            myconn.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = myconn;
            string txt = "select * from Ad_request where bussiness_name = '" + GridView1.SelectedRow.Cells[8].Text + "'";
            Debug.WriteLine("select * from Ad_request where bussiness_name = '" + GridView1.SelectedRow.Cells[8].Text + "'");
            com.CommandText = txt;
            SqlDataReader rdr;
            rdr = com.ExecuteReader();
            rdr.Read();
            string temp = rdr["first_name"].ToString();
            string temp1 = rdr["last_name"].ToString();
            string temp2 = rdr["email"].ToString();
            string temp3 = rdr["address"].ToString();
            string temp4 = rdr["pincode"].ToString();
            string temp5 = rdr["contact_no"].ToString();
            string temp6 = rdr["bussiness_name"].ToString();
            string temp7 = rdr["password"].ToString();
            string temp8 = rdr["type"].ToString();
            rdr.Close();
            myconn.Close();

            string connectionstring2 = WebConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString;
            SqlConnection myconn1 = new SqlConnection(connectionstring2);
            string insertsql = " ";
            insertsql += "insert into customer (first_name,last_name,email,address,pincode,contact_no,bussiness_name,request_status,password,type)";
            insertsql += " values ('" + temp + "','" + temp1 + "','" + temp2 + "','" + temp3 + "','" + temp4 + "','" + temp5 + "','" + temp6 + "','clear','" + temp7 + "','" + temp8 + "')";
            SqlCommand com1 = new SqlCommand(insertsql, myconn1);
            try
            {
                myconn1.Open();
                com1.ExecuteNonQuery();
                myconn1.Close();
            }
            catch { Response.Write("Exception"); }

            string connectionstring3 = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myconn2 = new SqlConnection(connectionstring2);
            string deletesql = "delete from Ad_request where bussiness_name = '" + GridView1.SelectedRow.Cells[8].Text + "'";
            SqlCommand com2 = new SqlCommand(deletesql, myconn1);
            try
            {
                myconn1.Open();
                com2.ExecuteNonQuery();
                myconn1.Close();
            }
            catch { Response.Write("Exception"); }
        }
    }
}