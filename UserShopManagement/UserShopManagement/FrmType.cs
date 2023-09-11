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
    public partial class FrmType : Form
    {
        public FrmType()
        {
            InitializeComponent();
        }

        private void FrmType_Load(object sender, EventArgs e)
        {

        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            ClsUser obj = new ClsUser(txtType.Text);
            obj.SaveType();
            MessageBox.Show("Save Type");
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtType.Clear();
        }
    }
}
