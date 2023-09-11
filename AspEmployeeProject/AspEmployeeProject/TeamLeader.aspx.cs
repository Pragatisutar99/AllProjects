using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AspEmployeeProject
{
    public partial class TeamLeader1 : System.Web.UI.Page
    {

        public int EmployeeId { get; set; }
        public int ProjectId { get; set; }
        public string Status { get; set; }
        //public string Password { get; set; }
        public string ProjectName { get; set; }
        public string TeamLeader { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {

            }
            else
            {
            }
            EmployeeId = int.Parse(Session["EmployeeId"].ToString());

            ClsEmp cls = new ClsEmp(EmployeeId);
            SqlDataReader dr;
            dr = cls.TLLogin();
            while (dr.Read())
            {

                ProjectName = dr["ProjectName"].ToString();
                ProjectId = int.Parse(dr["ProjectId"].ToString());
                TeamLeader = dr["Name"].ToString();
                Status = dr["Status"].ToString();
                //Password = dr["Password"].ToString();
                 int EmployeeId = int.Parse(dr["EmployeeId"].ToString());
                lblTLName.Text = TeamLeader;
                lblPName.Text = ProjectName;
                lblProjectName1.Text = ProjectName;
                lblProjectName2.Text = ProjectName;
                lblProjectName3.Text = ProjectName;

            }

            if (Status == "completed")
            {
                btnActive.Enabled = false;
                btnActive1.Enabled = false;
                btnActive2.Enabled = false;
                btnActive.Text = "completed";
                btnActive1.Text = "completed";
                btnActive2.Text = "completed";
            }




        }

        protected void btnActive_Click(object sender, EventArgs e)
        {
            btnActive1.Enabled = true;
            btnActive.Text = "completed";
        }

        protected void btnActive1_Click(object sender, EventArgs e)
        {
            btnActive2.Enabled = true;
            btnActive1.Text = "completed";
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {

           

        }

        protected void btnActive2_Click(object sender, EventArgs e)
        {
            btnActive2.Text = "completed";
            ClsEmp cls = new ClsEmp(ProjectId);
            cls.UpdatedStatus();

        }
    }
    }
