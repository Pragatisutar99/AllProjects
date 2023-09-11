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
    public partial class EditEmployeeImg : System.Web.UI.Page
    {
        public int EmployeeId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public int CountryId { get; set; }
        public int StateId { get; set; }
        public int CityId { get; set; }
        public string Password { get; set; }
        public string ProfilePath { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {

            EmployeeId = int.Parse(Session["EmployeeId"].ToString());

            if (IsPostBack)
            {
            }
            else
            { 
                ClsEmp cls = new ClsEmp();
                DataTable dt = new DataTable();
                dt = cls.GetCountry();
                drdCountry.DataSource = dt;
                drdCountry.DataTextField = "CountryName";
                drdCountry.DataValueField = "CountryId";
                drdCountry.DataBind();



               

                ClsEmp obj = new ClsEmp(EmployeeId);
                SqlDataReader dr;
                dr = obj.EditViewImg();
                while (dr.Read())
                {
                    drdPosition.Text = dr["Position"].ToString();
                    txtName.Text = dr["Name"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    txtPhoneNumber.Text = dr["Phone Number"].ToString();
                    drdCountry.SelectedValue = dr["CountryId"].ToString();
                    drdState.SelectedValue = dr["StateId"].ToString();
                    //drdCity.SelectedValue = dr["CityId"].ToString();
                    txtPassword.Text = dr["Password"].ToString();
                    string url = dr["ProfilePath"].ToString();
                    Image.ImageUrl = "~/" + url;



                    //lblPName.Text = ProjectName;
                    //lblProjectName1.Text = ProjectName;
                    //lblProjectName2.Text = ProjectName;
                    //lblProjectName3.Text = ProjectName;

                }
                }
            
        }
        protected void drdPosition_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void drdState_SelectedIndexChanged(object sender, EventArgs e)
        {

            ClsEmp cls = new ClsEmp(int.Parse(drdState.SelectedValue.ToString()));
            DataTable dt = cls.GetCity();
            drdCity.DataSource = dt;
            drdCity.DataTextField = "CityName";
            drdCity.DataValueField = "CityId";
            drdCity.DataBind();
        }

        protected void drdCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClsEmp cls = new ClsEmp(int.Parse(drdCountry.SelectedValue.ToString()));
            DataTable dt = cls.GetState();
            drdState.DataSource = dt;
            drdState.DataTextField = "StateName";
            drdState.DataValueField = "StateId";
            drdState.DataBind();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }

        protected void btnView_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUploadImage.HasFile)
            {
                FileUploadImage.SaveAs(Server.MapPath("~/EmpImage/") + System.IO.Path.GetFileName(FileUploadImage.FileName));
                string ProfilePath = "EmpImage/" + System.IO.Path.GetFileName(FileUploadImage.FileName);
                //string Position = drdPosition.Text;
                ClsEmp obj = new ClsEmp( txtName.Text, txtEmail.Text, txtPhoneNumber.Text, txtPassword.Text,ProfilePath,EmployeeId);
                obj.UpdateEmployeeDetails();
            }
        }
    }
}
