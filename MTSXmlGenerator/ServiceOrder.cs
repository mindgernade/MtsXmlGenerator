using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MtsXmlGenerator
{
    class ServiceOrder
    {
        public static void setUpServiceOrder(string nmi, string checksum)
        {
            Random random = new Random();
            int rng = random.Next(100, 1000);

            string doc = File.ReadAllText(@"..\..\Templates\SO_NC_Itron_Template.xml");

            doc = doc.Replace("@NMI_TEMP", nmi);
            doc = doc.Replace("@CHECKSUM", checksum);
            doc = doc.Replace("@RNG_SO", nmi + checksum + rng);

            File.WriteAllText(@"..\..\Templates\sord" + "_test_Temp" + nmi + rng + ".xml", doc);
        }
    }
}
