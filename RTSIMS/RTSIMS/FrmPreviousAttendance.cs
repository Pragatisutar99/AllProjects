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

namespace RTSIMSLibrary
{
    public partial class FrmPreviousAttendance : Form
    {
        public string StudCode { get; set; }
        public string StudFullName;
        public int BatchId { get; set; }
        public string Batch;
        public int CourseId { get; set; }
        public string Course;
        public int TopicId { get; set; }
        public string Topic;

      
        public string Date { get; set; }

        public string Attendance;

        public FrmPreviousAttendance()
        {
            InitializeComponent();
        }


        public FrmPreviousAttendance(int batchId, string Batch, int courseId, string Course, int topicId, string Topic, string date)
        {
            InitializeComponent();
            // StudCode = studCode;
            BatchId = batchId;
            CourseId = courseId;
            // BatchId = batchId;
            TopicId = topicId;
            this.Course = Course;
            this.Batch = Batch;
            this.Topic = Topic;
            Date = date;


            BatchId = batchId;
            lblCourse.Text = Course;
            lblBatch.Text = Batch;
            lblTopic.Text = Topic;
            lblDate.Text = date;



        }


        private void FrmPreviousAttendance_Load(object sender, EventArgs e)
        {

           
            ClsTrainer obj = new ClsTrainer( );
            DataTable dt = new DataTable();
            dt = obj.ViewAttendance();
            grdPreviousAttendance.DataSource = dt;
            StudCode = this.grdPreviousAttendance.Columns[0].Index.ToString();


        }

        private void cmbbxTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            //string Attendance = grdPreviousAttendance.CurrentRow.Cells[1].Value.ToString();
            ClsTrainer obj = new ClsTrainer(StudCode);
            obj.UpdateAttendance();
            MessageBox.Show("Update Successfully");
        }

        private void grdPreviousAttendance_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            if (e.ColumnIndex == 2)
            {
                string StudFullName = grdPreviousAttendance.CurrentRow.Cells[0].Value.ToString();
                string Attendance = grdPreviousAttendance.CurrentRow.Cells[1].Value.ToString();

            }
            //ClsTrainer obj = new ClsTrainer();
            //DataTable dt = new DataTable();
            //dt = obj.GetPresent();
            //grdPreviousAttendance.DataSource = dt;
            //grdPreviousAttendance.Show();

            //if (e.ColumnIndex == 6)
            //{
            //    int index = e.RowIndex;
            //    DataGridViewRow row = grdPreviousAttendance.Rows[index];
            //    CourseName = row.Cells[5].Value.ToString();
            //    TopicName = row.Cells[6].Value.ToString();
            //    Date = row.Cells[7].Value.ToString();
            //    FrmTodaysAttendance frmTodays = new FrmTodaysAttendance();
            //    frmTodays.Show();
            //}

        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            
        }
    }
}
