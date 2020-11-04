using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Net;
using System.Web.Http;
using System.Net.Http;
using System.Text.RegularExpressions;
using Newtonsoft.Json.Linq;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace WebApplication5
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        private const string urlPattern = "https://api.exchangeratesapi.io/latest?base=";
        public string CurrencyConversion(float amount, string fromCurrency, string toCurrency)
        {

            string url = string.Format(urlPattern, fromCurrency, toCurrency);

            using (var wc = new WebClient())
            {
                var json = wc.DownloadString(url + fromCurrency);
               
                Exchange exchange = Newtonsoft.Json.JsonConvert.DeserializeObject<Exchange>(json);
                double exchangeRate =  (double) exchange.rates[toCurrency]; 

                return (amount * exchangeRate).ToString();
            }
        }
        protected void Convert(object sender, EventArgs e)
        {
            // lblResult.Text = CurrencyConversion(float.Parse(txt_amount.Text), txt_fromCurrency.Text, txt_ToCurrency.Text);



            lblResult.Text = CurrencyConversion(float.Parse(txt_amount.Text), txt_fromCurrency.Text, Converted.Text);
            V.Text = Converted.Text;
           

            
            
           
           string connetionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\beard\source\repos\WebApplication5\WebApplication5\App_Data\Database1.mdf;Integrated Security=True";
           string sql = "insert into History (FromCurrency,FromAmount,ToCurrency,ToAmount,Date1) values ('" + txt_fromCurrency.Text + "','" + txt_amount.Text + "','" + Converted.Text + "','" + lblResult.Text + "','" + DateTime.Now + "');";
            

            SqlConnection sqlConnection = new SqlConnection(connetionString);
            sqlConnection.Open();
            SqlDataReader sqlReader = null;
            SqlCommand command = new SqlCommand(sql, sqlConnection);
            sqlReader = command.ExecuteReader();
            sqlReader.Read();
            sqlReader.Close();

            Label1.Text = txt_amount.Text +" " + " "+txt_fromCurrency.Text+ " = " + " " +Converted.Text + " "+lblResult.Text;


        }
    }
    class Exchange
    {
        public Dictionary<String, double> rates { get; set; }
    }




}
