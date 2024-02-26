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
    public partial class IssueBook : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // DateTime purchaseDate = DateTime.Now;
            TextBox3.Text = DateTime.Now.ToString();

            try
            {
                SqlConnection con = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("INSERT INTO Issuebook (Name, Dprt, [Date], Number, Email, Bookname) VALUES (@Name, @Dprt, @Date, @Number, @Email, @Bookname)", con);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Dprt", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Date", TextBox3.Text);
                //cmd.Parameters.AddWithValue("@Date", purchaseDate.ToString("yyyy-MM-dd"));  // Use a format SQL Server recognizes
                cmd.Parameters.AddWithValue("@Number", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Bookname", TextBox6.Text);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                if (i > 0)
                {
                    Response.Write("<script> alert('Data Inserted Successfully');</script>");
                }
                else
                {
                    Response.Write("<script> alert('Data Inserted Failed');</script>");
                }

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";

                con.Close();
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
            TextBox6.Text = "";
        }
    }
}