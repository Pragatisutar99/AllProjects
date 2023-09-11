using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace AspEmployeeProject
{
    public partial class MProject : System.Web.UI.Page
    {
        public int EmployeeId { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            EmployeeId = int.Parse(Session["EmployeeId"].ToString());
            ClsEmp cls = new ClsEmp(EmployeeId);
            DataTable dt = new DataTable();
            dt = cls.ProjectCompleted();
            grdMProject.DataSource = dt;
            grdMProject.DataBind();
        }

        protected void grdMProject_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}