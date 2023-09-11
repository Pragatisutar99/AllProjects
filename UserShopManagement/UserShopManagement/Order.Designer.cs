
namespace UserShopManagement
{
    partial class Order
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
            this.btnConFirmOrder = new System.Windows.Forms.Button();
            this.Price = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Size1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Product = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Type = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ListView = new System.Windows.Forms.ListView();
            this.SizeID = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.txtTotal = new System.Windows.Forms.TextBox();
            this.btnTotal = new System.Windows.Forms.Button();
            this.lblEmail1 = new System.Windows.Forms.Label();
            this.lblMobileno1 = new System.Windows.Forms.Label();
            this.lblName1 = new System.Windows.Forms.Label();
            this.lblEmail = new System.Windows.Forms.Label();
            this.lblMobileno = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.btnRrmoveFromCart = new System.Windows.Forms.Button();
            this.btnAdd = new System.Windows.Forms.Button();
            this.txtPrice = new System.Windows.Forms.TextBox();
            this.cmbbxProduct = new System.Windows.Forms.ComboBox();
            this.cmbbxType = new System.Windows.Forms.ComboBox();
            this.btnClear = new System.Windows.Forms.Button();
            this.btnLogOut = new System.Windows.Forms.Button();
            this.grdOrder = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblType = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.grdOrder)).BeginInit();
            this.SuspendLayout();
            // 
            // btnConFirmOrder
            // 
            this.btnConFirmOrder.Location = new System.Drawing.Point(727, 595);
            this.btnConFirmOrder.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnConFirmOrder.Name = "btnConFirmOrder";
            this.btnConFirmOrder.Size = new System.Drawing.Size(146, 35);
            this.btnConFirmOrder.TabIndex = 41;
            this.btnConFirmOrder.Text = "ConFirm Order";
            this.btnConFirmOrder.UseVisualStyleBackColor = true;
            // 
            // Price
            // 
            this.Price.Text = "Price";
            // 
            // Size1
            // 
            this.Size1.Text = "Size1";
            // 
            // Product
            // 
            this.Product.Text = "Product";
            // 
            // Type
            // 
            this.Type.Text = "Type";
            // 
            // ListView
            // 
            this.ListView.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.Type,
            this.Product,
            this.Size1,
            this.Price,
            this.SizeID});
            this.ListView.HideSelection = false;
            this.ListView.Location = new System.Drawing.Point(637, 178);
            this.ListView.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.ListView.Name = "ListView";
            this.ListView.Size = new System.Drawing.Size(460, 331);
            this.ListView.TabIndex = 40;
            this.ListView.UseCompatibleStateImageBehavior = false;
            this.ListView.View = System.Windows.Forms.View.Details;
            this.ListView.SelectedIndexChanged += new System.EventHandler(this.ListView_SelectedIndexChanged);
            // 
            // SizeID
            // 
            this.SizeID.Text = "SizeID";
            this.SizeID.Width = 0;
            // 
            // txtTotal
            // 
            this.txtTotal.Location = new System.Drawing.Point(879, 539);
            this.txtTotal.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtTotal.Name = "txtTotal";
            this.txtTotal.Size = new System.Drawing.Size(148, 26);
            this.txtTotal.TabIndex = 39;
            // 
            // btnTotal
            // 
            this.btnTotal.Location = new System.Drawing.Point(637, 535);
            this.btnTotal.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnTotal.Name = "btnTotal";
            this.btnTotal.Size = new System.Drawing.Size(112, 35);
            this.btnTotal.TabIndex = 38;
            this.btnTotal.Text = "Total";
            this.btnTotal.UseVisualStyleBackColor = true;
            // 
            // lblEmail1
            // 
            this.lblEmail1.AutoSize = true;
            this.lblEmail1.Location = new System.Drawing.Point(816, 133);
            this.lblEmail1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEmail1.Name = "lblEmail1";
            this.lblEmail1.Size = new System.Drawing.Size(57, 20);
            this.lblEmail1.TabIndex = 37;
            this.lblEmail1.Text = "Email1";
            // 
            // lblMobileno1
            // 
            this.lblMobileno1.AutoSize = true;
            this.lblMobileno1.Location = new System.Drawing.Point(816, 86);
            this.lblMobileno1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMobileno1.Name = "lblMobileno1";
            this.lblMobileno1.Size = new System.Drawing.Size(86, 20);
            this.lblMobileno1.TabIndex = 36;
            this.lblMobileno1.Text = "Mobile.no1";
            // 
            // lblName1
            // 
            this.lblName1.AutoSize = true;
            this.lblName1.Location = new System.Drawing.Point(811, -21);
            this.lblName1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblName1.Name = "lblName1";
            this.lblName1.Size = new System.Drawing.Size(60, 20);
            this.lblName1.TabIndex = 35;
            this.lblName1.Text = "Name1";
            // 
            // lblEmail
            // 
            this.lblEmail.AutoSize = true;
            this.lblEmail.Location = new System.Drawing.Point(723, 133);
            this.lblEmail.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEmail.Name = "lblEmail";
            this.lblEmail.Size = new System.Drawing.Size(48, 20);
            this.lblEmail.TabIndex = 34;
            this.lblEmail.Text = "Email";
            // 
            // lblMobileno
            // 
            this.lblMobileno.AutoSize = true;
            this.lblMobileno.Location = new System.Drawing.Point(713, 86);
            this.lblMobileno.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMobileno.Name = "lblMobileno";
            this.lblMobileno.Size = new System.Drawing.Size(77, 20);
            this.lblMobileno.TabIndex = 33;
            this.lblMobileno.Text = "Mobile.no";
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(693, -21);
            this.lblName.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(51, 20);
            this.lblName.TabIndex = 32;
            this.lblName.Text = "Name";
            // 
            // btnRrmoveFromCart
            // 
            this.btnRrmoveFromCart.Location = new System.Drawing.Point(481, 316);
            this.btnRrmoveFromCart.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnRrmoveFromCart.Name = "btnRrmoveFromCart";
            this.btnRrmoveFromCart.Size = new System.Drawing.Size(112, 82);
            this.btnRrmoveFromCart.TabIndex = 31;
            this.btnRrmoveFromCart.Text = "Remove From Cart";
            this.btnRrmoveFromCart.UseVisualStyleBackColor = true;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(481, 207);
            this.btnAdd.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(112, 35);
            this.btnAdd.TabIndex = 30;
            this.btnAdd.Text = "Add to Cart";
            this.btnAdd.UseVisualStyleBackColor = true;
            // 
            // txtPrice
            // 
            this.txtPrice.Location = new System.Drawing.Point(263, 496);
            this.txtPrice.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtPrice.Name = "txtPrice";
            this.txtPrice.Size = new System.Drawing.Size(148, 26);
            this.txtPrice.TabIndex = 29;
            this.txtPrice.TextChanged += new System.EventHandler(this.txtPrice_TextChanged);
            // 
            // cmbbxProduct
            // 
            this.cmbbxProduct.FormattingEnabled = true;
            this.cmbbxProduct.Location = new System.Drawing.Point(263, 115);
            this.cmbbxProduct.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cmbbxProduct.Name = "cmbbxProduct";
            this.cmbbxProduct.Size = new System.Drawing.Size(180, 28);
            this.cmbbxProduct.TabIndex = 28;
            this.cmbbxProduct.SelectedIndexChanged += new System.EventHandler(this.cmbbxProduct_SelectedIndexChanged);
            // 
            // cmbbxType
            // 
            this.cmbbxType.FormattingEnabled = true;
            this.cmbbxType.Location = new System.Drawing.Point(263, 51);
            this.cmbbxType.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cmbbxType.Name = "cmbbxType";
            this.cmbbxType.Size = new System.Drawing.Size(180, 28);
            this.cmbbxType.TabIndex = 27;
            this.cmbbxType.SelectedIndexChanged += new System.EventHandler(this.cmbbxType_SelectedIndexChanged);
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(300, 562);
            this.btnClear.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(112, 35);
            this.btnClear.TabIndex = 26;
            this.btnClear.Text = "Clear";
            this.btnClear.UseVisualStyleBackColor = true;
            // 
            // btnLogOut
            // 
            this.btnLogOut.Location = new System.Drawing.Point(73, 567);
            this.btnLogOut.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnLogOut.Name = "btnLogOut";
            this.btnLogOut.Size = new System.Drawing.Size(112, 35);
            this.btnLogOut.TabIndex = 25;
            this.btnLogOut.Text = "LogOut";
            this.btnLogOut.UseVisualStyleBackColor = true;
            // 
            // grdOrder
            // 
            this.grdOrder.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.grdOrder.Location = new System.Drawing.Point(49, 178);
            this.grdOrder.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.grdOrder.Name = "grdOrder";
            this.grdOrder.RowHeadersWidth = 62;
            this.grdOrder.Size = new System.Drawing.Size(394, 292);
            this.grdOrder.TabIndex = 24;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(89, 496);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 20);
            this.label3.TabIndex = 23;
            this.label3.Text = "Price";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(69, 115);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 20);
            this.label2.TabIndex = 22;
            this.label2.Text = "Product";
            // 
            // lblType
            // 
            this.lblType.AutoSize = true;
            this.lblType.Location = new System.Drawing.Point(69, 59);
            this.lblType.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblType.Name = "lblType";
            this.lblType.Size = new System.Drawing.Size(43, 20);
            this.lblType.TabIndex = 21;
            this.lblType.Text = "Type";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(713, 39);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(51, 20);
            this.label1.TabIndex = 42;
            this.label1.Text = "Name";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(816, 39);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(60, 20);
            this.label4.TabIndex = 43;
            this.label4.Text = "Name1";
            // 
            // Order
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1147, 680);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnConFirmOrder);
            this.Controls.Add(this.ListView);
            this.Controls.Add(this.txtTotal);
            this.Controls.Add(this.btnTotal);
            this.Controls.Add(this.lblEmail1);
            this.Controls.Add(this.lblMobileno1);
            this.Controls.Add(this.lblName1);
            this.Controls.Add(this.lblEmail);
            this.Controls.Add(this.lblMobileno);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.btnRrmoveFromCart);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.txtPrice);
            this.Controls.Add(this.cmbbxProduct);
            this.Controls.Add(this.cmbbxType);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnLogOut);
            this.Controls.Add(this.grdOrder);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.lblType);
            this.Name = "Order";
            this.Text = "Order";
            this.Load += new System.EventHandler(this.Order_Load);
            ((System.ComponentModel.ISupportInitialize)(this.grdOrder)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnConFirmOrder;
        private System.Windows.Forms.ColumnHeader Price;
        private System.Windows.Forms.ColumnHeader Size1;
        private System.Windows.Forms.ColumnHeader Product;
        private System.Windows.Forms.ColumnHeader Type;
        private System.Windows.Forms.ListView ListView;
        private System.Windows.Forms.ColumnHeader SizeID;
        private System.Windows.Forms.TextBox txtTotal;
        private System.Windows.Forms.Button btnTotal;
        private System.Windows.Forms.Label lblEmail1;
        private System.Windows.Forms.Label lblMobileno1;
        private System.Windows.Forms.Label lblName1;
        private System.Windows.Forms.Label lblEmail;
        private System.Windows.Forms.Label lblMobileno;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Button btnRrmoveFromCart;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.TextBox txtPrice;
        private System.Windows.Forms.ComboBox cmbbxProduct;
        private System.Windows.Forms.ComboBox cmbbxType;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.Button btnLogOut;
        private System.Windows.Forms.DataGridView grdOrder;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblType;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
    }
}