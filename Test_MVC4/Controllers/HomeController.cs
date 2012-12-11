using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test_MVC4.Models;

namespace Test_MVC4.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View(Tours.GetTour());
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult test()
        {
            ViewBag.Message = "test";

            return View();
        }

        public ActionResult test1()
        {
            ViewBag.Message = "test";

            return View(Tours.GetTour());
        }
        public string ChiTiet(int id)
        {
            //ViewBag.Message = "test";

            return id.ToString();
        }
    }
}
