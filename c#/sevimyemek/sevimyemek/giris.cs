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
    public partial class giris : Form
    {
       
        public giris()
        {
            InitializeComponent();
        }
        string connetionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=sevimyemek";
        public void gir()
        {
            try
            {
                string query = "SELECT * FROM uyelertablo WHERE kullanici_adi='"+kullaniciadi.Text+"'AND sifre='"+sifre.Text+"'";
                MySqlConnection databaseConnection = new MySqlConnection(connetionString);
                MySqlCommand commandDatabase = new MySqlCommand(query, databaseConnection);
                commandDatabase.CommandTimeout= 60;
                MySqlDataReader reader;

                databaseConnection.Open();
                reader = commandDatabase.ExecuteReader();

                if (reader.HasRows)
                {

                    while (reader.Read())
                    {
                        anasayfa ana = new anasayfa();
                        ana.Show();
                        this.Hide();

                    }
                }
                else
                {
                    MessageBox.Show("Hatalı Giriş!");
                }
                databaseConnection.Close();



            }
            catch (Exception ex) { MessageBox.Show("OPPS! Bir Şeyler Yanlış Gitti."+ ex.ToString()); }
        }
        private void Form1_Load(object sender, EventArgs e)
        {

            
        }

        private void girisyap_Click(object sender, EventArgs e)
        {
            gir();
            
        }

        private void sifree_Click(object sender, EventArgs e)
        {
            sifreal sifre= new sifreal();
            sifre.Show();
        }
    }

}
