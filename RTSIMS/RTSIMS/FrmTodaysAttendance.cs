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
using RTSIMSLibrary.Trainer;

namespace RTSIMSLibrary
{
    public partial class FrmViewTodaysAttendance : Form
    {
        public string StudCode { get; set; }
        public string StudFullName;
        public int BatchId { get; set; }
        public string Batch;
        public int CourseId { get; set; }
        public string Course;
        public int TopicId { get; set; }
        public string Topic;

        //  public string Date1 { get; set; }
        public string Date { get; set; }

        public string Attendance;
        public DateTime AttendanceDate { get; set; }

        //public string Course { get; set; }
        //public string Topic { get; set; }

        public FrmViewTodaysAttendance()
        {
            InitializeComponent();
        }
        
       
        public FrmViewTodaysAttendance( int batchId, string Batch, int courseId, string Course, int topicId, string Topic, string attendancedate)
        {
            InitializeComponent();
            // StudCode = studCode;
            
            BatchId = batchId;
            CourseId = courseId;
            // BatchId = batchId;
            TopicId = topicId;
          //  AttendanceDate = attendancedate;
            this.Course = Course;
            this.Batch = Batch;
            this.Topic = Topic;
            
            BatchId = batchId;
            lblCourse.Text = Course;
            lblBatch.Text = Batch;
            lblTopic.Text = Topic;
            lblDate.Text = attendancedate;//AttendanceDate.ToString();




        }

     

        private void grdTodaysAttendance_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            if (e.ColumnIndex == 1)
            {
                string StudFullName = grdTodaysAttendance.CurrentRow.Cells[0].Value.ToString();
            //    string Attendance = grdTodaysAttendance.CurrentRow.Cells[1].Value.ToString();

            }
            //ClsTrainer obj = new ClsTrainer();
            //DataTable dt = new DataTable();
            //dt = obj.GetPresent();
            //grdTodaysAttendance.DataSource = dt;
            //grdTodaysAttendance.Show();


            //FrmTodaysAttendance frmTodays = new FrmTodaysAttendance();
            //frmTodays.Show();






        }



        //private void FrmTodaysAttendance_Load(object sender, EventArgs e)
        //{


        //}


        //private void cmbbxTopic_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int TopicId = Convert.ToInt32(cmbbxTopic.SelectedValue.ToString());
        //    ClsTrainer obj = new ClsTrainer();
        //    DataTable dt = new DataTable();
        //    dt = obj.GetPresent();
        //    grdTodaysAttendance.DataSource = dt;
        //    grdTodaysAttendance.Show();
        //}

        private void btnClear_Click(object sender, EventArgs e)
        {

            
          
        }

        private void btnSave_Click_1(object sender, EventArgs e)
        {

         
            ////string StudCode = grdTodaysAttendance.Rows[0].Selected.ToString();
            ////string Attendance = grdTodaysAttendance.Rows[1].Selected.ToString();
            ////ClsTrainer obj = new ClsTrainer(StudCode,Attendance);
            ////obj.SaveAttendance();
            ////MessageBox.Show("Save TodayAttendance");


        }


        private void FrmTodaysAttendance_Load_1(object sender, EventArgs e)
        {


            ClsTrainer clsTrainer = new ClsTrainer(BatchId);
            DataTable dt = new DataTable();
            dt = clsTrainer.GetByStudBatchId();




            ClsTrainer obj = new ClsTrainer();
            DataTable dt1 = new DataTable();
            dt1 = obj.ViewAttendance();
            grdTodaysAttendance.DataSource = dt1;
            grdTodaysAttendance.Show();



            //int BatchId = Convert.ToInt32(cmbbxBatch.SelectedValue.ToString());
            ClsTrainer objBatch = new ClsTrainer();
            DataTable dt2 = objBatch.GetBatch();
            cmbbxTopic.ValueMember = "BatchId";
            cmbbxTopic.DisplayMember = "BatchName";
            cmbbxTopic.DataSource = dt2;


        }

        private void cmbbxBatch_SelectedIndexChanged(object sender, EventArgs e)
        {

           
            int Topic = Convert.ToInt32(cmbbxTopic.SelectedValue.ToString());
            ClsTrainer obj = new ClsTrainer(BatchId);
            DataTable dt2 = obj.GetBatch();
            cmbbxTopic.ValueMember = "TopicId";
            cmbbxTopic.DisplayMember = "TopicName";
            cmbbxTopic.DataSource = dt2;
        }
    }
}