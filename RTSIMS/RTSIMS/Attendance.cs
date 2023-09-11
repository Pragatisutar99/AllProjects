using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Security.Policy;
using Microsoft.Office;
using System.Xml.Linq;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;
using itextsharp.pdfa;
using System.Reflection;
using RTSIMS;
using RTSIMSLibrary.Trainer;

namespace RTSIMSLibrary
{
    public partial class frmAttendance : Form
    {



        public frmAttendance()
        {
            InitializeComponent();
        }
        public string StudCode;
        public int CourseId;
        public int BatchId;
        public int TopicId;
        public string Course;
        public string Batch;
        public string Topic;
        public string Duration;
        public string Date;
        public DateTime TodaysDate { get; set; }




        //frmAttendance attendance = new frmAttendance();
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Attendance_Load(object sender, EventArgs e)
        {


            ClsTrainer obj = new ClsTrainer();
            DataTable dt = new DataTable();
            dt = obj.ShowAttendance();
            dataGridView1.DataSource = dt;


        }

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {


            if (e.ColumnIndex == 0)
            {
                DateTime dateTime = DateTime.Now;
                int index = e.RowIndex;
                DataGridViewRow row = dataGridView1.Rows[index];
                BatchId = int.Parse(row.Cells[4].Value.ToString());
                Batch = row.Cells[5].Value.ToString();
                CourseId = int.Parse(row.Cells[6].Value.ToString());
                Course = row.Cells[7].Value.ToString();
                TopicId = int.Parse(row.Cells[8].Value.ToString());
                Topic = row.Cells[9].Value.ToString();
                //Duration = row.Cells[10].Value.ToString();
                Date = row.Cells[10].Value.ToString();
                FrmEditTodaysAttendance frmEditTodays = new FrmEditTodaysAttendance(BatchId, Batch, CourseId, Course, TopicId, Topic, dateTime.ToString());
                frmEditTodays.Show();

            }
            else if (e.ColumnIndex == 1)
            {
                DateTime dateTime = DateTime.Now;
                int index = e.RowIndex;
                DataGridViewRow row = dataGridView1.Rows[index];
                BatchId = int.Parse(row.Cells[4].Value.ToString());
                Batch = row.Cells[5].Value.ToString();
                CourseId = int.Parse(row.Cells[6].Value.ToString());
                Course = row.Cells[7].Value.ToString();
                TopicId = int.Parse(row.Cells[8].Value.ToString());
                Topic = row.Cells[9].Value.ToString();
                //Duration = row.Cells[10].Value.ToString();
                Date = row.Cells[10].Value.ToString();
                // Date = Date.Substring(1, 8);
                FrmViewTodaysAttendance frmTodays = new FrmViewTodaysAttendance(BatchId, Batch, CourseId, Course, TopicId, Topic, Date);
                frmTodays.Show();

            }
            else if (e.ColumnIndex == 2)
            {
                DateTime dateTime = DateTime.Now;
                int index = e.RowIndex;
                DataGridViewRow row = dataGridView1.Rows[index];
                BatchId = int.Parse(row.Cells[4].Value.ToString());
                Batch = row.Cells[5].Value.ToString();
                CourseId = int.Parse(row.Cells[6].Value.ToString());
                Course = row.Cells[7].Value.ToString();
                TopicId = int.Parse(row.Cells[8].Value.ToString());
                Topic = row.Cells[9].Value.ToString();
                //Duration = row.Cells[10].Value.ToString();
                Date = row.Cells[10].Value.ToString();
                FrmPreviousAttendance frmPrevious = new FrmPreviousAttendance(BatchId, Batch, CourseId, Course, TopicId, Topic, dateTime.ToString());
                frmPrevious.Show();
            }
            else if (e.ColumnIndex == 3)
            {
                DateTime dateTime = DateTime.Now;
                int index = e.RowIndex;
                DataGridViewRow row = dataGridView1.Rows[index];
                BatchId = int.Parse(row.Cells[4].Value.ToString());
                Batch = row.Cells[5].Value.ToString();
                CourseId = int.Parse(row.Cells[6].Value.ToString());
                Course = row.Cells[7].Value.ToString();
                TopicId = int.Parse(row.Cells[8].Value.ToString());
                Topic = row.Cells[9].Value.ToString();
                //Duration = row.Cells[10].Value.ToString();
                Date = row.Cells[10].Value.ToString();
                //TodaysDate = dateTime;

                FrmAddAttendance frm = new FrmAddAttendance(BatchId, Batch, CourseId, Course, TopicId, Topic, dateTime);
                frm.Show();
            }

        }

        private void btnAddAttendance_Click(object sender, EventArgs e)
        {
            // RTSIMS.FrmAddAttendance addAttendance = new RTSIMS.FrmAddAttendance();
            //addAttendance.Show();
        }

