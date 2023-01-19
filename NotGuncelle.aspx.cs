using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotGuncelle : System.Web.UI.Page
{
    int nid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            DataSetTableAdapters.OgrNOTLARTableAdapter dt = new DataSetTableAdapters.OgrNOTLARTableAdapter();
            TxtOgrıd.Text = dt.NotGetir2(nid)[0].OGRENCIID.ToString();
            TxtOgrSoyad.Text = dt.NotGetir2(nid)[0].OGRENCIADSOYAD;
            TxtDersAd.Text = dt.NotGetir2(nid)[0].DERSAD;
            Txtsınav1.Text = dt.NotGetir2(nid)[0].sınav1.ToString();
            Txtsınav2.Text = dt.NotGetir2(nid)[0].sınav2.ToString();
            Txtsınav3.Text = dt.NotGetir2(nid)[0].sınav3.ToString();
            TxtOgrOrtalama.Text = dt.NotGetir2(nid)[0].ortalama.ToString();
            TxtDurum.Text = dt.NotGetir2(nid)[0].DURUM.ToString();
        }
    }

    protected void Btnhesapla_Click(object sender, EventArgs e)
    {



        double sınav1, sınav2, sınav3;
        double ortalama;
        sınav1 = Convert.ToInt32(Txtsınav1.Text);
        sınav2 = Convert.ToInt32(Txtsınav2.Text);
        sınav3 = Convert.ToInt32(Txtsınav3.Text);
        ortalama = ((sınav1 + sınav2 + sınav3) / 3);
        TxtOgrOrtalama.Text = ortalama.ToString("0.00");
        if (ortalama >= 50)
        {

            TxtDurum.Text = "TRUE";

        }
        else
        {
            TxtDurum.Text = "FALSE";
        }
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        nid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
        DataSetTableAdapters.OgrNOTLARTableAdapter dt = new DataSetTableAdapters.OgrNOTLARTableAdapter();
        dt.NotGuncelle(int.Parse(Txtsınav1.Text), int.Parse(Txtsınav2.Text), int.Parse(Txtsınav3.Text), decimal.Parse(TxtOgrOrtalama.Text), bool.Parse(TxtDurum.Text), nid);
        Response.Redirect("NotListesi.aspx");
    }
}