using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class VievGiris : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Yetki"] == "admin")
            {
                MultiView1.ActiveViewIndex = -1;
            }
            else if (Session["Yetki"] == "user")
            {
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void LinkBtnCikis_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Anasayfa.aspx");
            MultiView1.ActiveViewIndex = 0;
        }

        public void Degistir(int page)
        {
            MultiView1.ActiveViewIndex = page;
        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            string yetki = Veritabanı.UyeKontrol(txtKullanıcıAdi.Text, txtSifre.Text);


            if (yetki == "admin")
            {
                MultiView1.ActiveViewIndex = -1;
                Session["Yetki"] = yetki;
                Session.Timeout = 5;
                Response.Redirect("Admin.aspx");

            }
            else if (yetki == "user")
            {
                MultiView1.ActiveViewIndex = 1;
                Session["Yetki"] = yetki;
                Session.Timeout = 5;
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                Response.Write("<h3>Yanlış kullanıcı adı veya şifre girdiniz.</h3>");
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }
}