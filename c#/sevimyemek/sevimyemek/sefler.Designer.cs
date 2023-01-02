namespace sevimyemek
{
    partial class sefler
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(sefler));
            this.somerr = new System.Windows.Forms.Button();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.mehmet = new System.Windows.Forms.Button();
            this.danilo = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // somerr
            // 
            this.somerr.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.somerr.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.somerr.Location = new System.Drawing.Point(82, 49);
            this.somerr.Name = "somerr";
            this.somerr.Size = new System.Drawing.Size(81, 38);
            this.somerr.TabIndex = 0;
            this.somerr.Text = "somer sef ";
            this.somerr.UseVisualStyleBackColor = false;
            this.somerr.Click += new System.EventHandler(this.somerr_Click);
            // 
            // listBox1
            // 
            this.listBox1.BackColor = System.Drawing.Color.Crimson;
            this.listBox1.FormattingEnabled = true;
            this.listBox1.Location = new System.Drawing.Point(253, 49);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(344, 173);
            this.listBox1.TabIndex = 1;
            // 
            // mehmet
            // 
            this.mehmet.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.mehmet.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.mehmet.Location = new System.Drawing.Point(82, 113);
            this.mehmet.Name = "mehmet";
            this.mehmet.Size = new System.Drawing.Size(121, 38);
            this.mehmet.TabIndex = 0;
            this.mehmet.Text = "mehmet yalcinkaya";
            this.mehmet.UseVisualStyleBackColor = false;
            this.mehmet.Click += new System.EventHandler(this.mehmet_Click);
            // 
            // danilo
            // 
            this.danilo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.danilo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.danilo.Location = new System.Drawing.Point(82, 184);
            this.danilo.Name = "danilo";
            this.danilo.Size = new System.Drawing.Size(81, 38);
            this.danilo.TabIndex = 0;
            this.danilo.Text = "danilo zanna";
            this.danilo.UseVisualStyleBackColor = false;
            this.danilo.Click += new System.EventHandler(this.danilo_Click);
            // 
            // sefler
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(664, 293);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.danilo);
            this.Controls.Add(this.mehmet);
            this.Controls.Add(this.somerr);
            this.Name = "sefler";
            this.Text = "sefler";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button somerr;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Button mehmet;
        private System.Windows.Forms.Button danilo;
    }
}