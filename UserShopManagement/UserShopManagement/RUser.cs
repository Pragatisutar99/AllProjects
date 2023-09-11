using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UserShopManagement
{
    public partial class RUser : Form
    {
        public RUser()
        {
            InitializeComponent();
        }

        private void RUser_Load(object sender, EventArgs e)
        {
            cmbbxType.Items.Add("Admin");
            cmbbxType.Items.Add ("Customer");

            cmbbxState.Items.Add ( "Maharashtra");
            cmbbxState.Items.Add( "SoutIh India");

        }

        private void rdbbtnMale_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
          string Gender = null;
        if(rdbbtnMale.Checked==true)
            {
                Gender = "Male";
            }
        if (rdbbtnFemale.Checked == true)
            {
                Gender = "Female";
            }
            ClsUser obj = new ClsUser(cmbbxType.Text, txtName.Text, txtEmail.Text, Gender, cmbbxState.Text, txtMobileNumber.Text, Convert.ToInt32(txtPassword.Text));
            obj.SaveRUser();
            MessageBox.Show("Save Register");
          
        }
    }
}
