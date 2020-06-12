//Code behind stranica
using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.IO;

namespace Test
{
    public partial class Stranica : System.Web.UI.Page
    {
        //Ovo je putanja foldera u koji se sprema XML.
        //Promijeniti po potrebi/želji
        string path = @"C:\Users\mihav\OneDrive\Radna površina\TVZ\2. Godina\4. Semestar\XML\projekt\Test\Popis.xml";

        //Base64Enkodiranje funkcija
        public static string Base64Encode(string plainText)
        {
            var plainTextBytes = System.Text.Encoding.UTF8.GetBytes(plainText);
            return System.Convert.ToBase64String(plainTextBytes);
        }

        //Base64Dekodiranje funkcija
        public static string Base64Decode(string base64EncodedData)
        {
            var base64EncodedBytes = System.Convert.FromBase64String(base64EncodedData);
            return System.Text.Encoding.UTF8.GetString(base64EncodedBytes);
        }

        //Postavljanje teksta skrivenih labela na "0" ako nije postback kako
        //bi mogli izračunati ukupan broj korištenja funkcija kodiranja i dekodiranja
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LabelHiddenEncode.Text = "0";
                LabelHiddenDecode.Text = "0";
            }
        }

        //Base64Enkodiranje gumb_klik
        protected void ButtonEncode_Click(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(LabelHiddenEncode.Text) + 1;
            LabelHiddenEncode.Text = Convert.ToString(i);
            TextBoxOutput.Text = Base64Encode(TextBoxInput.Text);
        }

        //Base64Dekodiranje gumb_klik
        protected void ButtonDecode_Click(object sender, EventArgs e)
        {
            int i = Convert.ToInt32(LabelHiddenDecode.Text) + 1;
            LabelHiddenDecode.Text = Convert.ToString(i);
            TextBoxOutput.Text = Base64Decode(TextBoxInput.Text);
        }

        //Submit gumb_klik
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            //Određivanje spola iz odabira radiobuttona
            string spol = "";
            if(RadioButtonFemale.Checked == true)
            {
                spol = RadioButtonFemale.Text;
            }
            else if (RadioButtonMale.Checked == true)
            {
                spol = RadioButtonMale.Text;
            }
            else if (RadioButtonUnknown.Checked == true)
            {
                spol = RadioButtonUnknown.Text;
            }

            //Određivanje titule iz TextBoxa, ukoliko je prazan, titula je "nezaposlen"
            string titula = "";
            if(TextBoxTitle.Text == "")
            {
                titula = "Nezaposlen";
            }
            else
            {
                titula = TextBoxTitle.Text;
            }

            //brojac koji broji koliko su puta koristene funkcije encode i decode
            string brojac = Convert.ToString(Convert.ToInt32(LabelHiddenDecode.Text) + Convert.ToInt32(LabelHiddenEncode.Text));

            //string koji sprema datum i vrijeme pohrane
            string datumIVrijeme = Convert.ToString(DateTime.Now);

            //Test postoji li xml datoteka. Ako postoji, dodaje korisnika
            //Ako ne postoji, stvara novu datoteku i bilježi prvog korisnika
            if (File.Exists(path))
            {
                XDocument XMLKojiVecPostoji = XDocument.Load(path);
                XMLKojiVecPostoji.Element("Korisnici").Add(
                    new XElement("Korisnik",
                        new XElement("Godine", TextBoxGodine.Text),
                        new XElement("Spol", spol),
                        new XElement("PoslovnaTitula", titula),
                        new XElement("BrojKoristnejnaFunkcija", brojac),
                        new XElement("DatumIVrijemeUnosa", datumIVrijeme)
                        ));
                XMLKojiVecPostoji.Save(path);
            }

            else
            {
                XDocument popis = new XDocument(
                new XDeclaration("1.0", "utf-8", "yes"),
                new XComment("Popis korisnika aplikacije"),
                new XElement("Korisnici",
                    new XElement("Korisnik",
                        new XElement("Godine", TextBoxGodine.Text),
                        new XElement("Spol", spol),
                        new XElement("PoslovnaTitula", titula),
                        new XElement("BrojKoristnejnaFunkcija", brojac),
                        new XElement("DatumIVrijemeUnosa", datumIVrijeme)
                        )));
                popis.Save(path);
            }

            TextBoxTitle.Text = "";
            RadioButtonUnknown.Checked = true;
            TextBoxTitle.Text = "";
            TextBoxGodine.Text = "";
        }
    }
}
