using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using OfficeOpenXml;
using System.Data.OleDb;
using System.Drawing;
using System.Collections;
using System.Data.Common;

namespace Liabrary_managment_system
{

    public partial class Import_data : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbc"].ConnectionString;
        
        public OleDbConnection Econ { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {//export data      
          ExportGridToExcel();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           
            //string CurrentFilePath = Path.GetFullPath(FileUpload1.PostedFile.FileName);
            string path=Path.GetFileName(FileUpload1.FileName);
            path = path.Replace(" ", " ");
            FileUpload1.SaveAs(Server.MapPath("~/ExcelFile/") + path);
            string excelPath=Server.MapPath("~/ExcelFile/") + path ;
            using (var package = new ExcelPackage(new FileInfo(excelPath)))
            {
                if(package.Workbook.Worksheets.Count > 0)
                {
                    var worksheet = package.Workbook.Worksheets[1];
                    int startRow = 2;

                    for(int row=startRow; row<=worksheet.Dimension.End.Row; row++)
                    {
                        string empcode = worksheet.Cells[row, 1].Text;

                    }
                }
            }                    
        }
        public void gvbind()
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("Select * from Addbook", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Vithal" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }
    }    
}

    
