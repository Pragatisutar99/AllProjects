
namespace ShopManagement
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
            this.lblSize = new System.Windows.Forms.Label();
            this.lblType = new System.Windows.Forms.Label();
            this.lblProductName = new System.Windows.Forms.Label();
            this.lblSize1 = new System.Windows.Forms.Label();
            this.lblMRP = new System.Windows.Forms.Label();
            this.lblRealPrice = new System.Windows.Forms.Label();
            this.cmbbxType = new System.Windows.Forms.ComboBox();
            this.txtSize = new System.Windows.Forms.TextBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.cmbbxProduct = new System.Windows.Forms.ComboBox();
            this.txtMRP = new System.Windows.Forms.TextBox();
            this.txtRealPrice = new System.Windows.Forms.TextBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblSize
            // 
            this.lblSize.AutoSize = true;
            this.lblSize.Location = new System.Drawing.Point(425, 27);
            this.lblSize.Name = "lblSize";
            this.lblSize.Size = new System.Drawing.Size(40, 20);
            this.lblSize.TabIndex = 1;
            this.lblSize.Text = "Size";
            // 
            // lblType
            // 
            this.lblType.AutoSize = true;
            this.lblType.Location = new System.Drawing.Point(202, 105);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(43, 20);
            this.lblType.TabIndex = 2;
            this.lblType.Text = "Type";
            // 
            // lblProductName
            // 
            this.lblProductName.AutoSize = true;
            this.lblProductName.Location = new System.Drawing.Point(202, 176);
            this.lblProductName.Name = "lblProductName";
            this.lblProductName.Size = new System.Drawing.Size(106, 20);
            this.lblProductName.TabIndex = 3;
            this.lblProductName.Text = "ProductName";
            // 
            // lblSize1
            // 
            this.lblSize1.AutoSize = true;
            this.lblSize1.Location = new System.Drawing.Point(202, 254);
            this.lblSize1.Name = "lblSize1";
            this.lblSize1.Size = new System.Drawing.Size(40, 20);
            this.lblSize1.TabIndex = 4;
            this.lblSize1.Text = "Size";
            // 
            // lblMRP
            // 
            this.lblMRP.AutoSize = true;
            this.lblMRP.Location = new System.Drawing.Point(202, 334);
            this.lblMRP.Name = "lblMRP";
            this.lblMRP.Size = new System.Drawing.Size(44, 20);
            this.lblMRP.TabIndex = 5;
            this.lblMRP.Text = "MRP";
            // 
            // lblRealPrice
            // 
            this.lblRealPrice.AutoSize = true;
            this.lblRealPrice.Location = new System.Drawing.Point(202, 414);
            this.lblRealPrice.Name = "lblRealPrice";
            this.lblRealPrice.Size = new System.Drawing.Size(77, 20);
            this.lblRealPrice.TabIndex = 6;
            this.lblRealPrice.Text = "RealPrice";
            // 
            // cmbbxType
            // 
            this.cmbbxType.FormattingEnabled = true;
            this.cmbbxType.Location = new System.Drawing.Point(515, 97);
            this.cmbbxType.Name = "cmbbxType";
            this.cmbbxType.Size = new System.Drawing.Size(121, 28);
            this.cmbbxType.TabIndex = 7;
            // 
            // txtSize
            // 
            this.txtSize.Location = new System.Drawing.Point(515, 254);
            this.txtSize.Name = "txtSize";
            this.txtSize.Size = new System.Drawing.Size(121, 26);
            this.txtSize.TabIndex = 8;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(299, 521);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(124, 55);
            this.btnSave.TabIndex = 9;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // cmbbxProduct
            // 
            this.cmbbxProduct.FormattingEnabled = true;
            this.cmbbxProduct.Location = new System.Drawing.Point(515, 173);
            this.cmbbxProduct.Name = "cmbbxProduct";
            this.cmbbxProduct.Size = new System.Drawing.Size(121, 28);
            this.cmbbxProduct.TabIndex = 10;
            // 
            // txtMRP
            // 
            this.txtMRP.Location = new System.Drawing.Point(515, 328);
            this.txtMRP.Name = "txtMRP";
            this.txtMRP.Size = new System.Drawing.Size(121, 26);
            this.txtMRP.TabIndex = 11;
            // 
            // txtRealPrice
            // 
            this.txtRealPrice.Location = new System.Drawing.Point(515, 408);
            this.txtRealPrice.Name = "txtRealPrice";
            this.txtRealPrice.Size = new System.Drawing.Size(121, 26);
            this.txtRealPrice.TabIndex = 12;
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(512, 521);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(124, 55);
            this.btnClear.TabIndex = 13;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            // 
            // FrmSize
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1015, 647);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.txtRealPrice);
            this.Controls.Add(this.txtMRP);
            this.Controls.Add(this.cmbbxProduct);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.txtSize);
            this.Controls.Add(this.cmbbxType);
            this.Controls.Add(this.lblRealPrice);
            this.Controls.Add(this.lblMRP);
            this.Controls.Add(this.lblSize1);
            this.Controls.Add(this.lblProductName);
            this.Controls.Add(this.lblType);
            this.Controls.Add(this.lblSize);
            this.Name = "FrmSize";
            this.Text = "Size";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblSize;
        private System.Windows.Forms.Label lblType;
        private System.Windows.Forms.Label lblProductName;
        private System.Windows.Forms.Label lblSize1;
        private System.Windows.Forms.Label lblMRP;
        private System.Windows.Forms.Label lblRealPrice;
        private System.Windows.Forms.ComboBox cmbbxType;
        private System.Windows.Forms.TextBox txtSize;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.ComboBox cmbbxProduct;
        private System.Windows.Forms.TextBox txtMRP;
        private System.Windows.Forms.TextBox txtRealPrice;
        private System.Windows.Forms.Button btnClear;
    }
}