using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MtsXmlGenerator
{
    class Menu
    {
        public static string GetNmi()
        {
            bool valid = false;
            long i;
            string nmi;

            Console.WriteLine("Please enter a valid NMI: ");

            nmi = Console.ReadLine();

            while (!valid)
            {
                if (nmi.Length != 10 || !long.TryParse(nmi, out i))
                {
                    Console.WriteLine("Not Valid NMI! Please enter a 10 digit NMI: ");
                    nmi = Console.ReadLine();
                }
                else
                {
                    valid = true;
                }
            }

            return nmi;
        }

        public static string GetChecksum()
        {
            bool valid = false;
            int i;
            string checksum;

            Console.WriteLine("Please enter the NMI Checksum: ");
            checksum = Console.ReadLine();

            while (!valid)
            {
                if (checksum.Length != 1 || !int.TryParse(checksum, out i))
                {
                    Console.WriteLine("Not Valid NMI Checksum! Please enter a 1 digit NMI: ");
                    checksum = Console.ReadLine();
                }
                else
                {
                    valid = true;
                }
            }

            return checksum.ToString();
        }
    }
}
