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
    public partial class FrmProduct : Form
    {
        public FrmProduct()
        {
            InitializeComponent();
        }




        private void FrmProduct_Load(object sender, EventArgs e)
        {
            ClsUser objType = new ClsUser();
            DataTable dt = new DataTable();
            dt = objType.GetType();
            cmbbxType.ValueMember = "TypeId";
            cmbbxType.DisplayMember = "TypeName";
            cmbbxType.DataSource = dt;


        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            cmbbxType.Items.Clear();
            txtProductName.Clear();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            int TypeId = Convert.ToInt32(cmbbxType.SelectedValue.ToString());
            ClsUser obj = new ClsUser(TypeId, txtProductName.Text);
            obj.SaveProduct(); ;
            MessageBox.Show("Product Save");

        

    }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void cmbbxType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        //private void btnShow_Click(object sender, EventArgs e)
        //{
        //    int TypeId = Convert.ToInt32(txtProductName.Text);
        //    ClsUser obj = new ClsUser(TypeId);
        //    SqlDataReader dr;
        //    dr = obj.GetProduct();
        //    while (dr.Read())
        //    {
        //        cmbbxType.Text = dr["ProductName"].ToString();
        //    }
        //    dr.Close();
        //}
    }
}
