
namespace RTSIMSLibrary
{
    partial class FrmPreviousAttendance
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
            this.lblDate1 = new System.Windows.Forms.Label();
            this.lblTopic = new System.Windows.Forms.Label();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.lblDate = new System.Windows.Forms.Label();
            this.lblCourse = new System.Windows.Forms.Label();
            this.grdPreviousAttendance = new System.Windows.Forms.DataGridView();
            this.lblCourse1 = new System.Windows.Forms.Label();
            this.lblBatch1 = new System.Windows.Forms.Label();
            this.lblBatch = new System.Windows.Forms.Label();
            this.lblTopic1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.grdPreviousAttendance)).BeginInit();
            this.SuspendLayout();
            // 
            // lblDate1
            // 
            this.lblDate1.AutoSize = true;
            this.lblDate1.Location = new System.Drawing.Point(477, 269);
            this.lblDate1.Name = "lblDate1";
            this.lblDate1.Size = new System.Drawing.Size(53, 20);
            this.lblDate1.TabIndex = 56;
            this.lblDate1.Text = "Date1";
            // 
            // lblTopic
            // 
            this.lblTopic.AutoSize = true;
            this.lblTopic.Location = new System.Drawing.Point(630, 200);
            this.lblTopic.Name = "lblTopic";
            this.lblTopic.Size = new System.Drawing.Size(47, 20);
            this.lblTopic.TabIndex = 51;
            this.lblTopic.Text = "Topic";
            // 
            // btnUpdate
            // 
            this.btnUpdate.Location = new System.Drawing.Point(518, 491);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(156, 54);
            this.btnUpdate.TabIndex = 49;
            this.btnUpdate.Text = "Update";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // lblDate
            // 
            this.lblDate.AutoSize = true;
            this.lblDate.Location = new System.Drawing.Point(630, 269);
            this.lblDate.Name = "lblDate";
            this.lblDate.Size = new System.Drawing.Size(44, 20);
            this.lblDate.TabIndex = 48;
            this.lblDate.Text = "Date";
            // 
            // lblCourse
            // 
            this.lblCourse.AutoSize = true;
            this.lblCourse.Location = new System.Drawing.Point(630, 81);
            this.lblCourse.Name = "lblCourse";
            this.lblCourse.Size = new System.Drawing.Size(60, 20);
            this.lblCourse.TabIndex = 45;
            this.lblCourse.Text = "Course";
            // 
            // grdPreviousAttendance
            // 
            this.grdPreviousAttendance.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdPreviousAttendance.Location = new System.Drawing.Point(819, 39);
            this.grdPreviousAttendance.Name = "grdPreviousAttendance";
            this.grdPreviousAttendance.RowHeadersWidth = 62;
            this.grdPreviousAttendance.RowTemplate.Height = 28;
            this.grdPreviousAttendance.Size = new System.Drawing.Size(802, 447);
            this.grdPreviousAttendance.TabIndex = 58;
            this.grdPreviousAttendance.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.grdPreviousAttendance_CellContentClick);
            // 
            // lblCourse1
            // 
            this.lblCourse1.AutoSize = true;
            this.lblCourse1.Location = new System.Drawing.Point(461, 81);
            this.lblCourse1.Name = "lblCourse1";
            this.lblCourse1.Size = new System.Drawing.Size(69, 20);
            this.lblCourse1.TabIndex = 101;
            this.lblCourse1.Text = "Course1";
            // 
            // lblBatch1
            // 
            this.lblBatch1.AutoSize = true;
            this.lblBatch1.Location = new System.Drawing.Point(470, 139);
            this.lblBatch1.Name = "lblBatch1";
            this.lblBatch1.Size = new System.Drawing.Size(60, 20);
            this.lblBatch1.TabIndex = 102;
            this.lblBatch1.Text = "Batch1";
            // 
            // lblBatch
            // 
            this.lblBatch.AutoSize = true;
            this.lblBatch.Location = new System.Drawing.Point(630, 139);
            this.lblBatch.Name = "lblBatch";
            this.lblBatch.Size = new System.Drawing.Size(51, 20);
            this.lblBatch.TabIndex = 103;
            this.lblBatch.Text = "Batch";
            // 
            // lblTopic1
            // 
            this.lblTopic1.AutoSize = true;
            this.lblTopic1.Location = new System.Drawing.Point(470, 200);
            this.lblTopic1.Name = "lblTopic1";
            this.lblTopic1.Size = new System.Drawing.Size(56, 20);
            this.lblTopic1.TabIndex = 104;
            this.lblTopic1.Text = "Topic1";
            // 
            // FrmPreviousAttendance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1669, 686);
            this.Controls.Add(this.lblTopic1);
            this.Controls.Add(this.lblBatch);
            this.Controls.Add(this.lblBatch1);
            this.Controls.Add(this.lblCourse1);
            this.Controls.Add(this.grdPreviousAttendance);
            this.Controls.Add(this.lblDate1);
            this.Controls.Add(this.lblTopic);
            this.Controls.Add(this.btnUpdate);
            this.Controls.Add(this.lblDate);
            this.Controls.Add(this.lblCourse);
            this.Name = "FrmPreviousAttendance";
            this.Text = "FrmPreviousAttendance";
            this.Load += new System.EventHandler(this.FrmPreviousAttendance_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grdPreviousAttendance)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblDate1;
        private System.Windows.Forms.Label lblTopic;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Label lblDate;
        private System.Windows.Forms.Label lblCourse;
        private System.Windows.Forms.DataGridView grdPreviousAttendance;
        private System.Windows.Forms.Label lblCourse1;
        private System.Windows.Forms.Label lblBatch1;
        private System.Windows.Forms.Label lblBatch;
        private System.Windows.Forms.Label lblTopic1;
    }
}