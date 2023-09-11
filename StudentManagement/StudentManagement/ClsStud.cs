using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace StudentManagement
{
    class ClsStud
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=StudentManagement;Integrated Security=True");

        //Teacher
        public string TName { get; set; }
        public int TeacherId { get; set; }
        public string Email { get; set; }
        public string DOB { get; set; }
        public int Salary { get; set; }
        public int Password { get; set; }



        //Student       
        public string StudentName { get; set; }
        public string StudEmail { get; set; }
        public string MobileNumber { get; set; }
        public string Address { get; set; }
        public string SDOB { get; set; }
        public string Gender { get; set; }

        public int SPassword { get; set; }
       // public string Department { get; set; }
        public string TeacherName{ get; set; }


        //Marks
        public string Subject { get; set; }
        public int Marks { get; set; }
        public string Comment { get; set; }
        public int DepartmentId { get; set; }
        public string DepartmentName { get; set;}
        public string Remark { get; }

        public ClsStud()
        {

        }




        public ClsStud(string name, string email, string dob, int salary, int password)
        {
            TName = name;
            Email = email;
            DOB = dob;
            Salary = salary;
            Password = password;

        }

        public void SaveTeacherInfo()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveTeacherInfo");
            cmd.Parameters.AddWithValue("@TName", TName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@Salary", Salary);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.ExecuteNonQuery();
            con.Close();
        }



        public DataTable GetT()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetT");            
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }
        public ClsStud(int teacherId)
        {
            TeacherId = teacherId;
        }



        public ClsStud(int teacherId, string name, string email, string dob, int salary, int password)
        {
            TeacherId = teacherId;
            TName = name;
            Email = email;
            DOB = dob;
            Salary = salary;
            Password = password;


        }

        public void UpdateTInfo()
        { 
            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "UpdateTInfo");
            cmd.Parameters.AddWithValue("@TeacherId", TeacherId);
            cmd.Parameters.AddWithValue("@TName", TName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@Salary", Salary);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.ExecuteNonQuery();
            con.Close();
        }



        public ClsStud(string teacherId)
        {

        }



        public SqlDataReader FetchTeacher()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "FetchTeacher");
            cmd.Parameters.AddWithValue("@TeacherId", TeacherId);            
            SqlDataReader dr;            
            dr = cmd.ExecuteReader();
            return dr;
            cmd.ExecuteNonQuery();
            con.Close();
        }






        //Student
        public ClsStud(string studentname, string studemail, string mobilenumber, string address, string sdob, string gender,int spassword ,string departmentname, string teachername)
        {
            StudentName = studentname;
            StudEmail = studemail;
            MobileNumber = mobilenumber;
            Address = address;
            SDOB = sdob;
            Gender = gender;
            SPassword = spassword;
            DepartmentName = departmentname;
            TeacherName = teachername;
        }

        public void SaveStudent()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveStudent");
            cmd.Parameters.AddWithValue("@StudentName", StudentName);
            cmd.Parameters.AddWithValue("@StudEmail", StudEmail);
            cmd.Parameters.AddWithValue("@MobileNumber", MobileNumber);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@DOB", SDOB);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@Password", SPassword);
            cmd.Parameters.AddWithValue("@DepartmentName", DepartmentName); 
            cmd.Parameters.AddWithValue("@TeacherName", TeacherName);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        


        //Marks
        public ClsStud(string studentname, string subject, int mark, string comment)
        {
            StudentName = studentname;
            Subject = subject;
            Marks = mark;
            Comment = comment;
        }

        public void SaveMark()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveMark");
            cmd.Parameters.AddWithValue("@StudentName", StudentName);
            cmd.Parameters.AddWithValue("@Subject", Subject);
            cmd.Parameters.AddWithValue("@Marks", Marks);
            cmd.Parameters.AddWithValue("@Comment", Comment);
            cmd.ExecuteNonQuery();
            con.Close();
      
        }
       

        


        //Department
        public ClsStud(string departmentname,string remark)
        {
            DepartmentName = departmentname;
            Remark = remark;
        }


      

        public void SaveDepartment()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("TeacherManagment", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveDepartment");
            cmd.Parameters.AddWithValue("@DepartmentName", DepartmentName);
            cmd.Parameters.AddWithValue("@Remark", Remark);
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}
