using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MVCTask.Models;

namespace MVCTask.Controllers
{
    public class AdminController : Controller
    {
        List<User> UserList = new List<User>();

        // GET: Admin
        [HttpGet]
        public ActionResult Index()
        {
            
            return View();
        }

        

        [HttpGet]
        public void CountryBind()
        {
            BAL objU = new BAL();
            DataSet ds = objU.GetCountry();
            List<SelectListItem> coutrylist = new List<SelectListItem>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {

                coutrylist.Add(new SelectListItem { Text = dr["CountryName"].ToString(), Value = dr["CountryId"].ToString() });

            }
            ViewBag.CountryName = coutrylist;

        }

        [HttpPost]
        public JsonResult StateBind(int CountryId)
        {
            BAL objU = new BAL();
            DataSet ds = objU.GetState(CountryId);
            List<SelectListItem> statelist = new List<SelectListItem>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                statelist.Add(new SelectListItem { Text = dr["StateName"].ToString(), Value = dr["StateId"].ToString() });
            }
            return Json(statelist, JsonRequestBehavior.AllowGet);
        }



        public JsonResult CityBind(int StateId)
        {
            BAL objU = new BAL();
            DataSet ds = objU.GetCity(StateId);
            List<SelectListItem> citylist = new List<SelectListItem>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                citylist.Add(new SelectListItem { Text = dr["CityName"].ToString(), Value = dr["CityId"].ToString() });
            }
            return Json(citylist, JsonRequestBehavior.AllowGet);
        }


        [HttpGet]
        public ActionResult Create()
        {
            CountryBind();
            return View();
        }
        [HttpPost]
        public ActionResult Create(User objU)
        {
            //  ViewBag.Country = UserList;
            BAL objUser = new BAL();
            objUser.SaveRegister(objU);

            return View();
        }
    }   
}