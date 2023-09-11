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
using System.Data.SqlClient;

namespace RTSIMSLibrary
{
    public partial class FrmMonthlyAttendance : Form
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
         
        public DateTimePicker StartDate { get; set; }
        public DateTimePicker EndDate { get; set; }
       
       
        public FrmMonthlyAttendance()
        {
            InitializeComponent();
        }

        public FrmMonthlyAttendance(string studcode)
        {
            InitializeComponent();
            StudCode = studcode;

         
        }




        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
           



            ClsTrainer obj = new ClsTrainer();
            DataTable dt = obj.GetBatch();
            cmbbxBatch.ValueMember = "BatchId";
            cmbbxBatch.DisplayMember = "BatchName";
            cmbbxBatch.DataSource = dt;


            int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            ClsTrainer objCourse = new ClsTrainer(CourseId);
            DataTable dt2 = objCourse.GetCT();
            cmbbxTopic.ValueMember = "TopicId";
            cmbbxTopic.DisplayMember = "TopicName";
            cmbbxTopic.DataSource = dt2;
           

        }

        private void cmbbxTopic_SelectedIndexChanged(object sender, EventArgs e)
        {

             int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            // int BatchId = Convert.ToInt32(cmbbxBatch.SelectedValue.ToString());
             int TopicId = Convert.ToInt32(cmbbxTopic.SelectedValue.ToString());
             ClsTrainer objMonth = new ClsTrainer(CourseId, TopicId);
             DataTable dt1 = new DataTable();
             dt1 = objMonth.GetCT();
             cmbbxTopic.ValueMember = "TopicId";
             cmbbxTopic.DisplayMember = "TopicName";
             cmbbxTopic.DataSource = dt1;




























            //grdMonthlyAttendance.DataSource = dt;
            //grdMonthlyAttendance.Show();

            //int TopicId = Convert.ToInt32(cmbbxTopic.SelectedValue.ToString());
            //ClsTrainer obj = new ClsTrainer(TopicId);
            //cmbbxTopic.ValueMember = "TopicId";
            //cmbbxTopic.DisplayMember = "TopicName";
            //cmbbxTopic.DataSource = dt;



        }


        private void FrmMonthlyAttendance_Load(object sender, EventArgs e)
        {

            ClsTrainer trainer = new ClsTrainer(StudCode);
            DataTable dt1 = trainer.MonthlyAttendance();
            grdMonthlyAttendance.DataSource = dt1;
            grdMonthlyAttendance.Show();



            DateTime AttendanceDate = DateTime.Now;
            ClsTrainer objCourse = new ClsTrainer();
            DataTable dt = objCourse.GetCourse();
            cmbbxCourse.ValueMember = "CourseId";
            cmbbxCourse.DisplayMember = "CourseName";
            cmbbxCourse.DataSource = dt;




            DataTable month = new DataTable();






            ////' now send data to our grid table
            ////Dim dPtr As Integer     ' day pointer
            ////Dim EmpID As Integer = 0
            ////Dim newRow As DataRow = Nothing

            //foreach (DataGridViewRow row in grdMonthlyAttendance.Rows)
               

            //     If (DataGridViewRow("StudCode") <> StudCode)
            //    {

            //      }
            //    ' start of new employee
            //    If EmpID<> 0 Then
            //        MyTable.Rows.Add(newRow)   ' add existing working row
            //    End If
            //    newRow = MyTable.NewRow     ' start a new row
            //    EmpID = OneRow("EmpID")
            //    newRow("EmpID") = EmpID
            //End If

            //dPtr = Day(OneRow("ADate"))
            //newRow(dPtr) = "P"
            //Next
            //     ' send last row
            //      MyTable.Rows.Add(newRow)

            //   ' send our data to the grid
            //         GridView1.DataSource = MyTable
            //          GridView1.DataBind()





















        }

        private void cmbbxBatch_SelectedIndexChanged(object sender, EventArgs e)
        {
            int CourseId = Convert.ToInt32(cmbbxCourse.SelectedValue.ToString());
            int BatchId = Convert.ToInt32(cmbbxBatch.SelectedValue.ToString());
            ClsTrainer objBatch = new ClsTrainer(CourseId,BatchId);
            DataTable dt2 = objBatch.GetBatch();
            cmbbxTopic.ValueMember = "TopicId";
            cmbbxTopic.DisplayMember = "TopicName";
            cmbbxTopic.DataSource = dt2;
            //grdMonthlyAttendance.DataSource = dt2;
            //grdMonthlyAttendance.Show();

        }

        private void grdMonthlyAttendance_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            string StudCode = grdMonthlyAttendance.CurrentRow.Cells[0].Value.ToString();
            //Date=(grdMonthlyAttendance.CurrentRow.Cells[1].Value.ToString());
            ClsTrainer cls = new ClsTrainer(StudCode,CourseId,BatchId,TopicId);
            DataTable dt = new DataTable();
            grdMonthlyAttendance.DataSource = dt;
            FrmMonthlyAttendance frm = new FrmMonthlyAttendance(StudCode);
               frm.Show();




        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            if (DateTime.Today > dateTimePicker1.Value)
            {
                MessageBox.Show("You selected data is invalid..", "invalid input", MessageBoxButtons.OK);
                dateTimePicker1.Value = DateTime.Today;
            }
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            if (DateTime.Today > dateTimePicker2.Value)
            {
                MessageBox.Show("You selected data is invalid..", "invalid input", MessageBoxButtons.OK);
                dateTimePicker2.Value = DateTime.Today;
            }
        }
    }
}
