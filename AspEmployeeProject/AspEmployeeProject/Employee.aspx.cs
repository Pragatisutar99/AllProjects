using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace AspEmployeeProject
{
    public partial class Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



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

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {





        }

        protected void drdState_SelectedIndexChanged(object sender, EventArgs e)
        {

            ClsEmp cls = new ClsEmp(int.Parse(drdState.SelectedValue.ToString()));
            DataTable dt = new DataTable();
            dt = cls.GetCity();
            drdCity.DataSource = dt;
            drdCity.DataTextField = "CityName";
            drdCity.DataValueField = "CityId";
            drdCity.DataBind();


        }

        protected void drdCountry_SelectedIndexChanged(object sender, EventArgs e)
        {

            ClsEmp cls = new ClsEmp(int.Parse(drdCountry.SelectedValue.ToString()));
            DataTable dt = new DataTable();
            dt = cls.GetState();
            drdState.DataSource = dt;
            drdState.DataTextField = "StateName";
            drdState.DataValueField = "StateId";
            drdState.DataBind();

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            if(FileUploadImage.HasFile)
            {
                FileUploadImage.SaveAs(Server.MapPath("~/EmpImage/") + System.IO.Path.GetFileName(FileUploadImage.FileName));
                string ProfilePath = "EmpImage/" +System.IO.Path.GetFileName(FileUploadImage.FileName);
                string Position = drdPosition.Text;
                ClsEmp cls = new ClsEmp(Position, txtName.Text, txtEmail.Text, txtPhoneNumber.Text, int.Parse(drdCity.SelectedValue.ToString()), txtPassword.Text, ProfilePath);
                cls.RegisterEmployee();
            }
        }

        protected void drdImage_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }
    }
}