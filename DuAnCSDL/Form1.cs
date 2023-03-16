using FontAwesome.Sharp;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

namespace DuAnCSDL
{
    public partial class Form1 : Form
    {
        private IconButton currentBtn;
        private Panel leftBorderBtn;

        public Form1()
        {
            InitializeComponent();
            leftBorderBtn = new Panel();
            leftBorderBtn.Size = new Size(7, 60);
            panelLeft.Controls.Add(leftBorderBtn);
            
        }

        private struct RGBColors
        {
            public static Color color1 = Color.FromArgb(172, 126, 241);
            public static Color color2 = Color.FromArgb(249, 118, 176);
            public static Color color3 = Color.FromArgb(253, 138, 114);
            public static Color color4 = Color.FromArgb(95, 77, 221);
            public static Color color5 = Color.FromArgb(249, 88, 155);
            public static Color color6 = Color.FromArgb(249, 161, 251);
        }

        private void ActiveBtn(object senderBtn, Color color)
        {
            if (senderBtn != null)
            {
                DisableBtn();

                currentBtn = (IconButton)senderBtn;
                currentBtn.BackColor = Color.FromArgb(37, 36, 81);
                currentBtn.ForeColor = color;
                currentBtn.TextAlign = ContentAlignment.MiddleCenter;
                currentBtn.IconColor = color;
                currentBtn.TextImageRelation = TextImageRelation.TextBeforeImage;
                currentBtn.ImageAlign = ContentAlignment.MiddleRight;
                currentBtn.IconSize = 48;


                leftBorderBtn.BackColor = color;
                leftBorderBtn.Location= new Point(0, currentBtn.Location.Y);
                leftBorderBtn.Visible = true;
                leftBorderBtn.BringToFront();
            }
        }

        private void DisableBtn()
        {
            if (currentBtn != null)
            {
                currentBtn.BackColor = Color.FromArgb(31, 30, 68);
                currentBtn.ForeColor = Color.Gainsboro;
                currentBtn.TextAlign = ContentAlignment.MiddleLeft;
                currentBtn.IconColor = Color.Gainsboro;
                currentBtn.TextImageRelation = TextImageRelation.ImageBeforeText;
                currentBtn.ImageAlign = ContentAlignment.MiddleLeft;
                currentBtn.IconSize = 32;
            }
        }

        private void iconButton1_Click(object sender, EventArgs e)
        {
           // khi click vào btn 1 sẽ in ra tất cả hàng hóa trong cửa hàng
            ActiveBtn(sender, RGBColors.color1);
            //lấy dữ liệu bỏ vô view của form.
            //dataGridView1.DataSource = getAllproduct();
            
            
        }

        private object getAllproduct()
        {
            //String query
            string query = "select* from[Hàng Hóa]";

            //Kết nối SQL
            SqlConnection connection = new SqlConnection(Connection.ConnectionString);


            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            DataTable data = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(data);
            connection.Close();
            
            return data;
        }

        private void iconButton2_Click(object sender, EventArgs e)
        {
            ActiveBtn(sender, RGBColors.color2);
        }

        private void iconButton3_Click(object sender, EventArgs e)
        {
            ActiveBtn(sender, RGBColors.color3);
        }

        private void iconButton6_Click(object sender, EventArgs e)
        {
            ActiveBtn(sender, RGBColors.color4);
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Reset();
        }

        private void Reset()
        {
            DisableBtn();
            leftBorderBtn.Visible = false;
        }

        //drag form
        [DllImport("user32.dll", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.dll", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hWnd, int wWsg, int wParam, int lParam);




    }
}