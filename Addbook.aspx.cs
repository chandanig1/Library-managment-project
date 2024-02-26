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
    public partial class Addbook : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox3.Text = DateTime.Now.ToString("dd/MM/yyyy");
        }

        //protected void Timer1_Tick(object sender, EventArgs e)
        //{
        //    //Label6.Text = DateTime.Now.ToString("hh:mm:ss");
        //}
        protected void Button1_Click(object sender, EventArgs e)
        {          
                try
                {
                    SqlConnection con = new SqlConnection(cs);
                    SqlCommand cmd = new SqlCommand("adbook", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Action", "insert");
                    cmd.Parameters.AddWithValue("@Bookname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Authorname", TextBox2.Text);

                    DateTime purchaseDate;
                    if (DateTime.TryParseExact(TextBox3.Text, "dd/MM/yyyy", null, System.Globalization.DateTimeStyles.None, out purchaseDate))
                    {
                        cmd.Parameters.AddWithValue("@purchasedate", purchaseDate);
                    }
                    else
                    {
                        // Handle the case where TextBox3 does not contain a valid date
                        Response.Write("Please enter a valid purchase date in the format dd/MM/yyyy.");
                        return;
                    }

                    cmd.Parameters.AddWithValue("@quantity", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@price", TextBox5.Text);

                    con.Open();
                   int i= cmd.ExecuteNonQuery();
                    con.Close();
                if (i < 0)
                {
                    Response.Write("Data Inserted Successfully");
                }
                  TextBox1.Text = "";
                  TextBox2.Text = "";
                  TextBox3.Text = "";   
                  TextBox4.Text = "";
                  TextBox5.Text = "";
                }            
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }
    }
}