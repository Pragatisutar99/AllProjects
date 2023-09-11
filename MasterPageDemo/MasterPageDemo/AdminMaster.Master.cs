using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ClsMaster cls = new ClsMaster();
            // DataTable dt = new DataTable();
            // dt = cls.Getsize();
            grdAdmin.DataSource = cls.Getsize();
            grdAdmin.DataBind();

        }

        protected void grdAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}