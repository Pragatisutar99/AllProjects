using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace AspEmployeeProject
{
    public partial class PaymentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            { }
            ClsEmp cls = new ClsEmp();
            DataTable dt = cls.IsDeletePayment();
            grdPayment.DataSource = dt;
            grdPayment.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int EmployeeId = int.Parse(grdPayment.SelectedRow.Cells[7].Text.ToString());
            ClsEmp cls = new ClsEmp(EmployeeId);
            cls.DeleteRecord();
        }
    }
}