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
    public partial class Loginpage : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("lab", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "slct");
                cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                con.Open();
                SqlDataReader dr= cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        string usertype = dr["Usertype"].ToString();
                        Session["Id"] = dr["Id"].ToString();
                        Session["Firstname"] = dr["firstname"].ToString();
                        Session["Password"] = dr["Password"].ToString();
                        if(usertype=="User")
                        {
                            Response.Redirect("Dashboard.aspx");
                        }
                        
                        if(usertype=="Admin")
                        {
                            Response.Redirect("Admindashboard.aspx");
                        }
                        
                    }
                    
                }
                else
                {
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Failed');", true);
                    Response.Write("<script> alert('Login Failed');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}