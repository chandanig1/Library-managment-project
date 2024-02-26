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
    public partial class Studentlist : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                griddata();
            }
        }
        //public void gvdata()
        //{
        //    string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        //    SqlConnection con = new SqlConnection(cs);
        //    SqlCommand cmd = new SqlCommand("adstudent", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@Action", "select");
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}
        public void griddata()
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("adstudent", con);
            cmd.CommandType= CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "select");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
          da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("select*from Addstudent where Stdemail=@Stdemail", con);
            cmd.Parameters.AddWithValue("@Stdemail", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            da.Fill(dt);
            GridView1.DataSource = dt;
           GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            griddata();
        }
    }
}