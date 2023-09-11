using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MasterPageDemo
{
    public partial class Login : System.Web.UI.Page
    {

        public string UserName { get; set; }
        public string Password { get; set; }
        public string TypeName { get; set; }



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string type = DropDownList1.Text.ToString();

            ClsMaster Login1 = new ClsMaster(txtUserName.Text, txtPassword.Text, type);
            SqlDataReader dr;
            dr = Login1.Login();
            if (dr.Read())
            {

                                                                                                                                                                                                                                                                                                                                                     
                type = dr["Type"].ToString();
                UserName = txtUserName.Text;
                txtUserName.Text = dr["Name"].ToString();
                txtPassword.Text = dr["Password"].ToString();
                //lblUserName.Text = "Ligin successfully";
                //MessageBox.Show("Login Successfully");
                if (dr.HasRows == true)
                {
                    //if (type == "Admin")

                    //{

                    //    Response.Redirect("Admin.aspx");


                    //}
                    if (txtUserName.Text == UserName && txtPassword.Text == Password) ;
                    {
                        Session["Type"] = type;
                        Response.Redirect("Customer.aspx");

                    }
                }



            }
            //else
            //{
            //    MessageBox.Show("Login Failed");
            //}
            dr.Close();


        }
    }
}

