
namespace UserShopManagement
{
    partial class FrmSize
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
            this.btnClear = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.txtRealPrice = new System.Windows.Forms.TextBox();
            this.txtsize = new System.Windows.Forms.TextBox();
            this.txtMRP = new System.Windows.Forms.TextBox();
            this.cmbbxProductName = new System.Windows.Forms.ComboBox();
            this.cmbbxType = new System.Windows.Forms.ComboBox();
            this.lblPrice = new System.Windows.Forms.Label();
            this.lblMRP = new System.Windows.Forms.Label();
            this.lblsize1 = new System.Windows.Forms.Label();
            this.lblProductName = new System.Windows.Forms.Label();
            this.lblType = new System.Windows.Forms.Label();
            this.lblSize = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(724, 598);
            this.btnClear.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(112, 35);
            this.btnClear.TabIndex = 25;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(448, 598);
            this.btnSave.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(112, 35);
            this.btnSave.TabIndex = 24;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // txtRealPrice
            // 
            this.txtRealPrice.Location = new System.Drawing.Point(655, 505);
            this.txtRealPrice.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtRealPrice.Name = "txtRealPrice";
            this.txtRealPrice.Size = new System.Drawing.Size(180, 26);
            this.txtRealPrice.TabIndex = 23;
            // 
            // txtsize
            // 
            this.txtsize.Location = new System.Drawing.Point(655, 287);
            this.txtsize.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtsize.Name = "txtsize";
            this.txtsize.Size = new System.Drawing.Size(180, 26);
            this.txtsize.TabIndex = 22;
            // 
            // txtMRP
            // 
            this.txtMRP.Location = new System.Drawing.Point(655, 385);
            this.txtMRP.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtMRP.Name = "txtMRP";
            this.txtMRP.Size = new System.Drawing.Size(180, 26);
            this.txtMRP.TabIndex = 21;
            // 
            // cmbbxProductName
            // 
            this.cmbbxProductName.FormattingEnabled = true;
            this.cmbbxProductName.Location = new System.Drawing.Point(655, 184);
            this.cmbbxProductName.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cmbbxProductName.Name = "cmbbxProductName";
            this.cmbbxProductName.Size = new System.Drawing.Size(180, 28);
            this.cmbbxProductName.TabIndex = 20;
            // 
            // cmbbxType
            // 
            this.cmbbxType.FormattingEnabled = true;
            this.cmbbxType.Location = new System.Drawing.Point(655, 93);
            this.cmbbxType.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cmbbxType.Name = "cmbbxType";
            this.cmbbxType.Size = new System.Drawing.Size(180, 28);
            this.cmbbxType.TabIndex = 19;
            this.cmbbxType.SelectedIndexChanged += new System.EventHandler(this.cmbbxType_SelectedIndexChanged);
            // 
            // lblPrice
            // 
            this.lblPrice.AutoSize = true;
            this.lblPrice.Location = new System.Drawing.Point(310, 516);
            this.lblPrice.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPrice.Name = "lblPrice";
            this.lblPrice.Size = new System.Drawing.Size(81, 20);
            this.lblPrice.TabIndex = 18;
            this.lblPrice.Text = "Real Price";
            // 
            // lblMRP
            // 
            this.lblMRP.AutoSize = true;
            this.lblMRP.Location = new System.Drawing.Point(310, 395);
            this.lblMRP.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMRP.Name = "lblMRP";
            this.lblMRP.Size = new System.Drawing.Size(44, 20);
            this.lblMRP.TabIndex = 17;
            this.lblMRP.Text = "MRP";
            // 
            // lblsize1
            // 
            this.lblsize1.AutoSize = true;
            this.lblsize1.Location = new System.Drawing.Point(310, 298);
            this.lblsize1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblsize1.Name = "lblsize1";
            this.lblsize1.Size = new System.Drawing.Size(37, 20);
            this.lblsize1.TabIndex = 16;
            this.lblsize1.Text = "size";
            // 
            // lblProductName
            // 
            this.lblProductName.AutoSize = true;
            this.lblProductName.Location = new System.Drawing.Point(310, 196);
            this.lblProductName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblProductName.Name = "lblProductName";
            this.lblProductName.Size = new System.Drawing.Size(110, 20);
            this.lblProductName.TabIndex = 15;
            this.lblProductName.Text = "Product Name";
            // 
            // lblType
            // 
            this.lblType.AutoSize = true;
            this.lblType.Location = new System.Drawing.Point(310, 105);
            this.lblType.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(43, 20);
            this.lblType.TabIndex = 14;
            this.lblType.Text = "Type";
            // 
            // lblSize
            // 
            this.lblSize.AutoSize = true;
            this.lblSize.Location = new System.Drawing.Point(520, 30);
            this.lblSize.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblSize.Name = "lblSize";
            this.lblSize.Size = new System.Drawing.Size(40, 20);
            this.lblSize.TabIndex = 13;
            this.lblSize.Text = "Size";
            // 
            // FrmSize
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1146, 661);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.txtRealPrice);
            this.Controls.Add(this.txtsize);
            this.Controls.Add(this.txtMRP);
            this.Controls.Add(this.cmbbxProductName);
            this.Controls.Add(this.cmbbxType);
            this.Controls.Add(this.lblPrice);
            this.Controls.Add(this.lblMRP);
            this.Controls.Add(this.lblsize1);
            this.Controls.Add(this.lblProductName);
            this.Controls.Add(this.lblType);
            this.Controls.Add(this.lblSize);
            this.Name = "FrmSize";
            this.Text = "FrmSize";
            this.Load += new System.EventHandler(this.FrmSize_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.TextBox txtRealPrice;
        private System.Windows.Forms.TextBox txtsize;
        private System.Windows.Forms.TextBox txtMRP;
        private System.Windows.Forms.ComboBox cmbbxProductName;
        private System.Windows.Forms.ComboBox cmbbxType;
        private System.Windows.Forms.Label lblPrice;
        private System.Windows.Forms.Label lblMRP;
        private System.Windows.Forms.Label lblsize1;
        private System.Windows.Forms.Label lblProductName;
        private System.Windows.Forms.Label lblType;
        private System.Windows.Forms.Label lblSize;
    }
}