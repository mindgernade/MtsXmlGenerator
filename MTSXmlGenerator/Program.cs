using System;
using System.Collections.Generic;
using System.IO;
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

            //XDocument doc = XDocument.Load(@"C:\Users\ichavera\source\repos\MtsXmlGenerator\MtsXmlGenerator\Templates\SO_NC_DIC_Temp.xml");

            string doc = File.ReadAllText(@"C:\Users\ichavera\source\repos\MtsXmlGenerator\MtsXmlGenerator\Templates\SO_NC_Itron_Template.xml");

            //var tagText = doc.Root.Element("Header").Element("From").Value;

            //doc.Root.Element("Transactions").Element("Transaction").Element("ServiceOrderRequest").Element("ServiceOrder").Element("NMI").Value = nmi;

            doc = doc.Replace("@NMI_TEMP", nmi);

            //doc.Root.Element("Transactions").Element("Transaction").Element("ServiceOrderRequest").Element("ServiceOrder").Element("NMI").Attribute("checksum").Value = checksum;

            doc = doc.Replace("@CHECKSUM", checksum);

            //doc.Save(@"C:\Users\ichavera\source\repos\MtsXmlGenerator\MtsXmlGenerator\Templates\sord" + "_test_Temp" + rng.Next(100, 1000) + ".xml");
            //Console.ReadLine();

            File.WriteAllText(@"C:\Users\ichavera\source\repos\MtsXmlGenerator\MtsXmlGenerator\Templates\sord" + "_test_Temp" + nmi + rng.Next(100, 1000) + ".xml", doc);
            
        }
    }
}
