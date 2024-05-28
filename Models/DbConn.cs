using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Data.OleDb;


namespace BaiTap.Models
{
    public class DbConn
    {
        public OleDbConnection conn;
        
        public DbConn()
        {
            try
            {
                string strConn = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source= E:\Web\BaiTap\Buoi3\DataKTHT.mdb";
               // string strConn = @"Provider=Microsoft.Jet.OLEDB.4.0; Data Source= ~/DataKTHT.mdb";
                this.conn = new OleDbConnection();
                this.conn.ConnectionString=strConn;
                this.conn.Open();
                System.Diagnostics.Trace.WriteLine("Kết nối CSDL thành công");
            }
            catch (Exception ex) {
                System.Diagnostics.Trace.Write("Error: " + ex);
            }
        }
        public OleDbDataReader ExcuteQuery(string str)
        {
            try { 
              using( OleDbCommand odc= new OleDbCommand(str,this.conn) ){
                  OleDbDataReader odr = odc.ExecuteReader();
                  return odr;
              }
            }   
            catch (Exception ex) { 
              System.Diagnostics.Trace.WriteLine(string.Format("Error: {0} \n SQL: {1}",ex,str));
              return null;
            }
        }
    }
}
