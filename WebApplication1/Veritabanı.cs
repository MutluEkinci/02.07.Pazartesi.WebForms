using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public static class Veritabanı
    {
        public static string UyeKontrol(string ad, string sifre)
        {
            string strConn = ConfigurationManager.ConnectionStrings["CalısmaConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(strConn);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select*from tbl_Uye where UyeAdi=@ad and Sifre=@sifre", conn);

            cmd.Parameters.Clear();

            cmd.Parameters.AddWithValue("@ad", ad);
            cmd.Parameters.AddWithValue("@Sifre", sifre);

            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();
            if (dr.HasRows)
            {
                return dr["Yetki"].ToString();
            }

            conn.Close();

            return "kayıtsız";
        }
    }
}