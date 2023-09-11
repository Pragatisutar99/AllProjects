using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace ShopManagement
{
    public partial class RUser : Form
    {
        
        public RUser()
        {
            InitializeComponent();
        }

        private void RUser_Load(object sender, EventArgs e)
        {
            cmbbxType.Text = "Admin";
            cmbbxType.Text = "Customer";

            cmbbxType.Text = "Maharashtra";
            cmbbxType.Text = "South India";
            

        }

        private void cmbbxType_SelectedIndexChanged(object sender, EventArgs e)
        {
          
     
        }

        private void rdbbtnMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string Gender =null;
            if (rdbbtnMale.Checked ==true)
            {
                Gender = "Male";
            }
            if (rdbbtnFemale.Checked == true)
            {
                Gender = "Female";

            }


            ClsShop obj = new ClsShop(cmbbxType.Text,txtName.Text,txtEmail.Text,Gender, cmbbxState.Text,txtMobileNumber.Text, txtPassword.Text);
            obj.SaveRUser();
            MessageBox.Show("Save Register");

            
        }

        private void txtMobileNumber_TextChanged(object sender, EventArgs e)
        {

        }

        private void cmbbxState_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Clear();
            txtEmail.Clear();
            txtMobileNumber.Clear();
            txtPassword.Clear();
        }
    }
}
