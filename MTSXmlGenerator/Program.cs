using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace MtsXmlGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            string nmi = Menu.GetNmi();
            string checksum = Menu.GetChecksum();
            Random rng = new Random();

            Payloads.setUpPayloads(nmi, checksum);

            XDocument doc = XDocument.Load(@"C:\Users\ichavera\source\repos\MtsXmlGenerator2\MtsXmlGenerator\Templates\SO_NC_DIC_Temp.xml");

            //var tagText = doc.Root.Element("Header").Element("From").Value;

            doc.Root.Element("Transactions").Element("Transaction").Element("ServiceOrderRequest").Element("ServiceOrder").Element("NMI").Value = nmi;

            doc.Root.Element("Transactions").Element("Transaction").Element("ServiceOrderRequest").Element("ServiceOrder").Element("NMI").Attribute("checksum").Value = checksum;

            doc.Save(@"C:\Users\ichavera\source\repos\MtsXmlGenerator2\MtsXmlGenerator\Templates\sord" + "_test_Temp" + rng.Next(100, 1000) + ".xml");
            //Console.ReadLine();
            
        }
    }
}
