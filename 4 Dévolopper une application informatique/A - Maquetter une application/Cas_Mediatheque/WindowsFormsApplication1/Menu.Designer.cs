namespace WindowsFormsApplication1
{
    partial class Menu
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
            this.button1 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.button9 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(36, 48);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(124, 96);
            this.button1.TabIndex = 0;
            this.button1.Text = "Créer une fiche lecteur";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(36, 179);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(124, 96);
            this.button3.TabIndex = 0;
            this.button3.Text = "Créer une fiche document";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(36, 300);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(124, 96);
            this.button5.TabIndex = 0;
            this.button5.Text = "Créer une fiche emprunt";
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(199, 300);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(124, 96);
            this.button6.TabIndex = 0;
            this.button6.Text = "Consulter les fiches emprunt";
            this.button6.UseVisualStyleBackColor = true;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(199, 48);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(124, 96);
            this.button7.TabIndex = 0;
            this.button7.Text = "Consulter / Modifier les fiches lecteur";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(199, 179);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(124, 96);
            this.button8.TabIndex = 0;
            this.button8.Text = "Consulter / Modifier les fiches document";
            this.button8.UseVisualStyleBackColor = true;
            // 
            // button9
            // 
            this.button9.Location = new System.Drawing.Point(302, 12);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(46, 21);
            this.button9.TabIndex = 6;
            this.button9.Text = "Aide";
            this.button9.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(36, 415);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(124, 96);
            this.button2.TabIndex = 0;
            this.button2.Text = "Retour d\'un document";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // Menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(360, 533);
            this.Controls.Add(this.button9);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.button8);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button1);
            this.Name = "Menu";
            this.Text = "Menu";
            this.Load += new System.EventHandler(this.Form2_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button2;
    }
}