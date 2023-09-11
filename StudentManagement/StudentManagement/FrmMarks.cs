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
    public partial class FrmMarks : Form
    {
        public FrmMarks()
        {
            InitializeComponent();
        }

        private void FrmMarks_Load(object sender, EventArgs e)
        {

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            ClsStud obj = new ClsStud(txtSName.Text, txtSubject.Text,Convert.ToInt32(txtMark.Text), txtComment.Text);
            obj.SaveMark();
            MessageBox.Show("Save Successfully");

        }

        private void btnEdit_Click(object sender, EventArgs e)
        {

        }
    }
}
