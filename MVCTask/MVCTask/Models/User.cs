using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVCTask.Models
{
    public class User
    {
        public int UId { get; set; }

        public string UserName { get; set; }
        public string MobileNumber { get; set; }
        public string Email { get; set; }
        public string CountryName { get; set; }
        public int StateId { get; set; }
        public int CityId { get; set; }
        public string City { get; set; }
        public string Password { get; set; }
        public int CountryId { get; set; }
        public string StateName { get; set; }

        public List<User> ListUser { get; set; }
        //public List<User> ListState { get; set; }
        //public List<User> ListCity { get; set; }
    }
}