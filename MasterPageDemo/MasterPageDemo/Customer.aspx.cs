using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MasterPageDemo
{
    public partial class Customer : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {

            //DataTable dt = new DataTable();
            //dt = obj.Getsize();


            string session = Session["Type"].ToString();
            ClsMaster obj = new ClsMaster();
            if (session == "Admin")
            {

                grdCustomer.DataSource = obj.Getsize();
                grdCustomer.DataBind();
            }
            else if (session == "Customer")
            {
                grdCustomer.DataSource = obj.Getsize();
                grdCustomer.DataBind();
                for (int i = 0; i < grdCustomer.Rows.Count; i++) 
                {
                    grdCustomer.HeaderRow.Cells[4].Visible = false;
                    grdCustomer.Rows[i].Cells[4].Visible = false;
                }

            }


        }

        protected void grdCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}