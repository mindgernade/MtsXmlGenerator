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
        public ActionResult XMLGen()
        {

            ViewBag.Message = "Service Order XML Generation";

            return View();
        }

        public ActionResult SOXmlGen()
        {

            ViewBag.Message = "Service Order XML Generation";

            return View();
        }

        
    }
}