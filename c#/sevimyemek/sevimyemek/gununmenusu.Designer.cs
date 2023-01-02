namespace sevimyemek
{
    partial class gununmenusu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(gununmenusu));
            this.gyemeklistesi = new System.Windows.Forms.ListBox();
            this.SuspendLayout();
            // 
            // gyemeklistesi
            // 
            this.gyemeklistesi.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.gyemeklistesi.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.gyemeklistesi.ForeColor = System.Drawing.Color.Black;
            this.gyemeklistesi.FormattingEnabled = true;
            this.gyemeklistesi.ItemHeight = 22;
            this.gyemeklistesi.Location = new System.Drawing.Point(11, 76);
            this.gyemeklistesi.Margin = new System.Windows.Forms.Padding(2);
            this.gyemeklistesi.Name = "gyemeklistesi";
            this.gyemeklistesi.Size = new System.Drawing.Size(578, 70);
            this.gyemeklistesi.TabIndex = 0;
            // 
            // gununmenusu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(600, 216);
            this.Controls.Add(this.gyemeklistesi);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "gununmenusu";
            this.Text = "gununmenusu";
            this.Load += new System.EventHandler(this.gununmenusu_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox gyemeklistesi;
    }
}