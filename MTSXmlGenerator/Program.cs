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

            Random random = new Random();
            int rng = random.Next(100, 1000);

            Payloads.setUpPayloads(nmi, checksum, "POWCP1", "POWERCR1");

            string doc = File.ReadAllText(@"..\..\Templates\SO_NC_Itron_Template.xml");

            doc = doc.Replace("@NMI_TEMP", nmi);
            doc = doc.Replace("@CHECKSUM", checksum);
            doc = doc.Replace("@RNG_SO", nmi + checksum + rng);

            File.WriteAllText(@"..\..\Templates\sord" + "_test_Temp" + nmi + rng + ".xml", doc);
            
        }
    }
}
