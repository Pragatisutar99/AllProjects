
namespace RTSIMSLibrary
{
    partial class FrmEditTodaysAttendance
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
            this.btnUpdate = new System.Windows.Forms.Button();
            this.grdEditTodayAttendance = new System.Windows.Forms.DataGridView();
            this.lblBatch = new System.Windows.Forms.Label();
            this.lblCourse1 = new System.Windows.Forms.Label();
            this.lblDate1 = new System.Windows.Forms.Label();
            this.lblTopic = new System.Windows.Forms.Label();
            this.lblDate = new System.Windows.Forms.Label();
            this.lblCourse = new System.Windows.Forms.Label();
            this.cmbbxBatch = new System.Windows.Forms.ComboBox();
            this.cmbbxTopic = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.grdEditTodayAttendance)).BeginInit();
            this.SuspendLayout();
            // 
            // btnUpdate
            // 
            this.btnUpdate.Location = new System.Drawing.Point(576, 528);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(156, 54);
            this.btnUpdate.TabIndex = 45;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // grdEditTodayAttendance
            // 
            this.grdEditTodayAttendance.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdEditTodayAttendance.Location = new System.Drawing.Point(775, 117);
            this.grdEditTodayAttendance.Name = "grdEditTodayAttendance";
            this.grdEditTodayAttendance.RowHeadersWidth = 62;
            this.grdEditTodayAttendance.RowTemplate.Height = 28;
            this.grdEditTodayAttendance.Size = new System.Drawing.Size(770, 393);
            this.grdEditTodayAttendance.TabIndex = 40;
            this.grdEditTodayAttendance.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grdEditTodayAttendance_CellContentClick);
            // 
            // lblBatch
            // 
            this.lblBatch.AutoSize = true;
            this.lblBatch.Location = new System.Drawing.Point(461, 218);
            this.lblBatch.Name = "lblBatch";
            this.lblBatch.Size = new System.Drawing.Size(51, 20);
            this.lblBatch.TabIndex = 111;
            this.lblBatch.Text = "Batch";
            // 
            // lblCourse1
            // 
            this.lblCourse1.AutoSize = true;
            this.lblCourse1.Location = new System.Drawing.Point(452, 156);
            this.lblCourse1.Name = "lblCourse1";
            this.lblCourse1.Size = new System.Drawing.Size(69, 20);
            this.lblCourse1.TabIndex = 109;
            this.lblCourse1.Text = "Course1";
            // 
            // lblDate1
            // 
            this.lblDate1.AutoSize = true;
            this.lblDate1.Location = new System.Drawing.Point(461, 339);
            this.lblDate1.Name = "lblDate1";
            this.lblDate1.Size = new System.Drawing.Size(53, 20);
            this.lblDate1.TabIndex = 108;
            this.lblDate1.Text = "Date1";
            // 
            // lblTopic
            // 
            this.lblTopic.AutoSize = true;
            this.lblTopic.Location = new System.Drawing.Point(461, 277);
            this.lblTopic.Name = "lblTopic";
            this.lblTopic.Size = new System.Drawing.Size(47, 20);
            this.lblTopic.TabIndex = 107;
            this.lblTopic.Text = "Topic";
            // 
            // lblDate
            // 
            this.lblDate.AutoSize = true;
            this.lblDate.Location = new System.Drawing.Point(587, 339);
            this.lblDate.Name = "lblDate";
            this.lblDate.Size = new System.Drawing.Size(44, 20);
            this.lblDate.TabIndex = 106;
            this.lblDate.Text = "Date";
            // 
            // lblCourse
            // 
            this.lblCourse.AutoSize = true;
            this.lblCourse.Location = new System.Drawing.Point(587, 156);
            this.lblCourse.Name = "lblCourse";
            this.lblCourse.Size = new System.Drawing.Size(60, 20);
            this.lblCourse.TabIndex = 105;
            this.lblCourse.Text = "Course";
            // 
            // cmbbxBatch
            // 
            this.cmbbxBatch.FormattingEnabled = true;
            this.cmbbxBatch.Location = new System.Drawing.Point(557, 210);
            this.cmbbxBatch.Name = "cmbbxBatch";
            this.cmbbxBatch.Size = new System.Drawing.Size(127, 28);
            this.cmbbxBatch.TabIndex = 114;
            // 
            // cmbbxTopic
            // 
            this.cmbbxTopic.FormattingEnabled = true;
            this.cmbbxTopic.Location = new System.Drawing.Point(557, 274);
            this.cmbbxTopic.Name = "cmbbxTopic";
            this.cmbbxTopic.Size = new System.Drawing.Size(127, 28);
            this.cmbbxTopic.TabIndex = 115;
            // 
            // FrmEditTodaysAttendance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1608, 670);
            this.Controls.Add(this.cmbbxTopic);
            this.Controls.Add(this.cmbbxBatch);
            this.Controls.Add(this.lblBatch);
            this.Controls.Add(this.lblCourse1);
            this.Controls.Add(this.lblDate1);
            this.Controls.Add(this.lblTopic);
            this.Controls.Add(this.lblDate);
            this.Controls.Add(this.lblCourse);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.grdEditTodayAttendance);
            this.Name = "FrmEditTodaysAttendance";
            this.Text = "FrmEditTodaysAttendance";
            this.Load += new System.EventHandler(this.FrmEditTodaysAttendance_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grdEditTodayAttendance)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.DataGridView grdEditTodayAttendance;
        private System.Windows.Forms.Label lblBatch;
        private System.Windows.Forms.Label lblCourse1;
        private System.Windows.Forms.Label lblDate1;
        private System.Windows.Forms.Label lblTopic;
        private System.Windows.Forms.Label lblDate;
        private System.Windows.Forms.Label lblCourse;
        private System.Windows.Forms.ComboBox cmbbxBatch;
        private System.Windows.Forms.ComboBox cmbbxTopic;
    }
}