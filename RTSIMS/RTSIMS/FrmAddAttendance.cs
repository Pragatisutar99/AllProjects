using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using RTSIMSLibrary.Trainer;
namespace RTSIMS
{
    public partial class FrmAddAttendance : Form
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
        public string Date { get;  set; }

        public string Attendance;
        //private DateTime dateTime;

        //private string batch;
        //private string course;
        //private string topic;
        //private string date;

        //public int TopicId;
        //public string StudCode;
        //public string TopicName;
        public DateTime AttendanceDate { get; set; }
        public FrmAddAttendance()
        {
            InitializeComponent();

        }

      

        //public FrmAddAttendance(int batchId, string Batch, int courseId, string Course, int topicId ,string Topic, DateTime attendancedate,string attendance)
        //{
        //    InitializeComponent();
        //   //StudCode = studCode;
        //    BatchId = batchId;
        //    CourseId = courseId;
        //   // BatchId = batchId;
        //    TopicId = topicId;
        //    AttendanceDate = attendancedate;
        //    this.Course = Course;
        //    this.Batch = Batch;
        //    this.Topic = Topic;
        //    this.Attendance = attendance;
            


        //    BatchId = batchId;
        //    lblCourse.Text = Course; 
        //    lblBatch.Text = Batch;
        //    lblTopic.Text = Topic;
        //    lblDate.Text = AttendanceDate.ToString();



        //}

        public FrmAddAttendance(string studCode, int batchId)
        {
            StudCode = studCode;
            BatchId = batchId;
        }

        public FrmAddAttendance(int batchId, string batch, int courseId, string course, int topicId, string topic, DateTime attendanceDate)
        {
            InitializeComponent();
            BatchId = batchId;
            Batch = batch;
            CourseId = courseId;
            Course = course;
            TopicId = topicId;
            Topic = topic;
            this.AttendanceDate = attendanceDate;

            BatchId = batchId;
            lblCourse.Text = Course;
            //lblBatch.Text = Batch;
            //lblTopic.Text = Topic;
            lblDate.Text = AttendanceDate.ToString();




        }

        private void FrmAddAttendance_Load(object sender, EventArgs e)
        {

          
            ClsTrainer clsTrainer = new ClsTrainer(BatchId);
            DataTable dt = new DataTable();
            dt = clsTrainer.GetByStudBatchId();
            grdAddAttendance.DataSource = dt;
            grdAddAttendance.Columns[2].Visible = false;


        }

        

        private void lblCourse_Click(object sender, EventArgs e)
        {

        }


        //private void cmbbxTopic_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    int TopicId = Convert.ToInt32(cmbbxTopic.SelectedValue.ToString());
        //    ClsTrainer obj = new ClsTrainer();
        //    DataTable dt = new DataTable();
        //    dt = obj.GetTopic();
        //    grdAddAttendance.DataSource = dt;
        //    grdAddAttendance.Show();
        //}



        private void btnSave_Click(object sender, EventArgs e)
        {

            ////DataGridViewCheckBoxColumn cheked1 = new DataGridViewCheckBoxColumn();
            //DataGridViewCheckBoxColumn cheked = new DataGridViewCheckBoxColumn();


            //grdAddAttendance.Columns.Add(cheked);
            //cheked.HeaderText = "Present/Absent";
            //cheked.Name = "cheked";
            //cheked.Selected = true;


            //foreach (DataGridViewRow row in grdAddAttendance.Rows)
            //{

            //    if (Convert.ToInt32(row.Cells[0].Value) == 1)
            //    {







            foreach (DataGridViewRow row in grdAddAttendance.Rows)
            {
                if (Convert.ToInt32(row.Cells[0].Value) == 1)
                {

                    string StudCode = row.Cells[2].Value.ToString();
                    Course = lblCourse.Text.ToString();
                    Batch = lblBatch.Text.ToString();
                    Topic = cmbbxTopic.Text.ToString();
                    Date = lblDate.Text.ToString();
                    string Attendance = row.Cells[0].Value.ToString();
                    ClsTrainer obj = new ClsTrainer(StudCode, CourseId, BatchId, TopicId, Date, Attendance);
                    obj.InsertAttendance();

                }
                else if (Convert.ToInt32(row.Cells[1].Value) == 1)
                {
                    
                    string StudCode = row.Cells[2].Value.ToString();
                    Course = lblCourse.Text.ToString();
                    Batch = lblBatch.Text.ToString();
                    Topic = cmbbxTopic.Text.ToString();
                    Date = lblDate.Text.ToString();
                    // string Attendance = row.Cells[1].Value.ToString();
                    string Attendance = "0";
                    ClsTrainer obj = new ClsTrainer(StudCode, CourseId, BatchId, TopicId, Date, Attendance);
                    obj.InsertAttendance();
                    



                }

            }
            MessageBox.Show("Saved Successfully");
        }



