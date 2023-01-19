using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajOluştur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TxtGonderen.Text = "0001";
    }

    protected void BtnGonder_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
        dt.MesajOluştur(TxtGonderen.Text,TxtAlıcı.Text,TxtBaslık.Text,TxtIcerık.Value);
        Response.Redirect("GıdenMesajlar.aspx");
    }
}