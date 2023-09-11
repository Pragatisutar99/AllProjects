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

namespace StudentManagement
{
    public partial class FrmUpdateTeacher : Form
    {

        public int TeacherId { get; set; }

        public FrmUpdateTeacher(int teacherid)
        {
            TeacherId = teacherid;
            InitializeComponent();
        }

        private void FrmUpdateTeacher_Load(object sender, EventArgs e)
        {
            ClsStud stud = new ClsStud(TeacherId);
            SqlDataReader dr;
            dr = stud.FetchTeacher();
            if (dr.Read())
            {
                
                txtName.Text= dr["TName"].ToString();
                txtEmail.Text = dr["Email"].ToString();
                txtDOB.Text = dr["DOB"].ToString();
                txtSalary.Text = dr["Salary"].ToString();
                txtPassword.Text = dr["Password"].ToString();
               

            }
            dr.Close();



        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
         
           ClsStud stud = new ClsStud( TeacherId,txtName.Text, txtEmail.Text, txtDOB.Text, Convert.ToInt32(txtSalary.Text), Convert.ToInt32(txtPassword.Text));
           stud.UpdateTInfo();
            MessageBox.Show("Updated Successfully");

        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Clear();
            txtEmail.Clear();
            txtDOB.Clear();
            txtSalary.Clear();
            txtPassword.Clear();
        }
    }
}
