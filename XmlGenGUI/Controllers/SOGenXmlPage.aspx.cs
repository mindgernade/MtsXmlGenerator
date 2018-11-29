using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XmlGenGUI.Controllers
{
    public partial class SOGenXmlPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.Write("Load!\n");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string nmi = String.Format("{0}", Request.Form["nmi"]);
            string checkSum = String.Format("{0}", Request.Form["checkSum"]);

            Debug.Write("\nClick! " + nmi + " Checksum: " + checkSum + "\n");

        }
    }
}