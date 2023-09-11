using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace MVCDemo.Models
{
    public class User
    {
        public int UId { get; set; }

        public List<User> ListUser { get; set; }
        public string UserName { get; set; }
        public string UserAddress { get; set; }
    }
}