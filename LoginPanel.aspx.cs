using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPanel : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=LAPTOP-EJUDKBND;Initial Catalog=UdemySiteDb;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void BtnGırısYap_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select*from tbl_ogrencı where Numara=@p1 and ogrsıfre=@p2 ", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSıfre.Text);
        SqlDataReader dt = komut.ExecuteReader();
        if (dt.Read())
        {
            Session.Add("Numara", TxtNumara.Text);
            Response.Redirect("Ogrencı(Default).aspx");
        }
        else
        {
            TxtSıfre.Text = "Hatalı Şifre";
        }
        baglanti.Close();
    }

    protected void BtnOgretmenGırısı_Click(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Select*from tbl_ogretmen where ogrnumara=@p1 and ogrtsıfre=@p2 ", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
        komut.Parameters.AddWithValue("@p2", TxtSıfre.Text);
        SqlDataReader dt = komut.ExecuteReader();
        if (dt.Read())
        {
            Session.Add("ogrtnumara", TxtNumara.Text);
            Response.Redirect("ÖGRETMEN(Default).aspx");
        }
        else
        {
            TxtSıfre.Text = "Hatalı Şifre";
        }
        baglanti.Close();
    }
}