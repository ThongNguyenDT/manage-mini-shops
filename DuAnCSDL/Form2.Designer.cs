

namespace DuAnCSDL
{
    partial class LoginForm
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
        public class MyTextBox : TextBox
        {
            public MyTextBox()
            {
                BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
                BackColor = SystemColors.Control;
                AutoSize = false; //Allows you to change height to have bottom padding
                Controls.Add(new Label()
                { Height = 1, Dock = DockStyle.Bottom, BackColor = Color.Black });
            }
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(LoginForm));
            pictureBox1 = new PictureBox();
            pictureBox2 = new PictureBox();
            pictureBox3 = new PictureBox();
            tableLayoutPanel1 = new TableLayoutPanel();
            pictureBox4 = new PictureBox();
            label1 = new Label();
            txb_username = new MyTextBox();
            txb_pass = new MyTextBox();
            usericon = new FontAwesome.Sharp.IconPictureBox();
            passico = new FontAwesome.Sharp.IconPictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).BeginInit();
            tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox4).BeginInit();
            ((System.ComponentModel.ISupportInitialize)usericon).BeginInit();
            ((System.ComponentModel.ISupportInitialize)passico).BeginInit();
            SuspendLayout();
            // 
            // pictureBox1
            // 
            pictureBox1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left;
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.Location = new Point(0, 3);
            pictureBox1.Margin = new Padding(0);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(772, 693);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 1;
            pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            pictureBox2.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox2.BackColor = Color.Transparent;
            pictureBox2.Image = (Image)resources.GetObject("pictureBox2.Image");
            pictureBox2.Location = new Point(-295, 3);
            pictureBox2.Name = "pictureBox2";
            pictureBox2.Size = new Size(263, 251);
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.TabIndex = 2;
            pictureBox2.TabStop = false;
            // 
            // pictureBox3
            // 
            pictureBox3.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            pictureBox3.Image = (Image)resources.GetObject("pictureBox3.Image");
            pictureBox3.Location = new Point(196, 154);
            pictureBox3.Margin = new Padding(0);
            pictureBox3.Name = "pictureBox3";
            pictureBox3.Size = new Size(344, 306);
            pictureBox3.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox3.TabIndex = 3;
            pictureBox3.TabStop = false;
            // 
            // tableLayoutPanel1
            // 
            tableLayoutPanel1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            tableLayoutPanel1.ColumnCount = 1;
            tableLayoutPanel1.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tableLayoutPanel1.Controls.Add(pictureBox4, 0, 1);
            tableLayoutPanel1.Controls.Add(label1, 0, 2);
            tableLayoutPanel1.Controls.Add(txb_username, 0, 3);
            tableLayoutPanel1.Controls.Add(txb_pass, 0, 4);
            tableLayoutPanel1.Location = new Point(774, 3);
            tableLayoutPanel1.Name = "tableLayoutPanel1";
            tableLayoutPanel1.RowCount = 7;
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 16.1796532F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 13.5281382F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 13.5281382F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 13.5281382F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 13.5281382F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 13.5281382F));
            tableLayoutPanel1.RowStyles.Add(new RowStyle(SizeType.Percent, 16.1796532F));
            tableLayoutPanel1.Size = new Size(428, 695);
            tableLayoutPanel1.TabIndex = 4;
            // 
            // pictureBox4
            // 
            pictureBox4.Anchor = AnchorStyles.Top | AnchorStyles.Bottom;
            pictureBox4.Image = (Image)resources.GetObject("pictureBox4.Image");
            pictureBox4.Location = new Point(111, 112);
            pictureBox4.Margin = new Padding(0);
            pictureBox4.Name = "pictureBox4";
            pictureBox4.Size = new Size(206, 94);
            pictureBox4.SizeMode = PictureBoxSizeMode.Zoom;
            pictureBox4.TabIndex = 5;
            pictureBox4.TabStop = false;
            // 
            // label1
            // 
            label1.Anchor = AnchorStyles.None;
            label1.ForeColor = Color.FromArgb(153, 153, 153);
            label1.Location = new Point(7, 206);
            label1.Name = "label1";
            label1.Size = new Size(413, 94);
            label1.TabIndex = 6;
            label1.Text = "WELCOME";
            label1.TextAlign = ContentAlignment.TopCenter;
            // 
            // txb_username
            // 
            txb_username.Anchor = AnchorStyles.Top;
            txb_username.Location = new Point(114, 303);
            txb_username.Name = "txb_username";
            txb_username.Size = new Size(199, 23);
            txb_username.TabIndex = 7;
            // 
            // txb_pass
            // 
            txb_pass.Anchor = AnchorStyles.Top;
            txb_pass.Location = new Point(114, 397);
            txb_pass.Name = "txb_pass";
            txb_pass.Size = new Size(199, 23);
            txb_pass.TabIndex = 8;
            // 
            // usericon
            // 
            usericon.BackColor = SystemColors.Control;
            usericon.ForeColor = SystemColors.ControlDark;
            usericon.IconChar = FontAwesome.Sharp.IconChar.User;
            usericon.IconColor = SystemColors.ControlDark;
            usericon.IconFont = FontAwesome.Sharp.IconFont.Solid;
            usericon.Location = new Point(781, 306);
            usericon.Name = "usericon";
            usericon.Size = new Size(35, 32);
            usericon.TabIndex = 5;
            usericon.TabStop = false;
            // 
            // passico
            // 
            passico.BackColor = SystemColors.Control;
            passico.ForeColor = SystemColors.ControlDark;
            passico.IconChar = FontAwesome.Sharp.IconChar.Lock;
            passico.IconColor = SystemColors.ControlDark;
            passico.IconFont = FontAwesome.Sharp.IconFont.Solid;
            passico.Location = new Point(774, 400);
            passico.Name = "passico";
            passico.Size = new Size(42, 32);
            passico.TabIndex = 6;
            passico.TabStop = false;
            // 
            // LoginForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackgroundImageLayout = ImageLayout.Stretch;
            ClientSize = new Size(1193, 696);
            Controls.Add(passico);
            Controls.Add(usericon);
            Controls.Add(tableLayoutPanel1);
            Controls.Add(pictureBox3);
            Controls.Add(pictureBox2);
            Controls.Add(pictureBox1);
            DoubleBuffered = true;
            Name = "LoginForm";
            Text = "Login";
            Load += LoginForm_Load;
            Resize += LoginForm_Resize;
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox2).EndInit();
            ((System.ComponentModel.ISupportInitialize)pictureBox3).EndInit();
            tableLayoutPanel1.ResumeLayout(false);
            tableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox4).EndInit();
            ((System.ComponentModel.ISupportInitialize)usericon).EndInit();
            ((System.ComponentModel.ISupportInitialize)passico).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private PictureBox pictureBox1;
        private PictureBox pictureBox2;
        private PictureBox pictureBox3;
        private TableLayoutPanel tableLayoutPanel1;
        private PictureBox pictureBox4;
        private Label label1;
        private MyTextBox textBox1;
        private TextBox txb_username;
        private FontAwesome.Sharp.IconPictureBox usericon;
        private TextBox txb_pass;
        private FontAwesome.Sharp.IconPictureBox passico;
    }
}