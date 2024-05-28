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
    public partial class TichCacSoChanTu1denN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTinh_Click(object sender, EventArgs e)
        {
            int n = Int16.Parse(this.txtN.Text);
            int s = 0;
            for (int i = 1; i <= n; i++) if(i%2==0) s += i;
            this.txtKetQua.Text = s.ToString();
        }
    }
}
