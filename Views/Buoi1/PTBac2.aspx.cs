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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonTinh_Click(object sender, EventArgs e)
        {
            int a = Int16.Parse(this.txtN0.Text);
            int b = Int16.Parse(this.txtN.Text);
            int c = Int16.Parse(this.TextBox1.Text);

            if (a == 0)
            {
                if (b == 0)
                {
                    if (c == 0)
                    {
                        this.Label5.Text = string.Format("Phương trình có vô số nghiệm");
                    }
                    else
                    {
                        this.Label5.Text = string.Format("Phương trình vô nghiệm");
                    }
                }
                else
                {
                    this.Label5.Text = string.Format("x = {0} là nghiệm phương trình  ", (double)-b / a);
                }
            }
            else
            {
                double discriminant = b * b - 4 * a * c;
                if (discriminant < 0)
                {
                    this.Label5.Text = string.Format("Phương trình vô nghiệm");
                }
                else
                {
                    double root = (-b + Math.Sqrt(discriminant)) / (2 * a);
                    double root2 = (-b - Math.Sqrt(discriminant)) / (2 * a);
                    if (discriminant == 0)
                    {
                        this.Label5.Text = string.Format("x = {0} là nghiệm của phương trình", root);
                    }
                    else 
                    {
                        this.Label5.Text = string.Format("x1= {0} và x2 = {1} là 2 nghiệm của phương trình", root, root2);
                    }
                }
            }
        }
    }
}
