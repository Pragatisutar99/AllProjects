using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace AspEmployeeProject
{
    public class ClsEmp
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=AspEmployeeProject;Integrated Security=True");
        public string Email { get; set; }
        public string Password { get; set; }
        public string Position { get; set; }
        public string ProjectName { get; set; }
        public string Technology { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string Name { get; set; }
        public int  CountryId { get; set; }
        public string CountryName { get; set; }
        public int StateId { get; set; }
        public string StateName { get; set; }
        public int CityId { get; set; }
        public string CityName { get; set; }
        public string PhoneNumber { get; set; }
        public int ProjectId { get; set; }
        public int EmployeeId { get; set; }
        public float Amount { get; set; }
        public string ProfilePath { get; set; }
        //public string Email { get; set; }
        //public string Email { get; set; }

        public ClsEmp( int employeeid, int projectId, float amount)
        {
           
            EmployeeId = employeeid;
            ProjectId = projectId;
            Amount = amount;

        }
        public ClsEmp(string position, string name, string email, string phonenumber, int cityid, string password ,string profilepath)
        {
            Position = position;
            Name = name;
            Email = email;
            PhoneNumber = phonenumber;
            CityId = cityid;
            Password = password;
            ProfilePath = profilepath;

        }
        //SaveUser function

        public void RegisterEmployee()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "RegisterEmployee");
            cmd.Parameters.AddWithValue("@Position", Position);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@EMail", Email);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@ProfilePath", ProfilePath);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public ClsEmp(string projectName, string technology, string startdate, string enddate)
        {
            ProjectName = projectName;
            Technology = technology;
            StartDate = startdate;
            EndDate = enddate;

        }


        public ClsEmp()
        { 
        }

        public DataTable GetCountry()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetCountry");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

        public ClsEmp( int SelectedId)
        {
            ProjectId = SelectedId;
            CountryId = SelectedId;
            StateId = SelectedId;
            EmployeeId=SelectedId;
        }
        public DataTable GetState()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetState");
            cmd.Parameters.AddWithValue("@CountryId", CountryId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }
       
        public DataTable GetCity()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetCity");
            cmd.Parameters.AddWithValue("@StateId", StateId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }



        public void SaveProject()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveProject");
            cmd.Parameters.AddWithValue("@ProjectName", ProjectName);
            cmd.Parameters.AddWithValue("@Technology", Technology);
            cmd.Parameters.AddWithValue("@StartDate", StartDate);
            cmd.Parameters.AddWithValue("@EndDate", EndDate);
            cmd.ExecuteNonQuery();
            con.Close();
        }







        public ClsEmp(string position, string email, string password )
        {
            Position = position;
            Email = email;
            Password = password;
           

        }

        public SqlDataReader LogIn()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "LogIn");
            cmd.Parameters.AddWithValue("@Position", Position);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();
        }


        public DataTable GetAllProject()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetAllProject");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

        public DataTable GetProjectName()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetProjectName");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

        public DataTable GetProjectManager()
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetProjectManager");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable data = new DataTable();
            adpt.Fill(data);
            return data;
            con.Close();
        }

        public ClsEmp(int projectId,int employeeid)
        {
            ProjectId= projectId;
            EmployeeId = employeeid;


        }



        public void AssignProject()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "AssignProject");
            cmd.Parameters.AddWithValue("@ProjectId", ProjectId);
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public DataTable GetTeamLeader()
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetTeamLeader");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable data = new DataTable();
            adpt.Fill(data);
            return data;
            con.Close();
        }




        public DataTable GetProjectforPM()
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag","GetProjectforPM");
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable data = new DataTable();
            adpt.Fill(data);
            return data;
            con.Close();
        }

        //teamleader login
        public SqlDataReader TLLogin()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "TLLogin");
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();
        }

        //button Not clickable
        public void UpdatedStatus()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "UpdatedStatus");
            cmd.Parameters.AddWithValue("@ProjectId", ProjectId);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        //Project
        public DataTable ProjectCompleted()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ProjectCompleted");
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable data = new DataTable();
            adpt.Fill(data);
            return data;
            con.Close();

        }


             //GrdCompletedProject     
         public DataTable GRDCompletedProject()
         {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GRDCompletedProject");
            //cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

         }


       


        public void PaymentDetails()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "PaymentDetails");
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            cmd.Parameters.AddWithValue("@ProjectId", ProjectId);
            cmd.Parameters.AddWithValue("@Amount", Amount);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        public DataTable IsDeletePayment()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "IsDeletePayment");
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            //cmd.Parameters.AddWithValue("@ProjectId", ProjectId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }


        public void DeleteRecord()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "DeleteRecord");
            //cmd.Parameters.AddWithValue("@ProjectId", ProjectId);
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataTable ViewImage()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ViewImage");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }
        public SqlDataReader EditViewImg()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "EditViewImg");
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            cmd.ExecuteNonQuery();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();
        }


        public ClsEmp( string name, string email, string phonenumber, string password, string profilepath,int empid)
        {
            //Position = position;
            Name = name;
            Email = email;
            PhoneNumber = phonenumber;
            //CityId = cityid;
            Password = password;
            ProfilePath = profilepath;
            EmployeeId = empid;

        }

        public void UpdateEmployeeDetails()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("EmployeeProject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "UpdateEmployeeDetails");
            //cmd.Parameters.AddWithValue("@Position", Position);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@EMail", Email);
            cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
            //cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@ProfilePath", ProfilePath);
            cmd.Parameters.AddWithValue("@EmployeeId", EmployeeId);
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}
