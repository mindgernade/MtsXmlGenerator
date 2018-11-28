using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace MtsXmlGenerator
{
    public class Payloads
    {
        public static void setUpPayloads(string nmi, string checksum)
        {
            Random random = new Random();
            int rng = random.Next(100, 999);

            string payload1 = File.ReadAllText(@"..\..\Payloads\Payload1_DIC.sql");
            string payload2 = File.ReadAllText(@"..\..\Payloads\Payload2_DIC.sql");
            string payload3 = File.ReadAllText(@"..\..\Payloads\Payload3_DIC.sql");

            payload1 = modifyPayload(payload1, nmi, checksum, rng);
            payload2 = modifyPayload(payload2, nmi, checksum, rng);
            payload3 = modifyPayload(payload3, nmi, checksum, rng);

            File.WriteAllText(@"..\..\Payloads\Payload1_test.sql", payload1);
            File.WriteAllText(@"..\..\Payloads\Payload2_test.sql", payload2);
            File.WriteAllText(@"..\..\Payloads\Payload3_test.sql", payload3);
        }

        private static string modifyPayload(string payload, string nmi, string checksum, int rng)
        {
            string meterID = checksum + nmi.Substring(0, 3) + rng;

            payload = payload.Replace("@NMI_TEMP", nmi + checksum);
            payload = payload.Replace("@METER_ID", meterID);
            payload = payload.Replace("@METER_NUMBER", "EQP" + meterID.Substring(0, 6));
            payload = payload.Replace("@CHANNEL", meterID);

            return payload;
        }
    }
}
