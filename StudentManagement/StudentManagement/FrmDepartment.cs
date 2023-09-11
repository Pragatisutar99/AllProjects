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
    public partial class FrmDepartment : Form
    {
        public FrmDepartment()
        {
            InitializeComponent();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
           
            ClsStud obj = new ClsStud(txtDName.Text,txtRemark.Text);
            obj.SaveDepartment();
            MessageBox.Show("Save Department");
            string DName, Remark;
            DName = txtDName.Text.ToString();
            Remark = txtRemark.Text.ToString();
            ListViewItem List = new ListViewItem(DName);           
            List.SubItems.Add(Remark);
            ListView.Items.Add(List);

        }

        private void FrmDepartment_Load(object sender, EventArgs e)
        {

        }

        private void ListView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
