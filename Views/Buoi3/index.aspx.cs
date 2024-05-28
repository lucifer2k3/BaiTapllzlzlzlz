using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using BaiTap.Models;
using System.Data.OleDb;
namespace BaiTap.Views.Buoi3
{
    public partial class index : System.Web.UI.Page
    {
        public DbConn db;
        public index() {
            this.db = new DbConn();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.loadDb();
        }
       
        public void loadDb() {
            try
            {
                using (
                    OleDbDataAdapter oda = new OleDbDataAdapter(" SELECT * FROM MON_HOC ", this.db.conn)
                 )
                {
                    DataTable dt = new DataTable();
                    oda.Fill(dt);
                    this.GridViewMonHoc.DataSource = dt;
                    this.GridViewMonHoc.DataBind();
               
                };
            }
            catch (Exception ex)
            {

            }
        }
    }
}
