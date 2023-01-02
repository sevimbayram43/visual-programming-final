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
    public partial class oneri : Form
    {
        public oneri()
        {
            InitializeComponent();
        }
        MySqlConnection baglan = new MySqlConnection("Server=localhost;Database=sevimyemek;Uid=root;Pwd='';");

        private void cesitler_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                baglan.Open();

                MySqlCommand ekle = new MySqlCommand("insert into oner (adsoyad,eposta,oneriler) values ('" + textBox1.Text + "','" + textBox2.Text + "','" + richTextBox1.Text + "')", baglan);

                object sonuc = null;
                sonuc = ekle.ExecuteNonQuery();
                if (sonuc != null)
                    MessageBox.Show("öneriniz başarıyla eklendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                else
                    MessageBox.Show("öneriniz eklenemedi.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                baglan.Close();
            }
            catch (Exception HataYakala)
            {
                MessageBox.Show("Hata: " + HataYakala.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}
