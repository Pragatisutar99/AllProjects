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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void teacherToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTeacher teacher = new frmTeacher();
            teacher.Show();
        }

        private void studentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmStudent obj = new FrmStudent();
            obj.Show();
        }

        private void marksToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmMarks marks = new FrmMarks();
            marks.Show();
        }

        //private void schedulesToolStripMenuItem_Click(object sender, EventArgs e)
        //{
           
        //}

        private void departmentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmDepartment department = new FrmDepartment();
            department.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
