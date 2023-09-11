using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RTSIMSLibrary;
//using RTSIMSLibrary.Trainer;

namespace RTSIMS
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btndashboard_Click(object sender, EventArgs e)
        {
            frmAttendance attendance = new frmAttendance();
            attendance.Show();
        
           


        }

        private void btnCourse_Click(object sender, EventArgs e)
        {
            Form2 form = new Form2();
            form.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
