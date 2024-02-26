using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Liabrary_managment_system
{
    public partial class Addstudent : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("adstudent", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "insert");
                cmd.Parameters.AddWithValue("@Studentname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Enrolment", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Department", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Stdsemester", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Stdcontact", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Stdemail", TextBox6.Text);
                con.Open();
                int a=cmd.ExecuteNonQuery();
                con.Close();
                if(a<0)
                {
                    Response.Write("Data Inserted");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
}