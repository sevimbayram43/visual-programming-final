using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.SqlClient;
namespace sevimyemek
{
    public partial class anasayfa : Form
    {
        public anasayfa()
        {
            InitializeComponent();
        }
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        private void gmenu_Click(object sender, EventArgs e)
        {
            gununmenusu gmnenu = new gununmenusu();
            gmnenu.ShowDialog();
            
        }

        private void anasayfa_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            gmtarif gm = new gmtarif();
            gm.Show();

        }

        private void sefler_Click(object sender, EventArgs e)
        {
            sefler sef = new sefler();
            sef.Show();

        }

        private void web_Click(object sender, EventArgs e)
        {
            web wb = new web ();    
            wb.Show();  

        }

        private void button2_Click(object sender, EventArgs e)
        {
            oneri on = new oneri();
            on.Show();
        }
    }
}
