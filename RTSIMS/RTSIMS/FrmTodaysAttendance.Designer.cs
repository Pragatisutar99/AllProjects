
namespace RTSIMSLibrary
{
    partial class FrmViewTodaysAttendance
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
            this.grdTodaysAttendance = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.lblTopic = new System.Windows.Forms.Label();
            this.lblCourse1 = new System.Windows.Forms.Label();
            this.lblDate = new System.Windows.Forms.Label();
            this.lblDate1 = new System.Windows.Forms.Label();
            this.lblCourse = new System.Windows.Forms.Label();
            this.cmbbxBatch = new System.Windows.Forms.ComboBox();
            this.cmbbxTopic = new System.Windows.Forms.ComboBox();
            this.lblBatch = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.grdTodaysAttendance)).BeginInit();
            this.SuspendLayout();
            // 
            // grdTodaysAttendance
            // 
            this.grdTodaysAttendance.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdTodaysAttendance.Location = new System.Drawing.Point(764, 64);
            this.grdTodaysAttendance.Name = "grdTodaysAttendance";
            this.grdTodaysAttendance.RowHeadersWidth = 62;
            this.grdTodaysAttendance.RowTemplate.Height = 28;
            this.grdTodaysAttendance.Size = new System.Drawing.Size(594, 396);
            this.grdTodaysAttendance.TabIndex = 57;
            this.grdTodaysAttendance.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grdTodaysAttendance_CellContentClick);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(691, 64);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(0, 20);
            this.label3.TabIndex = 72;
            // 
            // lblTopic
            // 
            this.lblTopic.AutoSize = true;
            this.lblTopic.Location = new System.Drawing.Point(383, 244);
            this.lblTopic.Name = "lblTopic";
            this.lblTopic.Size = new System.Drawing.Size(47, 20);
            this.lblTopic.TabIndex = 112;
            this.lblTopic.Text = "Topic";
            // 
            // lblCourse1
            // 
            this.lblCourse1.AutoSize = true;
            this.lblCourse1.Location = new System.Drawing.Point(383, 112);
            this.lblCourse1.Name = "lblCourse1";
            this.lblCourse1.Size = new System.Drawing.Size(69, 20);
            this.lblCourse1.TabIndex = 109;
            this.lblCourse1.Text = "Course1";
            // 
            // lblDate
            // 
            this.lblDate.AutoSize = true;
            this.lblDate.Location = new System.Drawing.Point(554, 315);
            this.lblDate.Name = "lblDate";
            this.lblDate.Size = new System.Drawing.Size(44, 20);
            this.lblDate.TabIndex = 108;
            this.lblDate.Text = "Date";
            // 
            // lblDate1
            // 
            this.lblDate1.AutoSize = true;
            this.lblDate1.Location = new System.Drawing.Point(388, 315);
            this.lblDate1.Name = "lblDate1";
            this.lblDate1.Size = new System.Drawing.Size(53, 20);
            this.lblDate1.TabIndex = 106;
            this.lblDate1.Text = "Date1";
            // 
            // lblCourse
            // 
            this.lblCourse.AutoSize = true;
            this.lblCourse.Location = new System.Drawing.Point(545, 112);
            this.lblCourse.Name = "lblCourse";
            this.lblCourse.Size = new System.Drawing.Size(60, 20);
            this.lblCourse.TabIndex = 105;
            this.lblCourse.Text = "Course";
            // 
            // cmbbxBatch
            // 
            this.cmbbxBatch.FormattingEnabled = true;
            this.cmbbxBatch.Location = new System.Drawing.Point(521, 163);
            this.cmbbxBatch.Name = "cmbbxBatch";
            this.cmbbxBatch.Size = new System.Drawing.Size(127, 28);
            this.cmbbxBatch.TabIndex = 113;
            this.cmbbxBatch.SelectedIndexChanged += new System.EventHandler(this.cmbbxBatch_SelectedIndexChanged);
            // 
            // cmbbxTopic
            // 
            this.cmbbxTopic.FormattingEnabled = true;
            this.cmbbxTopic.Location = new System.Drawing.Point(521, 236);
            this.cmbbxTopic.Name = "cmbbxTopic";
            this.cmbbxTopic.Size = new System.Drawing.Size(125, 28);
            this.cmbbxTopic.TabIndex = 114;
            // 
            // lblBatch
            // 
            this.lblBatch.AutoSize = true;
            this.lblBatch.Location = new System.Drawing.Point(388, 171);
            this.lblBatch.Name = "lblBatch";
            this.lblBatch.Size = new System.Drawing.Size(51, 20);
            this.lblBatch.TabIndex = 110;
            this.lblBatch.Text = "Batch";
            // 
            // FrmViewTodaysAttendance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1584, 711);
            this.Controls.Add(this.cmbbxTopic);
            this.Controls.Add(this.cmbbxBatch);
            this.Controls.Add(this.lblTopic);
            this.Controls.Add(this.lblBatch);
            this.Controls.Add(this.lblCourse1);
            this.Controls.Add(this.lblDate);
            this.Controls.Add(this.lblDate1);
            this.Controls.Add(this.lblCourse);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.grdTodaysAttendance);
            this.Name = "FrmViewTodaysAttendance";
            this.Text = "FrmViewTodaysAttendance";
            this.Load += new System.EventHandler(this.FrmTodaysAttendance_Load_1);
            ((System.ComponentModel.ISupportInitialize)(this.grdTodaysAttendance)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.DataGridView grdTodaysAttendance;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lblTopic;
        private System.Windows.Forms.Label lblCourse1;
        private System.Windows.Forms.Label lblDate;
        private System.Windows.Forms.Label lblDate1;
        private System.Windows.Forms.Label lblCourse;
        private System.Windows.Forms.ComboBox cmbbxBatch;
        private System.Windows.Forms.ComboBox cmbbxTopic;
        private System.Windows.Forms.Label lblBatch;
    }
}