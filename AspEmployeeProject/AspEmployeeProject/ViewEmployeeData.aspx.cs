using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AspEmployeeProject
{
    public partial class ViewEmployeeData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsEmp cls = new ClsEmp();
            DataTable dt = cls.ViewImage();
            grdViewImg.DataSource = dt;
            grdViewImg.DataBind();
        }

        protected void grdViewImg_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int EmployeeId = int.Parse(grdViewImg.SelectedRow.Cells[]);
           Session["EmployeeId"]=int.Parse(grdViewImg.SelectedRow.Cells[1].Text.ToString());
            Response.Redirect("EditEmployeeImg");
        }
    }
}