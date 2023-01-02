namespace sevimyemek
{
    partial class giris
    {
        /// <summary>
        ///Gerekli tasarımcı değişkeni.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///Kullanılan tüm kaynakları temizleyin.
        /// </summary>
        ///<param name="disposing">yönetilen kaynaklar dispose edilmeliyse doğru; aksi halde yanlış.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer üretilen kod

        /// <summary>
        /// Tasarımcı desteği için gerekli metot - bu metodun 
        ///içeriğini kod düzenleyici ile değiştirmeyin.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(giris));
            this.sifree = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.girisyap = new System.Windows.Forms.Button();
            this.sifre = new System.Windows.Forms.TextBox();
            this.kullaniciadi = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // sifree
            // 
            this.sifree.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.sifree.ForeColor = System.Drawing.Color.Indigo;
            this.sifree.Location = new System.Drawing.Point(328, 249);
            this.sifree.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.sifree.Name = "sifree";
            this.sifree.Size = new System.Drawing.Size(86, 55);
            this.sifree.TabIndex = 10;
            this.sifree.Text = "sifreal";
            this.sifree.UseVisualStyleBackColor = true;
            this.sifree.Click += new System.EventHandler(this.sifree_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Indigo;
            this.label2.Location = new System.Drawing.Point(217, 156);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(43, 21);
            this.label2.TabIndex = 8;
            this.label2.Text = "sifre";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Indigo;
            this.label1.Location = new System.Drawing.Point(217, 82);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 21);
            this.label1.TabIndex = 9;
            this.label1.Text = "kullaniciadi";
            // 
            // girisyap
            // 
            this.girisyap.Font = new System.Drawing.Font("Microsoft Tai Le", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.girisyap.ForeColor = System.Drawing.Color.Indigo;
            this.girisyap.Location = new System.Drawing.Point(211, 249);
            this.girisyap.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.girisyap.Name = "girisyap";
            this.girisyap.Size = new System.Drawing.Size(83, 55);
            this.girisyap.TabIndex = 7;
            this.girisyap.Text = "girisyap";
            this.girisyap.UseVisualStyleBackColor = true;
            this.girisyap.Click += new System.EventHandler(this.girisyap_Click);
            // 
            // sifre
            // 
            this.sifre.BackColor = System.Drawing.Color.Khaki;
            this.sifre.Location = new System.Drawing.Point(345, 156);
            this.sifre.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.sifre.Name = "sifre";
            this.sifre.Size = new System.Drawing.Size(105, 20);
            this.sifre.TabIndex = 5;
            // 
            // kullaniciadi
            // 
            this.kullaniciadi.BackColor = System.Drawing.Color.Khaki;
            this.kullaniciadi.Location = new System.Drawing.Point(345, 82);
            this.kullaniciadi.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.kullaniciadi.Name = "kullaniciadi";
            this.kullaniciadi.Size = new System.Drawing.Size(105, 20);
            this.kullaniciadi.TabIndex = 6;
            // 
            // giris
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(600, 366);
            this.Controls.Add(this.sifree);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.girisyap);
            this.Controls.Add(this.sifre);
            this.Controls.Add(this.kullaniciadi);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "giris";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button sifree;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button girisyap;
        private System.Windows.Forms.TextBox sifre;
        private System.Windows.Forms.TextBox kullaniciadi;
    }
}

