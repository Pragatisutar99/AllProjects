
namespace StudentManagement
{
    partial class FrmMarks
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
            this.lblStudentName = new System.Windows.Forms.Label();
            this.lblMarks = new System.Windows.Forms.Label();
            this.lblMark = new System.Windows.Forms.Label();
            this.lblSubject = new System.Windows.Forms.Label();
            this.lblComment = new System.Windows.Forms.Label();
            this.txtSubject = new System.Windows.Forms.TextBox();
            this.txtMark = new System.Windows.Forms.TextBox();
            this.txtComment = new System.Windows.Forms.TextBox();
            this.txtSName = new System.Windows.Forms.TextBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblStudentName
            // 
            this.lblStudentName.AutoSize = true;
            this.lblStudentName.Location = new System.Drawing.Point(168, 114);
            this.lblStudentName.Name = "lblStudentName";
            this.lblStudentName.Size = new System.Drawing.Size(108, 20);
            this.lblStudentName.TabIndex = 17;
            this.lblStudentName.Text = "StudentName";
            // 
            // lblMarks
            // 
            this.lblMarks.AutoSize = true;
            this.lblMarks.Location = new System.Drawing.Point(351, 30);
            this.lblMarks.Name = "lblMarks";
            this.lblMarks.Size = new System.Drawing.Size(52, 20);
            this.lblMarks.TabIndex = 18;
            this.lblMarks.Text = "Marks";
            // 
            // lblMark
            // 
            this.lblMark.AutoSize = true;
            this.lblMark.Location = new System.Drawing.Point(187, 267);
            this.lblMark.Name = "lblMark";
            this.lblMark.Size = new System.Drawing.Size(44, 20);
            this.lblMark.TabIndex = 19;
            this.lblMark.Text = "Mark";
            // 
            // lblSubject
            // 
            this.lblSubject.AutoSize = true;
            this.lblSubject.Location = new System.Drawing.Point(187, 187);
            this.lblSubject.Name = "lblSubject";
            this.lblSubject.Size = new System.Drawing.Size(63, 20);
            this.lblSubject.TabIndex = 20;
            this.lblSubject.Text = "Subject";
            // 
            // lblComment
            // 
            this.lblComment.AutoSize = true;
            this.lblComment.Location = new System.Drawing.Point(187, 355);
            this.lblComment.Name = "lblComment";
            this.lblComment.Size = new System.Drawing.Size(78, 20);
            this.lblComment.TabIndex = 21;
            this.lblComment.Text = "Comment";
            // 
            // txtSubject
            // 
            this.txtSubject.Location = new System.Drawing.Point(440, 181);
            this.txtSubject.Name = "txtSubject";
            this.txtSubject.Size = new System.Drawing.Size(100, 26);
            this.txtSubject.TabIndex = 22;
            // 
            // txtMark
            // 
            this.txtMark.Location = new System.Drawing.Point(440, 261);
            this.txtMark.Name = "txtMark";
            this.txtMark.Size = new System.Drawing.Size(100, 26);
            this.txtMark.TabIndex = 23;
            // 
            // txtComment
            // 
            this.txtComment.Location = new System.Drawing.Point(440, 349);
            this.txtComment.Name = "txtComment";
            this.txtComment.Size = new System.Drawing.Size(100, 26);
            this.txtComment.TabIndex = 24;
            // 
            // txtSName
            // 
            this.txtSName.Location = new System.Drawing.Point(440, 108);
            this.txtSName.Name = "txtSName";
            this.txtSName.Size = new System.Drawing.Size(100, 26);
            this.txtSName.TabIndex = 25;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(305, 471);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(86, 34);
            this.btnSave.TabIndex = 27;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // FrmMarks
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(966, 622);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.txtSName);
            this.Controls.Add(this.txtComment);
            this.Controls.Add(this.txtMark);
            this.Controls.Add(this.txtSubject);
            this.Controls.Add(this.lblComment);
            this.Controls.Add(this.lblSubject);
            this.Controls.Add(this.lblMark);
            this.Controls.Add(this.lblMarks);
            this.Controls.Add(this.lblStudentName);
            this.Name = "FrmMarks";
            this.Text = "FrmMarks";
            this.Load += new System.EventHandler(this.FrmMarks_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblStudentName;
        private System.Windows.Forms.Label lblMarks;
        private System.Windows.Forms.Label lblMark;
        private System.Windows.Forms.Label lblSubject;
        private System.Windows.Forms.Label lblComment;
        private System.Windows.Forms.TextBox txtSubject;
        private System.Windows.Forms.TextBox txtMark;
        private System.Windows.Forms.TextBox txtComment;
        private System.Windows.Forms.TextBox txtSName;
        private System.Windows.Forms.Button btnSave;
    }
}