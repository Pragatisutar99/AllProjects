using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspEmployeeProject
{
    public partial class Project : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string Technology = drdTechnology.Text;
            ClsEmp cls = new ClsEmp(txtProjectName.Text, Technology, txtSatrtDate.Text, txtEndDate.Text);
            cls.SaveProject();
        }
    }
}