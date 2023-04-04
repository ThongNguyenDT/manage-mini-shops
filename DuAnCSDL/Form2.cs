using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Drawing.Text;
using DuAnCSDL.Properties;
using System.Resources;


namespace DuAnCSDL
{

    public partial class LoginForm : Form
    {

        public LoginForm()
        {
            //Create your private font collection object.
            PrivateFontCollection collection = new PrivateFontCollection();

            collection.AddFontFile(@"C:\Learn\csdl\DuAn\DuAnCSDL\DuAnCSDL_QLchuoiSTmini\DuAnCSDL\Resources\PoppinsSemiBold.ttf");


            InitializeComponent();
            label1.Font = new Font(collection.Families[0], 32, FontStyle.Regular, GraphicsUnit.Point);

            pictureBox3.Visible = false;
            pictureBox1.Width = this.Width * 772 / 1504 - 85;
            pictureBox1.Height = this.Height;
            pictureBox1.Controls.Add(pictureBox2);
            pictureBox2.Location = new Point(pictureBox1.Width - pictureBox2.Width, 0 - pictureBox2.Height / 5);
            pictureBox2.BackColor = Color.Transparent;
            pictureBox1.Controls.Add((pictureBox3));
            pictureBox3.Location = new Point((pictureBox1.Width / 2) - (pictureBox2.Width / 2), (pictureBox1.Height / 2) - (pictureBox2.Height / 2) - 60);
            pictureBox3.Width = this.Width * 344 / 1193;
            pictureBox3.Visible = true;
            pictureBox3.BackColor = Color.Transparent;
            tableLayoutPanel1.Width = Width - pictureBox1.Width;
            tableLayoutPanel1.Location = new Point((int)(pictureBox1.Width * 1.1), 3);
            usericon.Location = new Point(tableLayoutPanel1.Location.X + txb_username.Location.X - usericon.Width, txb_username.Location.Y);
            passico.Location = new Point(tableLayoutPanel1.Location.X + txb_pass.Location.X - usericon.Width, txb_pass.Location.Y);


        }

        private void LoginForm_Resize(object sender, EventArgs e)
        {
            bool lockp = false;
            pictureBox1.Width = this.Width * 772 / 1504 - 85;
            pictureBox1.Height = this.Height;
            tableLayoutPanel1.Width = Width - pictureBox1.Width;
            tableLayoutPanel1.Location = new Point((int)(pictureBox1.Width * 1.1), 3);
            if (this.Width > 1140 && this.Width <= 1728)
            {
                pictureBox1.Visible = true;
                pictureBox2.Visible = true;
                pictureBox3.Visible = true;
                pictureBox3.Width = this.Width * 344 / 1193;
                pictureBox3.Height = pictureBox3.Width * 306 / 344;

            }
            else if (this.Width <= 720)
            {
                pictureBox1.Visible = false;
                pictureBox2.Visible = false;
                pictureBox3.Visible = false;
                tableLayoutPanel1.Width = this.Width;
                tableLayoutPanel1.Location = new Point(0, 3);
            }
            else
            {
                pictureBox1.Visible = true;
                pictureBox2.Visible = true;
                pictureBox3.Visible = true;
                pictureBox3.Width = 300;
                lockp = true;
            }

            pictureBox3.Location = new Point((pictureBox1.Width / 2) - (pictureBox2.Width / 2),
                    ((int)(pictureBox1.Height * (1 - 0.172413)) / 2) - (pictureBox2.Height / 2));
            if (lockp)
                if (this.Width <= 1140)
                    pictureBox3.Height = 293;
                else
                {
                    pictureBox3.Width = 500;
                    pictureBox3.Height = 433;
                }
            usericon.Location = new Point(tableLayoutPanel1.Location.X + txb_username.Location.X - usericon.Width, txb_username.Location.Y);
            passico.Location = new Point(tableLayoutPanel1.Location.X + txb_pass.Location.X - usericon.Width, txb_pass.Location.Y);
            Console.WriteLine("table1:   {0}/{1}", pictureBox1.Width, 3);
            Console.WriteLine("txb:      {0}/{1}", txb_username.Location.X, txb_username.Location.Y);
            Console.WriteLine("picture1: {0}/{1}", pictureBox1.Width, pictureBox1.Height);
            Console.WriteLine("picture3: {0}/{1}", pictureBox3.Width, pictureBox3.Height);
            Console.WriteLine("this :     {0}:{1}", this.Width, this.Height);
        }

        private void LoginForm_Load(object sender, EventArgs e)
        {
            AllocConsole();
        }
        [DllImport("kernel32.dll", SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        static extern bool AllocConsole();


    }
}
