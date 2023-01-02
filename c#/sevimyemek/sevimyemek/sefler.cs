using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
namespace sevimyemek
{
    public partial class sefler : Form
    {
        public sefler()
        {
            InitializeComponent();
        }
        MySqlConnection conn = new MySqlConnection("Server=localhost;Database=sevimyemek;Uid=root;Pwd=;");

        private void somerr_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("select * from somer", conn);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox1.Items.Add("sehir:" + dr["sehir"]/* + dr["yemek"] + dr["tatli"] */);
                listBox1.Items.Add("odul:" + dr["odul"]/* + dr["yemek"] + dr["tatli"] */);
                listBox1.Items.Add("restorant:" + dr["restorant"]/* + dr["yemek"] + dr["tatli"] */);

            }


            conn.Close();

        }

        private void mehmet_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("select * from mehmet", conn);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox1.Items.Add("sehir:" + dr["sehir"]/* + dr["yemek"] + dr["tatli"] */);
                listBox1.Items.Add("odul:" + dr["odul"]/* + dr["yemek"] + dr["tatli"] */);
                listBox1.Items.Add("restorant:" + dr["restorant"]/* + dr["yemek"] + dr["tatli"] */);

            }


            conn.Close();
        }

        private void danilo_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("select * from danilo", conn);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox1.Items.Add("sehir:" + dr["sehir"]/* + dr["yemek"] + dr["tatli"] */);
                listBox1.Items.Add("odul:" + dr["odul"]/* + dr["yemek"] + dr["tatli"] */);
                listBox1.Items.Add("restorant:" + dr["restorant"]/* + dr["yemek"] + dr["tatli"] */);

            }


            conn.Close();
        }
    }
}
