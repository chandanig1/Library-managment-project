using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Liabrary_managment_system
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
                try
                {
                    using (SqlConnection con = new SqlConnection(cs))
                    {
                        using (SqlCommand cmd = new SqlCommand("lab", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@Action", "insrt");
                            cmd.Parameters.AddWithValue("@Firstname", TextBox1.Text);
                            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                            cmd.Parameters.AddWithValue("@Usertype", DropDownList1.SelectedValue.ToString());

                            con.Open();
                            int c = cmd.ExecuteNonQuery();

                            if (c > 0)
                            {                              
                            Response.Redirect("Admindashboard.aspx");
                            
                            }
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                            TextBox3.Text = "";
                            DropDownList1.ClearSelection();
                        }
                    }
                }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

            


        
    }

}

            
            

            
            
    
