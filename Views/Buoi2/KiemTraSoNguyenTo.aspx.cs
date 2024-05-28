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

namespace BaiTap.Views.Buoi2
{
    public partial class KiemTraSoNguyenTo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTinh_Click(object sender, EventArgs e)
        {
            int n = Int16.Parse(this.txtN.Text);

            for (int i = 2; i <= Math.Sqrt(n); i++) if (n % i == 0) {
                this.txtKetQua.Text = string.Format("{0}không phải là số nguyên tố  ",n );
                return;
            }
            this.txtKetQua.Text = string.Format("{0} là số nguyên tố  ", n);
            
        }
    }
}
