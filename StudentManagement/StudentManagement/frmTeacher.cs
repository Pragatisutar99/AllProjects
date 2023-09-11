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
    public partial class frmTeacher : Form
    {
       // public int TeacherId { get; private set; }
        public string teacherId { get; private set; }

        public frmTeacher()
        {
            InitializeComponent();
        }

        private void frmTeacher_Load(object sender, EventArgs e)
        {
            ClsStud obj = new ClsStud();
            DataTable dt = obj.GetT();
            grdTeacher.DataSource = dt;
            grdTeacher.Show();
            teacherId=this.grdTeacher.Columns[1].Index.ToString();

        }
        private void btnSave_Click(object sender, EventArgs e)
        {
            //string TName = txtName.Text;
            //string Email = txtEmail.Text;
            //int Salary = Convert.ToInt32(txtSalary.Text);
            //string DOB = txtDOB.Text;
            ClsStud cls = new ClsStud(txtName.Text, txtEmail.Text, txtDOB.Text, Convert.ToInt32(txtSalary.Text), Convert.ToInt32(txtPassword.Text));
            cls.SaveTeacherInfo();
            MessageBox.Show("Save TInformation");
         



        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {

            //string TName = txtName.Text;
            //string Email = txtEmail.Text;
            //int Salary = Convert.ToInt32(txtSalary);
            //string DOB = txtDOB.Text;
            //int Password = Convert.ToInt32(txtPassword.Text);
            //ClsStud stud = new ClsStud(TeacherId , txtName.Text, txtEmail.Text, txtDOB.Text, Convert.ToInt32(txtSalary.Text), Convert.ToInt32(txtPassword.Text));        
            //stud.UpdateTInfo();
            //MessageBox.Show("Updated Successfully");


        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            txtName.Clear();
            txtEmail.Clear();
            txtDOB.Clear();
            txtSalary.Clear();
            txtPassword.Clear();
        }

        private void grdTeacher_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
              
        }

        private void grdTeacher_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            { 
             FrmUpdateTeacher frm=new FrmUpdateTeacher(Convert.ToInt32(teacherId));
                frm.Show();
            }
          
        }
    }
}
