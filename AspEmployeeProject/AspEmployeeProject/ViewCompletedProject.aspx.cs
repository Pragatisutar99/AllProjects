using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AspEmployeeProject
{
    public partial class ViewCompletedProject : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsEmp cls = new ClsEmp();
            DataTable dt= cls.GRDCompletedProject();
            grdViewCompleteProject.DataSource = dt;
            grdViewCompleteProject.DataBind();
        }

        protected void grdViewCompleteProject_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ProjectName = grdViewCompleteProject.SelectedRow.Cells[1].Text;
            string TeamLeader = grdViewCompleteProject.SelectedRow.Cells[2].Text;
            string PhoneNumber = grdViewCompleteProject.SelectedRow.Cells[3].Text;
            string Email = grdViewCompleteProject.SelectedRow.Cells[4].Text;
            string Status = grdViewCompleteProject.SelectedRow.Cells[5].Text;
            int ProjectId = int.Parse(grdViewCompleteProject.SelectedRow.Cells[6].Text.ToString());
            int EmployeeId = int.Parse(grdViewCompleteProject.SelectedRow.Cells[7].Text.ToString());
            string Amount = "80000";
            Response.Redirect("PaySlip.aspx?PName="+ ProjectName+"&TL="+ TeamLeader+"&PhoneNo="+ PhoneNumber +"&Email="+ Email +"&Status="+ Status + "&PId="+ ProjectId + "&EmpId="+ EmployeeId +"&Amount="+ Amount );
        }
    }
}