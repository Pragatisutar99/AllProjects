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
    public partial class FrmEditTodaysAttendance : Form
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

        public FrmEditTodaysAttendance()
        {
            InitializeComponent();
        }

        public FrmEditTodaysAttendance(int batchId, string Batch, int courseId, string Course, int topicId, string Topic, string date)
        {
            InitializeComponent();
            BatchId = batchId;
            CourseId = courseId;
            TopicId = topicId;
            Date = date;
            
            this.Course = Course;
            this.Batch = Batch;
            this.Topic = Topic;
            


            BatchId = batchId;
            lblCourse.Text = Course;
            lblBatch.Text = Batch;
            lblTopic.Text = Topic;
            lblDate.Text = date;



        }

        private void grdEditTodayAttendance_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            if (e.ColumnIndex == 0)
            {

                string StudCode = grdEditTodayAttendance.CurrentRow.Cells[0].Value.ToString();
                string Attendance = grdEditTodayAttendance.CurrentRow.Cells[1].Value.ToString();
                //FrmEditTodaysAttendance frmEditTodays = new FrmEditTodaysAttendance();
                //frmEditTodays.Show();

            }

        }

        private void cmbbxTopic_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void FrmEditTodaysAttendance_Load(object sender, EventArgs e)
        {
            

            ClsTrainer obj = new ClsTrainer(BatchId);
            DataTable dt = new DataTable();
            dt = obj.ViewAttendance();
            grdEditTodayAttendance.DataSource = dt;
            grdEditTodayAttendance.Show();


            //DataGridViewButtonColumn btn = new DataGridViewButtonColumn();
            //grdEditTodayAttendance.Columns.Add(btn);
            //btn.HeaderText = "Edit";
            //btn.Text = "Edit";
            //btn.UseColumnTextForButtonValue = true;
            //btn.Name = "BtnEdit";

            
        }


        private void btnUpdate_Click(object sender, EventArgs e)
        {
            ClsTrainer obj = new ClsTrainer(BatchId);
            obj.UpdateAttendance();
            MessageBox.Show("update EditToday");
        }
    }
}
