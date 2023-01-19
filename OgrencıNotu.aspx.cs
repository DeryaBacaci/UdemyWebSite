using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrencıNotu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       DataSetTableAdapters.OgrNOTLARTableAdapter dt=new DataSetTableAdapters.OgrNOTLARTableAdapter();
        Repeater1.DataSource = dt.OgrencıNotu(Session["Numara"].ToString());
        Repeater1.DataBind();

    }
}