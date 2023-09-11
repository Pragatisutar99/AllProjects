using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace StudentManagement
{
    public partial class FrmStudent : Form
    {
        public string StudentName;
        public string StudEmail;
        public string SDOB;





        public FrmStudent()
        {
            InitializeComponent();
        }

        private void FrmStudent_Load(object sender, EventArgs e)
        {

        }

        private void btnSave_Click(object sender, EventArgs e)
        {

         
            
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtSName.Clear();
            txtSEmail.Clear();
            txtMobileNo.Clear();
            txtAddress.Clear();
            txtDOB.Clear();
            txtPassword.Clear();
            txtDepartmentName.Clear();
            txtTeacherName.Clear();
        }

        private void btnSave_Click_1(object sender, EventArgs e)
        {
            string Gender = null;
            if (rdbbtnFemale.Checked == true)
            {
                Gender = "Female";
            }
            if (rdbbtnMale.Checked == true)
            {
                Gender = "Male";
            }
            ClsStud stud = new ClsStud(txtSName.Text, txtSEmail.Text, txtMobileNo.Text, txtAddress.Text, txtDOB.Text, Gender, Convert.ToInt32(txtPassword.Text), txtDepartmentName.Text, txtTeacherName.Text);
            stud.SaveStudent();
            MessageBox.Show("Save Successfully");

        }

        //private void btnEdit_Click(object sender, EventArgs e)
        //{
           

        //}
    }
}
