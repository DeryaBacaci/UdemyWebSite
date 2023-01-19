using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ogrencı_Default_ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt1.Text = Session["Numara"].ToString();

        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

        txt2.Text = "Ad Soyad :" + dt.OgrencıPanelıGetır(txt1.Text)[0].OGRAD +" "+ dt.OgrencıPanelıGetır(txt1.Text)[0].OGRSOYAD; ;
        txt3.Text = "Mail Adresi :"+dt.OgrencıPanelıGetır(txt1.Text)[0].OGRMAIL;
        txt4.Text ="Şifre :"+ dt.OgrencıPanelıGetır(txt1.Text)[0].OGRSIFRE;
        txt5.Text = "Telefon :"+dt.OgrencıPanelıGetır(txt1.Text)[0].OGRTELEFON;
        txt7.Text = dt.OgrencıPanelıGetır(txt1.Text)[0].OGRFOTOGRAF;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("OgrencıGuncelle2.aspx?Numara="+txt1.Text);
    }
}