using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Yetki"] == "user")
            //    ViewGiris1.Degistir(1);
            //else
            //    ViewGiris1.Degistir(0);
            //Response.Write(Session["Yetki"]);
        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
        }
        protected void btnGiris_Click1(object sender, EventArgs e)
        {
        }

        protected void LinkButtonCikis_Click(object sender, EventArgs e)
        {
        }
    }
}