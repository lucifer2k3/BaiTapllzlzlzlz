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

namespace BaiTap.Views.Buoi1
{
    public partial class ChuVi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTinh_Click(object sender, EventArgs e)
        {
            int a = Int16.Parse(this.txtN0.Text);
            int b = Int16.Parse(this.txtN.Text);
            int c = Int16.Parse(this.txtN1.Text);

            string kq = ((a + b + c)).ToString();
            Label4.Text = kq.ToString();
        }
    }
}
