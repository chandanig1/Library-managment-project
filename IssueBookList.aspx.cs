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
    public partial class IssueBookList : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                gvdata();
            }

        }
       public void gvdata()
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select*from Issuebook", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            gvdata();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Select*from Issuebook where Email=@Email", con);
            //SqlCommand cmd = new SqlCommand("Select*from Issuebook where Email like '%' + @Email + '%'", con);
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}