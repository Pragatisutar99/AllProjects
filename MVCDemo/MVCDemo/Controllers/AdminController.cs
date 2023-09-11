using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCDemo.Models;
using System.Data;
using System.Data.SqlClient;

namespace MVCDemo.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        public ActionResult Delete()
        {
            return View();
        }
        //public ActionResult EditData(int id)

        //{
        //    User objU = new User();
        //    objU.UId = id;


        //    return View(objU);

        //}


        public ActionResult Update(int id)
        {
            User objU = new User();
            objU.UId = id;
            BALUser user = new BALUser();
            SqlDataReader dr;
            dr = user.FetchData(id);

            while (dr.Read())
            {
                objU.UId = Convert.ToInt32(dr["UId"].ToString());
                objU.UserName = dr["UserName"].ToString();
                objU.UserAddress = dr["UserAddress"].ToString();
               
            }
            return View(objU);

        }

        [HttpGet]
        public ActionResult Details(User objU, int id)
        {
            BALUser user = new BALUser();
            objU.UId = id;

            SqlDataReader dr = user.FetchData(id);


            while (dr.Read())
            {
                objU.UId = Convert.ToInt32(dr["UId"].ToString());
                objU.UserName = dr["UserName"].ToString();
                objU.UserAddress = dr["UserAddress"].ToString();

            }
            dr.Close();
            return PartialView(objU);

        }





        [HttpPost]
        public ActionResult Create(User objU)
        {
            BALUser user = new BALUser();
            user.SaveData(objU);

            return View();
        }
        
      
        [HttpPost]
        public ActionResult Update(User objU)
        {
            BALUser user = new BALUser();
            user.Update(objU);

            return View();
        }
      


        
        public ActionResult Delete(int id)
        {
            BALUser user = new BALUser();
            user.Delete(id);

            return RedirectToAction("DataShow");
        }

       

        public ActionResult DataShow()
        {
            User objU = new User();                          //Class property obj
            BALUser objBal = new BALUser();
            DataSet ds = new DataSet();
            ds = objBal.DataShow(objU);
            List<User> lst = new List<User>();
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++) 
            {
                User objuser = new User();                   //temp list obj
                objuser.UId = Convert.ToInt32(ds.Tables[0].Rows[i]["UId"].ToString());
                objuser.UserName = ds.Tables[0].Rows[i]["UserName"].ToString();
                objuser.UserAddress = ds.Tables[0].Rows[i]["UserAddress"].ToString();
                lst.Add(objuser);

            }
            objU.ListUser = lst;


            return View(objU);
        }





    }
}