using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data;
using MySql.Data.MySqlClient;


namespace sevimyemek
{
    internal class Baglan
    {
        MySqlConnection baglan;

        public Baglan()
        {
            baglan = new MySqlConnection("Server=localhost;database=sevimyemek;uid='root';password''");
        }
       
        public void baglantiac()
        {
            baglan.Open();
        }
        public void baglantikapa()
        {
            baglan.Close();
        }
    }
}
