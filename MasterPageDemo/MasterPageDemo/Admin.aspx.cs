﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MasterPageDemo
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ClsMaster cls = new ClsMaster();
           DataTable dt = new DataTable();
            dt = cls.Getsize();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}