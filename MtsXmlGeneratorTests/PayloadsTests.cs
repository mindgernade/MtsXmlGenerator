using Microsoft.VisualStudio.TestTools.UnitTesting;
using MtsXmlGenerator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MtsXmlGenerator.Tests
{
    [TestClass()]
    public class PayloadsTests
    {
        [TestMethod()]
        public void setUpPayloadsTest(string v, string v1)
        {
            const string V = "1234567890";
            v = "1234567890";
            v1 = "9";
            setUpPayloadsTest(v, v1);
        }
    }
}