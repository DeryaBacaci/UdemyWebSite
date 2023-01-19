using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrencıGuncelle2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtnumara.Text = Request.QueryString["Numara"];

        if (Page.IsPostBack == false)
        {

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrencıSıfreGuncelle(txtsıfre.Text, txtnumara.Text);

        Response.Redirect("Ogrencı(Default).aspx?Numara=" + txtnumara.Text);


    }
}