using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MtsXmlGenerator;

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
        
        public ActionResult ButtonSubmitClick( string nmi, string checkSum, string toDrop, string fromDrop )
        {
            Debug.Write("SOGenController:Click!\n");
            Payloads.setUpPayloads( nmi, checkSum, toDrop, fromDrop );

            return View("SOGenXmlPage");
        }
        /*
        public FileResult Download( string FileId )
        {
            int CurrentFileID = Convert.ToInt32(FileId);
            string CurrentFileName = "";

            string contentType = "application/xml";
            
                return File( , contentType, );
        }*/


    }
}