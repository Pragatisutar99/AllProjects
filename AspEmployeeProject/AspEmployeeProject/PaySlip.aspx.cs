using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspEmployeeProject
{
    public partial class PaySlip : System.Web.UI.Page
    {
        public int ProjectId { get; set; }
        public int EmployeeId { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            EmployeeId = int.Parse(Request.QueryString["EmpId"].ToString());
            ProjectId = int.Parse(Request.QueryString["PId"].ToString());
            if (IsPostBack)
            { }
            Label8.Text = Request.QueryString["PName"];
            Label9.Text= Request.QueryString["TL"];
            Label10.Text= Request.QueryString["PhoneNo"];
            Label11.Text= Request.QueryString["Email"];
            Label12.Text= Request.QueryString["Amount"];


        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            ClsEmp cls = new ClsEmp(EmployeeId, ProjectId,float.Parse(Label12.Text.ToString()));
            cls.PaymentDetails();
            Response.Redirect("AllProject.aspx");

        }
    }
}