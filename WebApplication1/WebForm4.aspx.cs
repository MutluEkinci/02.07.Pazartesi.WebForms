using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYukle_Click(object sender, EventArgs e)
        {
            //FileUpload1.SaveAs(Server.MapPath("deneme.jpg"));//deneme.jpg ismiyle kaydeder dosyayı.
            //FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName));//orjinal ismiyle kaydeder dosyayı.

            if(FileUpload1.FileBytes.Length<200000)//boyut sınırlaması koyduk.
            {
                //FileUpload1.SaveAs(Server.MapPath(FileUpload1.FileName));
                Guid guid = Guid.NewGuid();
                FileUpload1.SaveAs(Server.MapPath(guid.ToString()+"_"+FileUpload1.FileName));
            }
            else
            {
                Response.Write("Dosya boyutu çok büyük");
            }


            //Guid:Globally Unique Identifier(aynı numaradan iki tane oluşma imkanı yok "teoride")

        }
    }
}