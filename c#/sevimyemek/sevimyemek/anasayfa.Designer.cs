namespace sevimyemek
{
    partial class anasayfa
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(anasayfa));
            this.gmenu = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.sefler = new System.Windows.Forms.Button();
            this.web = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // gmenu
            // 
            this.gmenu.Location = new System.Drawing.Point(460, 144);
            this.gmenu.Margin = new System.Windows.Forms.Padding(2);
            this.gmenu.Name = "gmenu";
            this.gmenu.Size = new System.Drawing.Size(129, 84);
            this.gmenu.TabIndex = 0;
            this.gmenu.Text = "günü menusu";
            this.gmenu.UseVisualStyleBackColor = true;
            this.gmenu.Click += new System.EventHandler(this.gmenu_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(318, 144);
            this.button1.Margin = new System.Windows.Forms.Padding(2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(138, 84);
            this.button1.TabIndex = 1;
            this.button1.Text = "günü menusu tarifi ";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // sefler
            // 
            this.sefler.Location = new System.Drawing.Point(176, 144);
            this.sefler.Margin = new System.Windows.Forms.Padding(2);
            this.sefler.Name = "sefler";
            this.sefler.Size = new System.Drawing.Size(138, 84);
            this.sefler.TabIndex = 2;
            this.sefler.Text = "sefler";
            this.sefler.UseVisualStyleBackColor = true;
            this.sefler.Click += new System.EventHandler(this.sefler_Click);
            // 
            // web
            // 
            this.web.Location = new System.Drawing.Point(176, 233);
            this.web.Name = "web";
            this.web.Size = new System.Drawing.Size(138, 65);
            this.web.TabIndex = 3;
            this.web.Text = "yonlendirme";
            this.web.UseVisualStyleBackColor = true;
            this.web.Click += new System.EventHandler(this.web_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(320, 233);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(268, 65);
            this.button2.TabIndex = 4;
            this.button2.Text = "görüş ve önerileriniz";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // anasayfa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(600, 366);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.web);
            this.Controls.Add(this.sefler);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.gmenu);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "anasayfa";
            this.Text = "anasayfa";
            this.Load += new System.EventHandler(this.anasayfa_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button gmenu;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button sefler;
        private System.Windows.Forms.Button web;
        private System.Windows.Forms.Button button2;
    }
}