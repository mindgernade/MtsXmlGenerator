using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace XmlGenGUI.Controllers
{
    public class SOGenController : Controller
    {
        public ActionResult SOGenXmlPage()
        {

            ViewBag.Message = "Service Order XML Generation";
            Debug.Write("SOGenController:Load!\n");
            return View();
        }
        
        public ActionResult ButtonSubmitClick()
        {

            Debug.Write("SOGenController:Click!\n");

            return View("SOGenXmlPage");
        }


    }
}