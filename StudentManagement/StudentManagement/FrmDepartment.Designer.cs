
namespace StudentManagement
{
    partial class FrmDepartment
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
            this.lblDepartment = new System.Windows.Forms.Label();
            this.lblDepartmentName = new System.Windows.Forms.Label();
            this.lblRemark = new System.Windows.Forms.Label();
            this.txtDName = new System.Windows.Forms.TextBox();
            this.txtRemark = new System.Windows.Forms.TextBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.ListView = new System.Windows.Forms.ListView();
            this.DName = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Remark = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // lblDepartment
            // 
            this.lblDepartment.AutoSize = true;
            this.lblDepartment.Location = new System.Drawing.Point(359, 53);
            this.lblDepartment.Name = "lblDepartment";
            this.lblDepartment.Size = new System.Drawing.Size(94, 20);
            this.lblDepartment.TabIndex = 0;
            this.lblDepartment.Text = "Department";
            // 
            // lblDepartmentName
            // 
            this.lblDepartmentName.AutoSize = true;
            this.lblDepartmentName.Location = new System.Drawing.Point(195, 128);
            this.lblDepartmentName.Name = "lblDepartmentName";
            this.lblDepartmentName.Size = new System.Drawing.Size(131, 20);
            this.lblDepartmentName.TabIndex = 1;
            this.lblDepartmentName.Text = "DepatmentName";
            // 
            // lblRemark
            // 
            this.lblRemark.AutoSize = true;
            this.lblRemark.Location = new System.Drawing.Point(223, 210);
            this.lblRemark.Name = "lblRemark";
            this.lblRemark.Size = new System.Drawing.Size(65, 20);
            this.lblRemark.TabIndex = 2;
            this.lblRemark.Text = "Remark";
            // 
            // txtDName
            // 
            this.txtDName.Location = new System.Drawing.Point(467, 137);
            this.txtDName.Name = "txtDName";
            this.txtDName.Size = new System.Drawing.Size(100, 26);
            this.txtDName.TabIndex = 8;
            // 
            // txtRemark
            // 
            this.txtRemark.Location = new System.Drawing.Point(467, 210);
            this.txtRemark.Name = "txtRemark";
            this.txtRemark.Size = new System.Drawing.Size(100, 26);
            this.txtRemark.TabIndex = 9;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(337, 289);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(86, 34);
            this.btnSave.TabIndex = 20;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // ListView
            // 
            this.ListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.DName,
            this.Remark});
            this.ListView.HideSelection = false;
            this.ListView.Location = new System.Drawing.Point(192, 352);
            this.ListView.Name = "ListView";
            this.ListView.Size = new System.Drawing.Size(443, 232);
            this.ListView.TabIndex = 21;
            this.ListView.UseCompatibleStateImageBehavior = false;
            this.ListView.View = System.Windows.Forms.View.Details;
            this.ListView.SelectedIndexChanged += new System.EventHandler(this.ListView_SelectedIndexChanged);
            // 
            // DName
            // 
            this.DName.Text = "DName";
            // 
            // Remark
            // 
            this.Remark.Text = "Remark";
            // 
            // FrmDepartment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(943, 613);
            this.Controls.Add(this.ListView);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.txtRemark);
            this.Controls.Add(this.txtDName);
            this.Controls.Add(this.lblRemark);
            this.Controls.Add(this.lblDepartmentName);
            this.Controls.Add(this.lblDepartment);
            this.Name = "FrmDepartment";
            this.Text = "FrmDepartment";
            this.Load += new System.EventHandler(this.FrmDepartment_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblDepartment;
        private System.Windows.Forms.Label lblDepartmentName;
        private System.Windows.Forms.Label lblRemark;
        private System.Windows.Forms.TextBox txtDName;
        private System.Windows.Forms.TextBox txtRemark;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ListView ListView;
        private System.Windows.Forms.ColumnHeader DName;
        private System.Windows.Forms.ColumnHeader Remark;
    }
}