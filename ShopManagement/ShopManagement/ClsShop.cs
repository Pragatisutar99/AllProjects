using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace ShopManagement
{

    internal class ClsShop
       {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=ShopManagement;Integrated Security=True");

        public string rType { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Gender { get; set; }
        public string State { get; set; }
        public string MobileNumber { get; set; }
        public string Password { get; set; }
        public string Type { get; set; }

        public int TypeId { get; set; }
        public string TypeName { get; set; }

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int SizeId { get; set; }
        public string Size { get; set; }
        public int MRP { get; set; }
        public int RealPrice { get; set; }

        public ClsShop(  string rType ,string name,string email,string gender,string state,string mobilenumber,string password)
        {
            Type = rType;
            Name = name;
            Email = email;
            Gender = gender;
            State = state;
            MobileNumber = mobilenumber;
            Password = password;


        }
        public void SaveRUser()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ShopManagement", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Falg", "SaveRUser");
            cmd.Parameters.AddWithValue("@RType",rType);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@State", "State");
            cmd.Parameters.AddWithValue("@MobileNumber", MobileNumber);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.ExecuteNonQuery();
            con.Close();


        }





    }

           
   
      
        
    


 


}
