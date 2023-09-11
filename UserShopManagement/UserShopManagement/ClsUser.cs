using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace UserShopManagement
{
    class ClsUser
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=ShopManagement;Integrated Security=True");


        public string RType { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Gender { get; set; }
        public string State { get; set; }
        public string MobileNumber { get; set; }
        public int Password { get; set; }
        public string TType { get; set; }

        public int TypeId { get; set; }
        public string TypeName { get; set; }

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int SizeId { get; set; }
        public string Size { get; set; }
        public int MRP { get; set; }
        public int RealPrice { get; set; }



       




        //Save Register
        public ClsUser(string rType, string name, string email, string gender, string state, string mobilenumber, int password)
        {
            RType = rType;
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
            cmd.Parameters.AddWithValue("@Flag", "SaveRUser");
            cmd.Parameters.AddWithValue("@RType", RType);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@State", State);
            cmd.Parameters.AddWithValue("@MobileNumber", MobileNumber);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.ExecuteNonQuery();
            con.Close();


        }


        public ClsUser(string tType)
        {
            TypeName = tType;


        }

        //Save Type
        public void SaveType()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ProductTypeManagement", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveType");
            cmd.Parameters.AddWithValue("@TypeName", TypeName);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        //Product
        public ClsUser(int typeid, string productName)
        {
            TypeId = typeid;
            ProductName = productName;

        }


        public ClsUser(int typeId)
        {
            TypeId = typeId;
        }

        public void SaveProduct()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ProductTypeManagement", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveProduct");
            cmd.Parameters.AddWithValue("@TypeId", TypeId);
            cmd.Parameters.AddWithValue("@ProductName", ProductName);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        // Product Get value

        public DataTable GetType()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ProductTypeManagement", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetType");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }



        public ClsUser(int productId, int typeid, string size, int mrp, int Rprice)
        {

            ProductId = productId;
            TypeId = typeid;
            Size = size;
            MRP = mrp;
            RealPrice = Rprice;
        }

        public ClsUser()
        {
        }

        public void SaveSize()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ProductTypeManagement", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveSize");
            cmd.Parameters.AddWithValue("@ProductId", ProductId);
            cmd.Parameters.AddWithValue("@TypeId", TypeId);
            cmd.Parameters.AddWithValue("@Size", Size);
            cmd.Parameters.AddWithValue("@MRP", MRP);
            cmd.Parameters.AddWithValue("@RealPrice", RealPrice);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable GProduct()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ProductTypeManagement", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetProduct");
            cmd.Parameters.AddWithValue("@TypeId", TypeId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }

        

    }
}


