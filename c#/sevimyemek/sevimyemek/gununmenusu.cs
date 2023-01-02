using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace sevimyemek
{
    public partial class gununmenusu : Form
    {
        public gununmenusu()
        {
            InitializeComponent();
        }
        MySqlConnection conn = new MySqlConnection("Server=localhost;Database=sevimyemek;Uid=root;Pwd=;");

        private void gununmenusu_Load(object sender, EventArgs e)
        {
            gyemeklistesi.Items.Clear();
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("select corba,anayemek,tatli from gununmenu", conn);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                gyemeklistesi.Items.Add("çorba: " + dr[0] + " anayemek: " + dr[1] + " tatlı: " + dr[2]);
            }
            conn.Close();

        }
    }
}
