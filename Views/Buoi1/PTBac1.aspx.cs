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
    public partial class PTBac1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTinh_Click(object sender, EventArgs e)
        {
            int a = Int16.Parse(this.txtN0.Text);
            int b = Int16.Parse(this.txtN.Text);

            if (a == 0)
            {
                if (b == 0)
                {
                    this.Label4.Text = string.Format("Phương trình có vô số nghiệm");
                }
                else
                {
                    this.Label4.Text = string.Format("Phương trình vô nghiệm");
                }
            }
            else
            {
                this.Label4.Text = string.Format("x = {0} là nghiệm phương trình  ", (double)-b / a);
            }
        }
    }
}
