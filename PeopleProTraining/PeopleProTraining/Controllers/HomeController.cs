using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PeopleProTraining.Models;

namespace PeopleProTraining.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }

        // GET: /Home/Welcome/
        public ActionResult Welcome(string name, int num_times = 1)
        {
            ViewBag.Message = "Hello " + name;
            ViewBag.NumTimes = num_times;

            return View();
        }
    }
}