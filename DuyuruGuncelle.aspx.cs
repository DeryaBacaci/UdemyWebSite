using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGuncelle : System.Web.UI.Page
{

    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());

                DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();

                TxtDuyuruID.Text = id.ToString();
                TxtDuyuruBaslik.Text = dt.DuyuruSeç(id)[0].DUYURUBASLIK;
                TextArea1.Value = dt.DuyuruSeç(id)[0].DUYURUICERIK;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }




    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TextArea1.Value, Convert.ToInt32(TxtDuyuruID.Text));
        Response.Redirect("DuyuruListesi.aspx");
    }
}