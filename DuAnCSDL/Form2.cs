using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DuAnCSDL
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
            pictureBox1.Width =  this.Width * 772 / 1504 - 85;
            pictureBox1.Controls.Add(pictureBox2);
            pictureBox2.Location = new Point(pictureBox1.Width-pictureBox2.Width, 0-pictureBox2.Height/5);
            pictureBox2.BackColor = Color.Transparent;

            
        }

        private void LoginForm_Resize(object sender, EventArgs e)
        {
            pictureBox1.Width = this.Width * 772 / 1504 - 85;
        }
    }
}
