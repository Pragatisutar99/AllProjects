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


namespace UserShopManagement
{
    public partial class FrmSize : Form
    {
        public FrmSize()
        {
            InitializeComponent();
        }

        private void cmbbxType_SelectedIndexChanged(object sender, EventArgs e)
        {
            int TypeId = Convert.ToInt32(cmbbxType.SelectedValue.ToString());
            ClsUser obj = new ClsUser(TypeId);
            DataTable dt1 = new DataTable();
            dt1 = obj.GProduct();
            cmbbxProductName.ValueMember = "TypeId";
            cmbbxProductName.DisplayMember = "ProductName";
            cmbbxProductName.DataSource = dt1;
        }

        private void FrmSize_Load(object sender, EventArgs e)
        {
            
            ClsUser obj = new ClsUser();
            DataTable dt = new DataTable();
            dt = obj.GetType();
            cmbbxType.ValueMember = "TypeId";
            cmbbxType.DisplayMember = "TypeName";
            cmbbxType.DataSource = dt;

        }  

        private void btnSave_Click(object sender, EventArgs e)
        {
            int TypeID = Convert.ToInt32(cmbbxType.SelectedValue.ToString());
            int ProductID = Convert.ToInt32(cmbbxProductName.SelectedValue.ToString());
            ClsUser objSize = new ClsUser(TypeID, ProductID, txtsize.Text, Convert.ToInt32(txtMRP.Text), Convert.ToInt32(txtRealPrice.Text));
            objSize.SaveSize();
            MessageBox.Show("Save Size");
           
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtsize.Clear();
            txtMRP.Clear();
            txtRealPrice.Clear();
            cmbbxType.Items.Clear();
            cmbbxProductName.Items.Clear();
        }
    }
}
