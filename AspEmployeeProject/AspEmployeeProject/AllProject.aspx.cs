using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace AspEmployeeProject
{
    public partial class AllProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            { }
                ClsEmp obj = new ClsEmp();
            DataTable dt = new DataTable();
            dt= obj.GetAllProject();
            gvallProjecrs.DataSource = dt;
            gvallProjecrs.DataBind();
        }

        protected void grdAllProject_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}