        private void grdAddAttendance_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void grdAddAttendance_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {
          
            //for (int i = 0; i < grdAddAttendance.Rows.Count - 1; i++)
            //{
            //    if (e.ColumnIndex == 0)
            //    {
            //        grdAddAttendance.Rows[i].Cells["Prsesnt"].Value = true;
            //    }
            //    if (e.ColumnIndex == 1)
            //    {
            //        grdAddAttendance.Rows[i].Cells["Absent"].Value = false;
            //    }
            //}
            //MessageBox.Show("Saved Successfully");

            //if (e.ColumnIndex == 3)
            //{ 
            // string StudCode  = (grdAddAttendance.CurrentRow.Cells[2].Value.ToString());
            //    FrmAddAttendance frm = new FrmAddAttendance(StudCode,BatchId);
            //    frm.Show();
            //}
            //ClsTrainer obj = new ClsTrainer();
            //DataTable dt = new DataTable();
            //dt = obj.GetPresent();
            //grdAddAttendance.DataSource = dt;
            //grdAddAttendance.Show();




            /*for (int i = 0; i < grdAddAttendance.Rows.Count - 1; i++)
              {
                if (e.ColumnIndex == 0  &&  e.RowIndex !=-1)
                {
                    grdAddAttendance.Rows[i].Cells["Prsesnt"].Value = true;
                }
                if  (e.ColumnIndex == 1 && e.RowIndex !=-0)
                {
                    grdAddAttendance.Rows[i].Cells["Absent"].Value = false;
                }
            }*/

        }

        private void cmbbxBatch_SelectedIndexChanged(object sender, EventArgs e)
        {
            //grdAddAttendance.Hide();



            //int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            //ClsTrainer objBatch = new ClsTrainer();
            //DataTable dt2 = objBatch.GetBatch();
            //cmbbxCourse.ValueMember = "BatchId";
            //cmbbxCourse.DisplayMember = "BatchName";
            //cmbbxCourse.DataSource = dt2;
            //grdAddAttendance.DataSource = dt2;
            //grdAddAttendance.Show();


        }

        private void cmbbxCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            ////    /*int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            //    ClsTrainer objCourse = new ClsTrainer();
            //    DataTable dt1 = new DataTable();
            //    dt1 = objCourse.GetCourse();
            //    cmbbxCourse.ValueMember = "CourseId";
            //    cmbbxCourse.DisplayMember = "CourseName";
            //    cmbbxCourse.DataSource = dt1;*/



            //int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            //ClsTrainer objBatch = new ClsTrainer();
            //DataTable dt2 = objBatch.GetBatch();
            //cmbbxBatch.ValueMember = "BatchId";
            //cmbbxBatch.DisplayMember = "BatchName";
            //cmbbxBatch.DataSource = dt2;


            ////int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            //ClsTrainer obj = new ClsTrainer(int.Parse(cmbbxCourse.SelectedValue.ToString()));
            //DataTable dt = obj.GetTopic();
            //cmbbxTopic.ValueMember = "Topicid";
            //cmbbxTopic.DisplayMember = "TopicName";
            //cmbbxTopic.DataSource = dt;



            //}
        }

        private void grdAddAttendance_CellContentClick_2(object sender, DataGridViewCellEventArgs e)
        {


            //if (e.ColumnIndex == 3)
            //{

            //    string StudCode = grdAddAttendance.CurrentRow.Cells[2].Value.ToString();
            //    //string Attendance = grdAddAttendance.CurrentRow.Cells[1].Value.ToString();
            //    //FrmAddAttendance frm = new FrmAddAttendance();
            //    //frm.Show();

            //}

       }

        private void cmbbxTopic_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            //int TopicId = Convert.ToInt32(cmbbxTopic.SelectedValue.ToString());
            ClsTrainer obj = new ClsTrainer(Convert.ToInt32(cmbbxTopic.SelectedValue.ToString()));
            DataTable dt = new DataTable();
            dt = obj.GetTopic();
            cmbbxTopic.ValueMember = "TopicId";
            cmbbxTopic.DisplayMember = "TopicName";
            cmbbxTopic.DataSource = dt;

        }


        /*int columnIndex = e.ColumnIndex;
        int rowIndex = e.RowIndex;

        DataGridViewCheckBoxCell chkYes = grdAddAttendance.Rows[rowIndex].Cells[0] as DataGridViewCheckBoxCell;
        DataGridViewCheckBoxCell chkNo = grdAddAttendance.Rows[rowIndex].Cells[1] as DataGridViewCheckBoxCell;


        if (Convert.ToBoolean(chkYes.Value) == true)
        {

        }

        if (Convert.ToBoolean(chkNo.Value) == true)
        {

        }*/


    }
       

       




        //if (e.ColumnIndex == 3)
        //{
        //    string StudCode  =(grdAddAttendance.CurrentRow.Cells[2].Value.ToString());
        //}
        //ClsTrainer obj = new ClsTrainer();
        //DataTable dt = new DataTable();
        //dt = obj.GetPresent();
        //grdAddAttendance.DataSource = dt;
        ////grdAddAttendance.Show();
        //if (e.ColumnIndex == 3)
        //{
        //    string StudCode = (grdAddAttendance.CurrentRow.Cells[2].Value.ToString());
        //        FrmAddAttendance frm = new FrmAddAttendance(StudCode, BatchId);
        //       frm.Show();
        //}
}

