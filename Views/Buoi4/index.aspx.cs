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

using  System.Data.OleDb;
namespace BaiTap.Views.Buoi4
{
    public partial class index : System.Web.UI.Page
    {
        protected DbConn _db;
        public index()
        {
            this._db = new DbConn();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            loadDataGridView(null);
            loadSelectLop();
        }
     
        public void loadDataGridView(string query){
            
            GridViewSinhVien.DataSource = null;
            GridViewSinhVien.DataBind();
            string sql = "SELECT * FROM SINH_VIEN WHERE 1=1";
            if (!string.IsNullOrEmpty(query)) sql += "AND ( HoDem LIKE '%" + query + "%' OR Ten LIKE '%" + query + "%'  ) ;";
                using (
                    OleDbDataAdapter oda = new OleDbDataAdapter(" SELECT * FROM SINH_VIEN ", this._db.conn)
                 )
                {
                    DataTable dt = new DataTable();
                    oda.Fill(dt);
                GridViewSinhVien.DataSource = dt;
                GridViewSinhVien.DataBind();
       

                };
            
        }

        public void loadSelectLop() { 
          
         using( OleDbCommand odc = new OleDbCommand("SELECT * FROM LOP ",this._db.conn) ){
             using (OleDbDataReader odr= odc.ExecuteReader()){
                 DropDownListLop.Items.Clear();
                 DropDownListLop.Items.Add(new ListItem( string.Format("Chọn lớp"), "0"));
                 while( odr.Read() ){
                    string maLop= odr.GetString(0);
                    string ten= odr.GetString(1);
                    DropDownListLop.Items.Add(new ListItem(string.Format("{0} - {1}", maLop,ten), maLop));
                 }
             }
         }
         this.DropDownListLop.SelectedIndex = 1;
        }
 

      

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            this.TextBoxMaSinhVien.Text = "";
            TextBoxHoDem.Text = "";
            this.TextBoxTen.Text = "";
            this.TextBoxNgaySinh.Text = "";
         
                this.RadioButtonNu.Checked = false;
                this.RadioButtonNam.Checked = true;
          
            DropDownListLop.ClearSelection();

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            string maSv = this.TextBoxMaSinhVien.Text;
            string hoDem = TextBoxHoDem.Text;
            string ten = this.TextBoxTen.Text;
            string ngaySinh = string.Format(this.TextBoxNgaySinh.Text, "yyyy-MM-dd");
            string maLop = DropDownListLop.SelectedItem.Value;
            bool gioiTinh = this.RadioButtonNam.Checked ? true : false;
            string query = string.Format(@"INSERT INTO SINH_VIEN(MaSinhVien,HoDem,Ten,NgaySinh,GioiTinh,MaLop) 
                VALUES
                ('{0}','{1}','{2}',#{3}#,{4},'{5}'); ",
               maSv,hoDem,ten,ngaySinh,gioiTinh?1:0,maLop
                );
            try
            {
                using (OleDbCommand odc = new OleDbCommand(query, this._db.conn))
                {

                    int rowEf = odc.ExecuteNonQuery();
                    if (rowEf > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Đã thêm sinh viên thành công ')", true);
                        loadDataGridView(null);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thất bại ! vui lòng thử lại  ')", true);
                    }
                }
            }
            catch (Exception ex) {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thất bại ! vui lòng thử lại  ')", true);
                System.Diagnostics.Trace.Write(ex+"\n"+query);
            }

        }

       

        protected void GridViewSinhVien_SelectedIndexChanged1(object sender, EventArgs e)
        {
            this.TextBoxMaSinhVien.Text = GridViewSinhVien.SelectedRow.Cells[1].Text;
            TextBoxHoDem.Text = GridViewSinhVien.SelectedRow.Cells[2].Text;
            this.TextBoxTen.Text = this.GridViewSinhVien.SelectedRow.Cells[3].Text;
            DateTime ngaySinh = DateTime.Parse(this.GridViewSinhVien.SelectedRow.Cells[4].Text);
            this.TextBoxNgaySinh.Text = ngaySinh.ToString("yyyy-MM-dd");
            if (((CheckBox)GridViewSinhVien.SelectedRow.Cells[5].Controls[0]).Checked)
            {
                this.RadioButtonNam.Checked = true;
                this.RadioButtonNu.Checked = false;
            }
            else
            {
                this.RadioButtonNu.Checked = true;
                this.RadioButtonNam.Checked = false;
            }
            DropDownListLop.ClearSelection();
            this.DropDownListLop.Items.FindByValue(this.GridViewSinhVien.SelectedRow.Cells[6].Text).Selected = true; 
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            string maSv = this.TextBoxMaSinhVien.Text;
            string hoDem = TextBoxHoDem.Text;
            string ten = this.TextBoxTen.Text;
            string ngaySinh = string.Format(this.TextBoxNgaySinh.Text, "yyyy-MM-dd");
            string maLop = DropDownListLop.SelectedItem.Value;
            bool gioiTinh = this.RadioButtonNam.Checked ? true : false;
            string query = string.Format(@"UPDATE SINH_VIEN
                                SET HoDem = '{1}',
                                    Ten = '{2}',
                                    NgaySinh = #{3}#,
                                    GioiTinh = {4},
                                    MaLop = '{5}'
                                WHERE MaSinhVien = '{0}';",
               maSv, hoDem, ten, ngaySinh, gioiTinh ? 1 : 0, maLop
                );
            try
            {
                using (OleDbCommand odc = new OleDbCommand(query, this._db.conn))
                {

                    int rowEf = odc.ExecuteNonQuery();
                    if (rowEf > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Đã sửa sinh viên thành công ')", true);
                        loadDataGridView(null);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thất bại ! vui lòng thử lại  ')", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thất bại ! vui lòng thử lại  ')", true);
                System.Diagnostics.Trace.Write(ex + "\n" + query);
            }

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
             string maSv = this.TextBoxMaSinhVien.Text;
             string query = string.Format(@"Delete From SINH_VIEN WHERE MaSinhVien = '{0}';", maSv
               
                );
            try
            {
                using (OleDbCommand odc = new OleDbCommand(query, this._db.conn))
                {

                    int rowEf = odc.ExecuteNonQuery();
                    if (rowEf > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Đã xóa sinh viên thành công ')", true);
                        loadDataGridView(null);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thất bại ! vui lòng thử lại  ')", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thất bại ! vui lòng thử lại  ')", true);
                System.Diagnostics.Trace.Write(ex + "\n" + query);
            }
        }

       
    }
}