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
    public partial class gmtarif : Form
    {
        public gmtarif()
        {
            InitializeComponent();
        }
        MySqlConnection conn = new MySqlConnection("Server=localhost;Database=sevimyemek;Uid=root;Pwd=;");

        private void gmtarif_Load(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("select * from gmtarif", conn);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                listBox1.Items.Add("çorba:" + dr["corba"]/* + dr["yemek"] + dr["tatli"] */);
                listBox2.Items.Add("anayemek:" + dr["anayemek"]/* + dr["yemek"] + dr["tatli"] */);
                listBox3.Items.Add("tatli:" + dr["tatli"]/* + dr["yemek"] + dr["tatli"] */);

            }
            conn.Close();

        }
    }
}
