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
    public partial class Registrationpage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string ddl = DropDownList1.SelectedValue;
            string pass = TextBox5.Text.Trim();
            string conpass = TextBox6.Text.Trim();
            if(conpass!=pass)
            {
                Response.Write("Your Password not matched");
            }
            string gender = "";
            if (RadioButton4.Checked)
            {
                gender=RadioButton4.Text;
            }
            else if (RadioButton5.Checked)
            {
                gender=RadioButton5.Text;
            }
            else if (RadioButton6.Checked)
            {
                gender = RadioButton6.Text;
            }
           
            try
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("lab", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "insert");
                cmd.Parameters.AddWithValue("@Firstname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Lastname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Mobile", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Gender", gender);
                cmd.Parameters.AddWithValue("@Usertype", ddl);
                cmd.Parameters.AddWithValue("@Address", TextBox7.Text);
                con.Open();
                int i= cmd.ExecuteNonQuery();
                con.Close();
                if(i>0)
                {
                    Response.Write("Data Inserted");
                }
                else
                {
                    Response.Write("Failed");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());  
            }
            
        }
    }
}