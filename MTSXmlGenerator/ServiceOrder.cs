using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MtsXmlGenerator
{
    public class ServiceOrder
    {
        public static void setUpServiceOrder(string nmi, string checksum, string toDrop, string fromDrop)
        {
            Random random = new Random();
            int rng = random.Next(100, 1000);

            StringBuilder doc = new StringBuilder(File.ReadAllText(@"C:\Users\ichavera\Source\Repos\MtsXmlGenerator2\MtsXmlGenerator\Templates\SO_NC_Itron_Template.xml"));

            doc = doc.Replace("@NMI_TEMP", nmi);
            doc = doc.Replace("@CHECKSUM", checksum);
            doc = doc.Replace("@RNG_SO", nmi + checksum + rng);
            doc = doc.Replace("@TO", toDrop);
            doc = doc.Replace("@FROM", fromDrop);

            File.WriteAllText(@"C:\Users\ichavera\Source\Repos\MtsXmlGenerator2\MtsXmlGenerator\Templates\sord" + "_test_Temp" + nmi + rng + ".xml", doc.ToString());
        }
    }
}
