using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MasterPageDemo
{
    public class ClsMaster
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=ProductManagement;Integrated Security=True");

        public string UserName { get; set; }
        public string Password { get; set; }
        public string TypeName { get; set; }
        public int TypeId { get; set; }
        public int UserId { get; set; }
        public ClsMaster()
        {



        }

        public DataTable Getsize()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MasterPage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Getsize");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }
        public ClsMaster(int uid, int tid)
        {
            UserId = uid;
            TypeId = tid;


        }
        



        public ClsMaster(string userName, string Pass, string type)
        {
            UserName = userName;
            Password = Pass;
            TypeName = type;

        }
        
        public SqlDataReader Login()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MasterPage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Login");
            cmd.Parameters.AddWithValue("@Name", UserName);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@Type", TypeName);
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();
        }

        
    }
}