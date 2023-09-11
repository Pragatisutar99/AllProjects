using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MVCTask.Models
{
    public class BAL
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=MVCTask;Integrated Security=True");

        public void SaveRegister(User objU)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveRegister");
            cmd.Parameters.AddWithValue("@UserName", objU.UserName);
            cmd.Parameters.AddWithValue("@MobileNumber", objU.MobileNumber);
            cmd.Parameters.AddWithValue("@Email", objU.Email);
            cmd.Parameters.AddWithValue("@CityId", objU.City);
            cmd.Parameters.AddWithValue("@Password", objU.Password);
            cmd.ExecuteNonQuery();
            con.Close();


        }

        public DataSet GetCountry()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetCountry");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            con.Close();
            return ds;

        }

        public DataSet GetState(int CountryId)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetState");
            cmd.Parameters.AddWithValue("@CountryId", CountryId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            con.Close();
            return ds;
            
        }

        public DataSet GetCity(int StateId)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("MVCTask", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetCity");
            cmd.Parameters.AddWithValue("@StateId", StateId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            con.Close();
            return ds;
           
        }




    }
}