using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AspEmployeeProject
{
    public partial class ProjectManager1 : System.Web.UI.Page
    {
        public int  EmpId { get; set; }

                
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { }
            else {
                EmpId = int.Parse(Session["EmployeeId"].ToString());
                ClsEmp cls = new ClsEmp(EmpId);
                DataTable dt = new DataTable();
                dt = cls.GetProjectforPM();
                drdProjectNames.DataSource = dt;
                drdProjectNames.DataTextField = "ProjectName";
                drdProjectNames.DataValueField = "ProjectId";
                drdProjectNames.DataBind();



                ClsEmp obj = new ClsEmp();
                DataTable data = new DataTable();
                data = cls.GetTeamLeader();
                drdTeamLeader.DataSource = data;
                drdTeamLeader.DataTextField = "Name";
                drdTeamLeader.DataValueField = "EmployeeId";
                drdTeamLeader.DataBind();
            }
            

        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            int ProjectId = Convert.ToInt32(drdProjectNames.SelectedValue.ToString());
            int EmployeeId = Convert.ToInt32(drdTeamLeader.SelectedValue.ToString());
            ClsEmp cls = new ClsEmp(int.Parse(drdProjectNames.SelectedValue.ToString()), int.Parse(drdTeamLeader.SelectedValue.ToString()));
            cls.AssignProject();
            Response.Redirect("ProjectManager.aspx");
        }
    }
}