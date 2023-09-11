using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace MVCDemo.Models
{
    public class BALUser
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=MVC;Integrated Security=True");


        public void SaveData(User objU)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVC", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveData");
            cmd.Parameters.AddWithValue("@UserName",objU.UserName);
            cmd.Parameters.AddWithValue("@UserAddress", objU.UserAddress);
            cmd.ExecuteNonQuery();
            con.Close();

        }


        public void Update(User objU)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVC", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Update");
            cmd.Parameters.AddWithValue("@UserName", objU.UserName);
            cmd.Parameters.AddWithValue("@UserAddress", objU.UserAddress);
            cmd.Parameters.AddWithValue("@UId", objU.UId);
            cmd.ExecuteNonQuery();
            con.Close();

        }


        public void Delete(int id)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVC", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Delete");
            cmd.Parameters.AddWithValue("@UId", id);
            cmd.ExecuteNonQuery();
            con.Close();

        }


        public DataSet DataShow(User objU)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVC", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "DataShow");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            return ds;
            con.Close();
        }

        public SqlDataReader FetchData(int UId)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVC", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "FetchData");
            cmd.Parameters.AddWithValue("@UId", UId);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            //con.Close();
        }


        //public SqlDataReader ViewDetails(int id)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("MVC", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@Flag", "ViewDetails");
        //    cmd.Parameters.AddWithValue("@UId", id);
        //    SqlDataReader dr;
        //    dr = cmd.ExecuteReader();
        //    return dr;
        //    //con.Close();
        //}

        




    }

}