        //private void btnAddAttendance_Click(object sender, EventArgs e)
        //{

        //    //FrmAddAttendance  attendance = new FrmAddAttendance();
        //    //attendance.Show();

        //}

        private void pictureBox5_Click(object sender, EventArgs e)
        {

        }

        private void btnMonthlyAttendance_Click(object sender, EventArgs e)
        {

            FrmMonthlyAttendance Mattendance = new FrmMonthlyAttendance();
            Mattendance.Show();

        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            //(dataGridView1.DataSource as DataTable).DefaultView.RowFilter = string.Format("TopicName like '%'"+txtSearch.Text+"%'");

            ClsTrainer obj = new ClsTrainer(txtSearch.Text);
            DataTable dt = new DataTable();
            dt = obj.Search();
            dataGridView1.DataSource = dt;
            dataGridView1.Show();






        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {

        }

        //private void pictureBox3_Click(object sender, EventArgs e)
        //{

        // }

        private void pictureBox5_Click_1(object sender, EventArgs e)
        {

        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            ClsTrainer obj = new ClsTrainer();
            DataTable dt = new DataTable();
            dt = obj.ShowAttendance();
            dataGridView1.DataSource = dt;

        }

        private void pictureBox3_Click_1(object sender, EventArgs e)
        {
            if (dataGridView1.Rows.Count > 0)
            {
                Microsoft.Office.Interop.Excel.Application xcelApp = new Microsoft.Office.Interop.Excel.Application();
                xcelApp.Application.Workbooks.Add(Type.Missing);
                for (int i = 1; i < dataGridView1.Columns.Count; i++)
                {
                    xcelApp.Cells[1, i] = dataGridView1.Columns[i].HeaderText;
                }
                for (int k = 0; k < dataGridView1.Rows.Count - 1; k++)
                {
                    for (int j = 1; j < dataGridView1.Columns.Count; j++)
                    {
                        xcelApp.Cells[k + 1, j] = dataGridView1.Rows[k].Cells[j].Value.ToString();

                    }

                    xcelApp.Columns.AutoFit();
                    xcelApp.Visible = true;
                }
            }
        }


        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox2_Click_1(object sender, EventArgs e)
        {

            if (dataGridView1.Rows.Count > 0)
            {
                SaveFileDialog sfd = new SaveFileDialog();
                sfd.Filter = "PDF (*.pdf)|*.pdf";
                sfd.FileName = "Output.pdf";
                bool fileError = false;
                if (sfd.ShowDialog() == DialogResult.OK)
                {
                    if (File.Exists(sfd.FileName))
                    {
                        try
                        {
                            File.Delete(sfd.FileName);
                        }
                        catch (IOException ex)
                        {
                            fileError = true;
                            MessageBox.Show("It wasn't possible to write the data to the disk." + ex.Message);
                        }
                    }
                    if (!fileError)
                    {
                        try
                        {
                            PdfPTable pdfTable = new PdfPTable(dataGridView1.Columns.Count);
                            pdfTable.DefaultCell.Padding = 3;
                            pdfTable.WidthPercentage = 100;
                            pdfTable.HorizontalAlignment = Element.ALIGN_LEFT;

                            foreach (DataGridViewColumn column in dataGridView1.Columns)
                            {
                                PdfPCell cell = new PdfPCell(new Phrase(column.HeaderText));
                                pdfTable.AddCell(cell);
                            }

                            foreach (DataGridViewRow row in dataGridView1.Rows)
                            {
                                foreach (DataGridViewCell cell in row.Cells)
                                {
                                    pdfTable.AddCell(cell.Value.ToString());
                                }
                            }

                            using (FileStream stream = new FileStream(sfd.FileName, FileMode.Create))
                            {
                                Document pdfDoc = new Document(PageSize.A4, 10f, 20f, 20f, 10f);
                                PdfWriter.GetInstance(pdfDoc, stream);
                                pdfDoc.Open();
                                pdfDoc.Add(pdfTable);
                                pdfDoc.Close();
                                stream.Close();
                            }

                            MessageBox.Show("Data Exported Successfully !!!", "Info");
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show("Error :" + ex.Message);
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("No Record To Export !!!", "Info");
            }
        }

        private void pictureBox4_Click_1(object sender, EventArgs e)
        {

        }



        //private void pictureBox2_Click(object sender, EventArgs e)
        //{
        //    //DGVPrinter printer = new DGVPrinter();
        //    //printer.PageNumbers = true;
        //    //printer.PageNumberInHeader = false;
        //    // printer.PorportionalColumns = true;
        //    // printer.HeaderCellAlignment=StringAlignment.Near;
        //    // printer.PrinterDataGridView(dataGridView1);






        //}

        //private void btnAddAttendance_Click(object sender, EventArgs e)
        //{

        //}
    }

}
