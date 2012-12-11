using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test_MVC4.Models;

namespace Test_MVC4.Controllers
{
    public class TourController : Controller
    {
        //
        // GET: /Tour/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ListTour()
        {
            //var data = new Tours().GetTours();
            return View(Tours.GetTour());
        }
    }
}
