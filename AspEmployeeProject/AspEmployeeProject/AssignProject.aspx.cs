using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AspEmployeeProject
{
    public partial class AssignProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { }
            else
            {
                ClsEmp cls = new ClsEmp();
                DataTable dt = new DataTable();
                dt = cls.GetProjectName();
                drdProjectName.DataSource = dt;
                drdProjectName.DataTextField = "ProjectName";
                drdProjectName.DataValueField = "ProjectId";
                drdProjectName.DataBind();



                ClsEmp obj = new ClsEmp();
                DataTable data = new DataTable();
                data = cls.GetProjectManager();
                drdProjectManager.DataSource = data;
                drdProjectManager.DataTextField = "Name";
                drdProjectManager.DataValueField = "EmployeeId";
                drdProjectManager.DataBind();


            }


        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            int ProjectId = int.Parse(drdProjectName.Text.ToString());
            int EmployeeId = int.Parse(drdProjectManager.Text.ToString());
            ClsEmp cls = new ClsEmp(ProjectId, EmployeeId);
            cls.AssignProject();

        }

        protected void drdProjectName_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}