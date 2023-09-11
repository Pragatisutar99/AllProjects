
namespace RTSIMS
{
    partial class FrmAddAttendance
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
            this.btnSave = new System.Windows.Forms.Button();
            this.grdAddAttendance = new System.Windows.Forms.DataGridView();
            this.Present = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Absent = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.lblCourse = new System.Windows.Forms.Label();
            this.lblBatch = new System.Windows.Forms.Label();
            this.lblCourse1 = new System.Windows.Forms.Label();
            this.lblBatch1 = new System.Windows.Forms.Label();
            this.lblTopic = new System.Windows.Forms.Label();
            this.lblDate = new System.Windows.Forms.Label();
            this.lblDate1 = new System.Windows.Forms.Label();
            this.cmbbxTopic = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.grdAddAttendance)).BeginInit();
            this.SuspendLayout();
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(323, 427);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(156, 54);
            this.btnSave.TabIndex = 92;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // grdAddAttendance
            // 
            this.grdAddAttendance.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdAddAttendance.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Present,
            this.Absent});
            this.grdAddAttendance.Location = new System.Drawing.Point(517, 64);
            this.grdAddAttendance.Name = "grdAddAttendance";
            this.grdAddAttendance.RowHeadersWidth = 62;
            this.grdAddAttendance.RowTemplate.Height = 28;
            this.grdAddAttendance.Size = new System.Drawing.Size(1119, 541);
            this.grdAddAttendance.TabIndex = 97;
            this.grdAddAttendance.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grdAddAttendance_CellContentClick_2);
            // 
            // Present
            // 
            this.Present.HeaderText = "Present";
            this.Present.MinimumWidth = 8;
            this.Present.Name = "Present";
            this.Present.Width = 150;
            // 
            // Absent
            // 
            this.Absent.HeaderText = "Absent";
            this.Absent.MinimumWidth = 8;
            this.Absent.Name = "Absent";
            this.Absent.Width = 150;
            // 
            // lblCourse
            // 
            this.lblCourse.AutoSize = true;
            this.lblCourse.Location = new System.Drawing.Point(353, 123);
            this.lblCourse.Name = "lblCourse";
            this.lblCourse.Size = new System.Drawing.Size(60, 20);
            this.lblCourse.TabIndex = 94;
            this.lblCourse.Text = "Course";
            // 
            // lblBatch
            // 
            this.lblBatch.AutoSize = true;
            this.lblBatch.Location = new System.Drawing.Point(353, 183);
            this.lblBatch.Name = "lblBatch";
            this.lblBatch.Size = new System.Drawing.Size(51, 20);
            this.lblBatch.TabIndex = 99;
            this.lblBatch.Text = "Batch";
            // 
            // lblCourse1
            // 
            this.lblCourse1.AutoSize = true;
            this.lblCourse1.Location = new System.Drawing.Point(185, 123);
            this.lblCourse1.Name = "lblCourse1";
            this.lblCourse1.Size = new System.Drawing.Size(69, 20);
            this.lblCourse1.TabIndex = 100;
            this.lblCourse1.Text = "Course1";
            this.lblCourse1.Click += new System.EventHandler(this.label1_Click);
            // 
            // lblBatch1
            // 
            this.lblBatch1.AutoSize = true;
            this.lblBatch1.Location = new System.Drawing.Point(194, 183);
            this.lblBatch1.Name = "lblBatch1";
            this.lblBatch1.Size = new System.Drawing.Size(60, 20);
            this.lblBatch1.TabIndex = 101;
            this.lblBatch1.Text = "Batch1";
            // 
            // lblTopic
            // 
            this.lblTopic.AutoSize = true;
            this.lblTopic.Location = new System.Drawing.Point(198, 241);
            this.lblTopic.Name = "lblTopic";
            this.lblTopic.Size = new System.Drawing.Size(47, 20);
            this.lblTopic.TabIndex = 102;
            this.lblTopic.Text = "Topic";
            // 
            // lblDate
            // 
            this.lblDate.AutoSize = true;
            this.lblDate.Location = new System.Drawing.Point(360, 288);
            this.lblDate.Name = "lblDate";
            this.lblDate.Size = new System.Drawing.Size(44, 20);
            this.lblDate.TabIndex = 103;
            this.lblDate.Text = "Date";
            // 
            // lblDate1
            // 
            this.lblDate1.AutoSize = true;
            this.lblDate1.Location = new System.Drawing.Point(201, 288);
            this.lblDate1.Name = "lblDate1";
            this.lblDate1.Size = new System.Drawing.Size(53, 20);
            this.lblDate1.TabIndex = 104;
            this.lblDate1.Text = "Date1";
            // 
            // cmbbxTopic
            // 
            this.cmbbxTopic.FormattingEnabled = true;
            this.cmbbxTopic.Location = new System.Drawing.Point(323, 241);
            this.cmbbxTopic.Name = "cmbbxTopic";
            this.cmbbxTopic.Size = new System.Drawing.Size(125, 28);
            this.cmbbxTopic.TabIndex = 105;
            this.cmbbxTopic.SelectedIndexChanged += new System.EventHandler(this.cmbbxTopic_SelectedIndexChanged_1);
            // 
            // FrmAddAttendance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1666, 676);
            this.Controls.Add(this.cmbbxTopic);
            this.Controls.Add(this.lblDate1);
            this.Controls.Add(this.lblDate);
            this.Controls.Add(this.lblTopic);
            this.Controls.Add(this.lblBatch1);
            this.Controls.Add(this.lblCourse1);
            this.Controls.Add(this.lblBatch);
            this.Controls.Add(this.grdAddAttendance);
            this.Controls.Add(this.lblCourse);
            this.Controls.Add(this.btnSave);
            this.Name = "FrmAddAttendance";
            this.Text = "FrmAddAttendance";
            this.Load += new System.EventHandler(this.FrmAddAttendance_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grdAddAttendance)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.DataGridView grdAddAttendance;
        private System.Windows.Forms.Label lblCourse;
        private System.Windows.Forms.Label lblBatch;
        private System.Windows.Forms.Label lblCourse1;
        private System.Windows.Forms.Label lblBatch1;
        private System.Windows.Forms.Label lblTopic;
        private System.Windows.Forms.Label lblDate;
        private System.Windows.Forms.Label lblDate1;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Present;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Absent;
        private System.Windows.Forms.ComboBox cmbbxTopic;
    }
}