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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
        }

        private void userToolStripMenuItem_Click(object sender, EventArgs e)
        {
            RUser obj = new RUser();
            obj.Show();
            

        }

        private void typeToolStripMenuItem_Click(object sender, EventArgs e)
        {

            FrmType Type = new FrmType();
            Type.Show();

        }

        private void productToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmProduct product = new FrmProduct();
            product.Show();
        }

        private void logInToolStripMenuItem_Click(object sender, EventArgs e)
        {
           Login log = new Login();
           log.Show();
        }

        private void orderToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Order obj = new Order();
            obj.Show();
        }

        private void sizeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmSize obj = new FrmSize();
            obj.Show();
        }
    }
}
