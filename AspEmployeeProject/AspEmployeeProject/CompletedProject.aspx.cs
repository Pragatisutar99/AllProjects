﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace AspEmployeeProject
{
    public partial class CompletedProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
            }
            else
            {

                //ClsEmp cls = new ClsEmp();
                //DataTable dt= new DataTable();
                //cls.GRDCompletedProject();
                //grdCompleteProject.DataSource = dt;
                //grdCompleteProject.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}