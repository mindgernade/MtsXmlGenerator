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
            string nmiStr = nmi.Value;
            string checkSumStr = checkSum.Value;
            string toStr = toDrop.Value;
            string fromStr = fromDrop.Value;

            Debug.Write("\nClick! " + nmiStr + " Checksum: " + checkSumStr + "\n");

        }
    }
}