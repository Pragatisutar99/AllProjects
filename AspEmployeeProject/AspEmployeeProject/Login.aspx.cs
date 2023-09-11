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
    public partial class Login : System.Web.UI.Page
    {

        public string Email { get; set; }
        public string Password { get; set; }
        public int EmpId { get; set; }



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           // string Position = DropDownList2.Text.ToString();

            ClsEmp Login = new ClsEmp(DropDownList2.Text, txtEmail.Text, txtPassword.Text);
            SqlDataReader dr;
            dr = Login.LogIn();
            while (dr.Read())
            {
               // Position = dr["Position"].ToString();
               // Email = txtEmail.Text;
                Email = dr["Email"].ToString();
                Password = dr["Password"].ToString();
                EmpId = int.Parse(dr["EmployeeId"].ToString());
            }
                if (dr.HasRows == true)
                {
                    if (txtEmail.Text==Email && txtPassword.Text== Password && DropDownList2.Text== "Admin")
                    {
                       // Session["Position"] = Position;
                        Response.Redirect("AllProject.aspx");
                    }
                   else if (txtEmail.Text == Email && txtPassword.Text == Password && DropDownList2.Text == "ProjectManager")
                   {
                        Session["EmployeeId"] = EmpId;
                        Response.Redirect("ProjectManager.aspx");

                   }
                   else if (txtEmail.Text == Email && txtPassword.Text == Password && DropDownList2.Text == "Team Leader")
                   {
                          Session["EmployeeId"] = EmpId;
                          Response.Redirect("TeamLeader.aspx");
                }
            }



            }
            //else
            //{
            //    MessageBox.Show("Login Failed");
            //}
            //dr.Close();

        }
    }


       
  