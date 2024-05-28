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
    public partial class USCLNcuaAvaB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTinh_Click(object sender, EventArgs e)
        {
            int a = Int16.Parse(this.txtA.Text);
            int b = Int16.Parse(this.txtB.Text);
            int r = 1;
            while (r != 0)
            {
                r = a % b;
                a = b;
                b = r;

            }
            this.txtKetQua.Text = a.ToString();
        }
    }
}
