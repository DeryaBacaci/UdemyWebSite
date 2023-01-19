using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class İstatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.DataTable2TableAdapter dt=new DataSetTableAdapters.DataTable2TableAdapter();
        txtOgrencıSayısı.Text = "Toplam Öğrenci Sayısı: "+dt.istatistik1().ToString();
       txtOgretmenSayısı.Text = "Toplam Öğretmen Sayısı: " + dt.istatistik2().ToString();
        txtDersSayısı.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();
        TxtBaşarılıOgrencı.Text = "Matematik Dersindeki En Başarılı Öğrencimiz: " + dt.istatistik4().ToString();
        TxtBaşfizik.Text = "Fizik Dersinden En Başarılı Öğrencimiz: " + dt.istatistik5().ToString() ;
        txtbşldilanlatım.Text = "Dil Anlatım Dersinde En Başılı Öğrencimiz: " + dt.istatistik6().ToString();
        txtbaşlıedebiyat.Text = "Edebiyat Dersinden En Başarılı Öğrencimiz: " + dt.istatistik7().ToString();
        TextBox5.Text=" Matematik Dersi Ortalaması : "+dt.istatistik8().ToString();
        TextBox6.Text = "Fizik Dersi Ortalması: " + dt.istatistik9().ToString();
        TextBox7.Text = "Edebiyat Dersi Sınav Ortalaması : " + dt.istatistik10().ToString();
       
        
        
    }
}