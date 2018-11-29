using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace XmlGenGUI.Controllers
{
    public partial class SOGenXmlPage : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.Write("Load!\n");
        }
        public void ButtonSubmitClick(object sender, EventArgs e)
        {
            //Debug.Write("Click!\n");

        }
    }
}