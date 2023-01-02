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
    public partial class sifreal : Form
    {
        public sifreal()
        {
            InitializeComponent();
        }
        MySqlConnection baglan = new MySqlConnection("Server=localhost;Database=sevimyemek;Uid=root;Pwd='';");
        private void sifreal_Load(object sender, EventArgs e)
        {

        }

        private void sifre_Click(object sender, EventArgs e)
        {
            try
            {
                baglan.Open();
                
                MySqlCommand ekle = new MySqlCommand("insert into uyelertablo (kullanici_adi,sifre) values ('" + textBox1.Text + "','" + textBox2.Text + "')", baglan);
                
                object sonuc = null;
                sonuc = ekle.ExecuteNonQuery(); 
                if (sonuc != null)
                    MessageBox.Show("Sisteme başarıyla eklendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
                else
                    MessageBox.Show("Sisteme eklenemedi.", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                
                baglan.Close();
            }
            catch (Exception HataYakala)
            {
                MessageBox.Show("Hata: " + HataYakala.Message, "Hata", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
