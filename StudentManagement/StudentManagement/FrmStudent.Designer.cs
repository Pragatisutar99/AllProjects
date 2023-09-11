
namespace StudentManagement
{
    partial class FrmStudent
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
            this.txtSName = new System.Windows.Forms.TextBox();
            this.txtSEmail = new System.Windows.Forms.TextBox();
            this.txtMobileNo = new System.Windows.Forms.TextBox();
            this.txtAddress = new System.Windows.Forms.TextBox();
            this.txtDOB = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.txtDepartmentName = new System.Windows.Forms.TextBox();
            this.txtTeacherName = new System.Windows.Forms.TextBox();
            this.lblStudent = new System.Windows.Forms.Label();
            this.lblStudentName = new System.Windows.Forms.Label();
            this.rdbbtnFemale = new System.Windows.Forms.RadioButton();
            this.rdbbtnMale = new System.Windows.Forms.RadioButton();
            this.btnClear = new System.Windows.Forms.Button();
            this.lblSEmail = new System.Windows.Forms.Label();
            this.lblMobileNo = new System.Windows.Forms.Label();
            this.lblAddress = new System.Windows.Forms.Label();
            this.lblDOB = new System.Windows.Forms.Label();
            this.lblGender = new System.Windows.Forms.Label();
            this.lblPassword = new System.Windows.Forms.Label();
            this.lblDepartmentName = new System.Windows.Forms.Label();
            this.lblTeacherName = new System.Windows.Forms.Label();
            this.btnSave = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtSName
            // 
            this.txtSName.Location = new System.Drawing.Point(456, 72);
            this.txtSName.Name = "txtSName";
            this.txtSName.Size = new System.Drawing.Size(100, 26);
            this.txtSName.TabIndex = 7;
            // 
            // txtSEmail
            // 
            this.txtSEmail.Location = new System.Drawing.Point(456, 130);
            this.txtSEmail.Name = "txtSEmail";
            this.txtSEmail.Size = new System.Drawing.Size(100, 26);
            this.txtSEmail.TabIndex = 8;
            // 
            // txtMobileNo
            // 
            this.txtMobileNo.Location = new System.Drawing.Point(456, 193);
            this.txtMobileNo.Name = "txtMobileNo";
            this.txtMobileNo.Size = new System.Drawing.Size(100, 26);
            this.txtMobileNo.TabIndex = 9;
            // 
            // txtAddress
            // 
            this.txtAddress.Location = new System.Drawing.Point(456, 253);
            this.txtAddress.Name = "txtAddress";
            this.txtAddress.Size = new System.Drawing.Size(100, 26);
            this.txtAddress.TabIndex = 10;
            // 
            // txtDOB
            // 
            this.txtDOB.Location = new System.Drawing.Point(456, 319);
            this.txtDOB.Name = "txtDOB";
            this.txtDOB.Size = new System.Drawing.Size(100, 26);
            this.txtDOB.TabIndex = 11;
            // 
            // txtPassword
            // 
            this.txtPassword.Location = new System.Drawing.Point(456, 421);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(100, 26);
            this.txtPassword.TabIndex = 12;
            // 
            // txtDepartmentName
            // 
            this.txtDepartmentName.Location = new System.Drawing.Point(456, 475);
            this.txtDepartmentName.Name = "txtDepartmentName";
            this.txtDepartmentName.Size = new System.Drawing.Size(100, 26);
            this.txtDepartmentName.TabIndex = 13;
            // 
            // txtTeacherName
            // 
            this.txtTeacherName.Location = new System.Drawing.Point(456, 528);
            this.txtTeacherName.Name = "txtTeacherName";
            this.txtTeacherName.Size = new System.Drawing.Size(100, 26);
            this.txtTeacherName.TabIndex = 14;
            // 
            // lblStudent
            // 
            this.lblStudent.AutoSize = true;
            this.lblStudent.Location = new System.Drawing.Point(353, 22);
            this.lblStudent.Name = "lblStudent";
            this.lblStudent.Size = new System.Drawing.Size(66, 20);
            this.lblStudent.TabIndex = 15;
            this.lblStudent.Text = "Student";
            // 
            // lblStudentName
            // 
            this.lblStudentName.AutoSize = true;
            this.lblStudentName.Location = new System.Drawing.Point(190, 78);
            this.lblStudentName.Name = "lblStudentName";
            this.lblStudentName.Size = new System.Drawing.Size(108, 20);
            this.lblStudentName.TabIndex = 16;
            this.lblStudentName.Text = "StudentName";
            // 
            // rdbbtnFemale
            // 
            this.rdbbtnFemale.AutoSize = true;
            this.rdbbtnFemale.Location = new System.Drawing.Point(422, 375);
            this.rdbbtnFemale.Name = "rdbbtnFemale";
            this.rdbbtnFemale.Size = new System.Drawing.Size(87, 24);
            this.rdbbtnFemale.TabIndex = 17;
            this.rdbbtnFemale.TabStop = true;
            this.rdbbtnFemale.Text = "Female";
            this.rdbbtnFemale.UseVisualStyleBackColor = true;
            // 
            // rdbbtnMale
            // 
            this.rdbbtnMale.AutoSize = true;
            this.rdbbtnMale.Location = new System.Drawing.Point(563, 375);
            this.rdbbtnMale.Name = "rdbbtnMale";
            this.rdbbtnMale.Size = new System.Drawing.Size(68, 24);
            this.rdbbtnMale.TabIndex = 18;
            this.rdbbtnMale.TabStop = true;
            this.rdbbtnMale.Text = "Male";
            this.rdbbtnMale.UseVisualStyleBackColor = true;
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(545, 581);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(86, 48);
            this.btnClear.TabIndex = 20;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // lblSEmail
            // 
            this.lblSEmail.AutoSize = true;
            this.lblSEmail.Location = new System.Drawing.Point(190, 136);
            this.lblSEmail.Name = "lblSEmail";
            this.lblSEmail.Size = new System.Drawing.Size(48, 20);
            this.lblSEmail.TabIndex = 22;
            this.lblSEmail.Text = "Email";
            // 
            // lblMobileNo
            // 
            this.lblMobileNo.AutoSize = true;
            this.lblMobileNo.Location = new System.Drawing.Point(190, 199);
            this.lblMobileNo.Name = "lblMobileNo";
            this.lblMobileNo.Size = new System.Drawing.Size(75, 20);
            this.lblMobileNo.TabIndex = 23;
            this.lblMobileNo.Text = "MobileNo";
            // 
            // lblAddress
            // 
            this.lblAddress.AutoSize = true;
            this.lblAddress.Location = new System.Drawing.Point(190, 259);
            this.lblAddress.Name = "lblAddress";
            this.lblAddress.Size = new System.Drawing.Size(68, 20);
            this.lblAddress.TabIndex = 24;
            this.lblAddress.Text = "Address";
            // 
            // lblDOB
            // 
            this.lblDOB.AutoSize = true;
            this.lblDOB.Location = new System.Drawing.Point(190, 319);
            this.lblDOB.Name = "lblDOB";
            this.lblDOB.Size = new System.Drawing.Size(44, 20);
            this.lblDOB.TabIndex = 25;
            this.lblDOB.Text = "DOB";
            // 
            // lblGender
            // 
            this.lblGender.AutoSize = true;
            this.lblGender.Location = new System.Drawing.Point(190, 375);
            this.lblGender.Name = "lblGender";
            this.lblGender.Size = new System.Drawing.Size(63, 20);
            this.lblGender.TabIndex = 26;
            this.lblGender.Text = "Gender";
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.Location = new System.Drawing.Point(190, 427);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(78, 20);
            this.lblPassword.TabIndex = 27;
            this.lblPassword.Text = "Password";
            // 
            // lblDepartmentName
            // 
            this.lblDepartmentName.AutoSize = true;
            this.lblDepartmentName.Location = new System.Drawing.Point(190, 481);
            this.lblDepartmentName.Name = "lblDepartmentName";
            this.lblDepartmentName.Size = new System.Drawing.Size(136, 20);
            this.lblDepartmentName.TabIndex = 28;
            this.lblDepartmentName.Text = "DepartmentName";
            // 
            // lblTeacherName
            // 
            this.lblTeacherName.AutoSize = true;
            this.lblTeacherName.Location = new System.Drawing.Point(190, 534);
            this.lblTeacherName.Name = "lblTeacherName";
            this.lblTeacherName.Size = new System.Drawing.Size(109, 20);
            this.lblTeacherName.TabIndex = 29;
            this.lblTeacherName.Text = "TeacherName";
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(328, 581);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(91, 48);
            this.btnSave.TabIndex = 30;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click_1);
            // 
            // FrmStudent
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1010, 676);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.lblTeacherName);
            this.Controls.Add(this.lblDepartmentName);
            this.Controls.Add(this.lblPassword);
            this.Controls.Add(this.lblGender);
            this.Controls.Add(this.lblDOB);
            this.Controls.Add(this.lblAddress);
            this.Controls.Add(this.lblMobileNo);
            this.Controls.Add(this.lblSEmail);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.rdbbtnMale);
            this.Controls.Add(this.rdbbtnFemale);
            this.Controls.Add(this.lblStudentName);
            this.Controls.Add(this.lblStudent);
            this.Controls.Add(this.txtTeacherName);
            this.Controls.Add(this.txtDepartmentName);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtDOB);
            this.Controls.Add(this.txtAddress);
            this.Controls.Add(this.txtMobileNo);
            this.Controls.Add(this.txtSEmail);
            this.Controls.Add(this.txtSName);
            this.Name = "FrmStudent";
            this.Text = "FrmStudent";
            this.Load += new System.EventHandler(this.FrmStudent_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtSName;
        private System.Windows.Forms.TextBox txtSEmail;
        private System.Windows.Forms.TextBox txtMobileNo;
        private System.Windows.Forms.TextBox txtAddress;
        private System.Windows.Forms.TextBox txtDOB;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.TextBox txtDepartmentName;
        private System.Windows.Forms.TextBox txtTeacherName;
        private System.Windows.Forms.Label lblStudent;
        private System.Windows.Forms.Label lblStudentName;
        private System.Windows.Forms.RadioButton rdbbtnFemale;
        private System.Windows.Forms.RadioButton rdbbtnMale;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Label lblSEmail;
        private System.Windows.Forms.Label lblMobileNo;
        private System.Windows.Forms.Label lblAddress;
        private System.Windows.Forms.Label lblDOB;
        private System.Windows.Forms.Label lblGender;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.Label lblDepartmentName;
        private System.Windows.Forms.Label lblTeacherName;
        private System.Windows.Forms.Button btnSave;
    }
}