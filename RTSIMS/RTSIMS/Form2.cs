using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RTSIMSLibrary.Trainer;

namespace RTSIMS
{
    public partial class Form2 : Form
    {
        public int BatchId;
        public string Batch;
        public int CourseId;
        public int Course;

        public Form2()
        {
            InitializeComponent();
        }
       
      

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            ClsTrainer cls = new ClsTrainer(CourseId);
            DataTable dt = cls.GetBatch();
            cmbbxCourse.ValueMember = "BatchId";
            cmbbxCourse.DisplayMember = "BatchName";
            cmbbxCourse.DataSource = dt;

                   
        }

        private void Form2_Load(object sender, EventArgs e)
        {

            ClsTrainer cls = new ClsTrainer();
            DataTable dt = cls.GetCourse();
            cmbbxCourse.ValueMember = "CourseId";
            cmbbxCourse.DisplayMember = "CourseName";
            cmbbxCourse.DataSource = dt;
        }
    }
}
