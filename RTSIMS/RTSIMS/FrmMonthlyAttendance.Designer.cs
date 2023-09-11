
namespace RTSIMSLibrary
{
    partial class FrmMonthlyAttendance
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.grdMonthlyAttendance = new System.Windows.Forms.DataGridView();
            this.cmbbxCourse = new System.Windows.Forms.ComboBox();
            this.cmbbxBatch = new System.Windows.Forms.ComboBox();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.lblEndDate = new System.Windows.Forms.Label();
            this.lblStartDate = new System.Windows.Forms.Label();
            this.lblTopic = new System.Windows.Forms.Label();
            this.lblCourse = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbbxTopic = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.grdMonthlyAttendance)).BeginInit();
            this.SuspendLayout();
            // 
            // grdMonthlyAttendance
            // 
            this.grdMonthlyAttendance.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdMonthlyAttendance.Location = new System.Drawing.Point(37, 95);
            this.grdMonthlyAttendance.Name = "grdMonthlyAttendance";
            this.grdMonthlyAttendance.RowHeadersWidth = 62;
            this.grdMonthlyAttendance.RowTemplate.Height = 28;
            this.grdMonthlyAttendance.Size = new System.Drawing.Size(1647, 535);
            this.grdMonthlyAttendance.TabIndex = 36;
            this.grdMonthlyAttendance.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grdMonthlyAttendance_CellContentClick);
            // 
            // cmbbxCourse
            // 
            this.cmbbxCourse.FormattingEnabled = true;
            this.cmbbxCourse.Location = new System.Drawing.Point(125, 31);
            this.cmbbxCourse.Name = "cmbbxCourse";
            this.cmbbxCourse.Size = new System.Drawing.Size(188, 28);
            this.cmbbxCourse.TabIndex = 35;
            this.cmbbxCourse.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // cmbbxBatch
            // 
            this.cmbbxBatch.FormattingEnabled = true;
            this.cmbbxBatch.Location = new System.Drawing.Point(471, 34);
            this.cmbbxBatch.Name = "cmbbxBatch";
            this.cmbbxBatch.Size = new System.Drawing.Size(159, 28);
            this.cmbbxBatch.TabIndex = 34;
            this.cmbbxBatch.SelectedIndexChanged += new System.EventHandler(this.cmbbxBatch_SelectedIndexChanged);
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(1434, 28);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(207, 26);
            this.dateTimePicker2.TabIndex = 33;
            this.dateTimePicker2.ValueChanged += new System.EventHandler(this.dateTimePicker2_ValueChanged);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(1090, 29);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(203, 26);
            this.dateTimePicker1.TabIndex = 32;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // lblEndDate
            // 
            this.lblEndDate.AutoSize = true;
            this.lblEndDate.Location = new System.Drawing.Point(1329, 29);
            this.lblEndDate.Name = "lblEndDate";
            this.lblEndDate.Size = new System.Drawing.Size(77, 20);
            this.lblEndDate.TabIndex = 31;
            this.lblEndDate.Text = "End Date";
            // 
            // lblStartDate
            // 
            this.lblStartDate.AutoSize = true;
            this.lblStartDate.Location = new System.Drawing.Point(982, 34);
            this.lblStartDate.Name = "lblStartDate";
            this.lblStartDate.Size = new System.Drawing.Size(83, 20);
            this.lblStartDate.TabIndex = 30;
            this.lblStartDate.Text = "Start Date";
            // 
            // lblTopic
            // 
            this.lblTopic.AutoSize = true;
            this.lblTopic.Location = new System.Drawing.Point(678, 40);
            this.lblTopic.Name = "lblTopic";
            this.lblTopic.Size = new System.Drawing.Size(47, 20);
            this.lblTopic.TabIndex = 29;
            this.lblTopic.Text = "Topic";
            // 
            // lblCourse
            // 
            this.lblCourse.AutoSize = true;
            this.lblCourse.Location = new System.Drawing.Point(33, 34);
            this.lblCourse.Name = "lblCourse";
            this.lblCourse.Size = new System.Drawing.Size(60, 20);
            this.lblCourse.TabIndex = 28;
            this.lblCourse.Text = "Course";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(370, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(51, 20);
            this.label1.TabIndex = 37;
            this.label1.Text = "Batch";
            // 
            // cmbbxTopic
            // 
            this.cmbbxTopic.FormattingEnabled = true;
            this.cmbbxTopic.Location = new System.Drawing.Point(764, 31);
            this.cmbbxTopic.Name = "cmbbxTopic";
            this.cmbbxTopic.Size = new System.Drawing.Size(159, 28);
            this.cmbbxTopic.TabIndex = 38;
            this.cmbbxTopic.SelectedIndexChanged += new System.EventHandler(this.cmbbxTopic_SelectedIndexChanged);
            // 
            // FrmMonthlyAttendance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1734, 684);
            this.Controls.Add(this.cmbbxTopic);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.grdMonthlyAttendance);
            this.Controls.Add(this.cmbbxCourse);
            this.Controls.Add(this.cmbbxBatch);
            this.Controls.Add(this.dateTimePicker2);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.lblEndDate);
            this.Controls.Add(this.lblStartDate);
            this.Controls.Add(this.lblTopic);
            this.Controls.Add(this.lblCourse);
            this.Name = "FrmMonthlyAttendance";
            this.Text = "FrmMonthlyAttendance";
            this.Load += new System.EventHandler(this.FrmMonthlyAttendance_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grdMonthlyAttendance)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView grdMonthlyAttendance;
        private System.Windows.Forms.ComboBox cmbbxCourse;
        private System.Windows.Forms.ComboBox cmbbxBatch;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label lblEndDate;
        private System.Windows.Forms.Label lblStartDate;
        private System.Windows.Forms.Label lblTopic;
        private System.Windows.Forms.Label lblCourse;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbbxTopic;
    }
}