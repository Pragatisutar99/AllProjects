using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace RTSIMSLibrary.Trainer
{
    public class ClsTrainer
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-LNTF82T;Initial Catalog=IMS-PROJECT;Integrated Security=True");
       

        public string StudCode { get; set; }
        public string StudFullName { get; set; }
        public int BatchId { get; set; }
        public string BatchName { get; set; }
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public string Attendance { get; set; }
       //public string Duration { get; set; }

        public int TopicId { get; set; }
        public string TopicName { get; set; }
        
     
        public string Date { get; set; }
        public int AttendanceId { get; set; }

        public string StartDate { get; set; }
        public string EndDate { get; set; }

        public string SearchBox { get; set; }


        public ClsTrainer(string studCode ,int courseId,int batchId,int topicId,string date)
        {
            StudCode = studCode;
            CourseId = courseId ;
            BatchId = batchId;
            TopicId = topicId;
              Date = date;
           // Duration = durtion;

        }
        //public ClsTrainer(int courseId, string studCode)
        //{
        //    StudCode = studCode;

        //}
        //Save AddAttendance 
        public void SaveAttendance()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "SaveAttendance");
            cmd.Parameters.AddWithValue("@StudCode", StudCode);
            //cmd.Parameters.AddWithValue("@TopicId",TopicId);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        //AttendanceGridview constructor
        //public ClsTrainer(int Topicid)
        //{
           // TopicId = Topicid;
        //}


        public DataTable ShowAttendance()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ShowAttendance");
            //cmd.Parameters.AddWithValue("@StudCode", StudCode);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }
       
        

        public DataTable GetPresent()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetPresent");
            cmd.Parameters.AddWithValue("@StudCode", StudCode);
            cmd.Parameters.AddWithValue("@attendance", Attendance);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }
        


        public DataTable GetBatchDetails()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetBatchDetails");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }
       
        public DataTable GetTopic()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetTopic");
            cmd.Parameters.AddWithValue("@TopicId", TopicId);
            //cmd.Parameters.AddWithValue("@TopicName", TopicName);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

        //Todays gridview  
        //todays Attendance
        public ClsTrainer(string studcode,string attendance)
        {
            StudCode = studcode;
            Attendance = attendance;
        }

        public DataTable ViewAttendance()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "ViewAttendance");
          //  cmd.Parameters.AddWithValue("@StudCode", StudCode);
         //   cmd.Parameters.AddWithValue("@AttendanceDate", Attendance);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

        //BatchId by StudFullName
        public ClsTrainer( int selectedId, int batchId)
        {
            AttendanceId = selectedId;
            CourseId = selectedId;
            BatchId = selectedId;
           
        }


        public DataTable GetCT()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetCT");
            cmd.Parameters.AddWithValue("@CourseId", CourseId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }


         public DataTable TopicwiseAttendance()
         {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "TopicwiseAttendance");
            cmd.Parameters.AddWithValue("@StudCode",StudCode);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

         }
       // public string AtteDate { get; set; }
      
       // public string Date1 { get; set; }
        //public string Attendance1 { get; set; }

        public ClsTrainer(string studcode, int courseId, int batchId, int topicId, string date, string attendance)
        {   
            StudCode = studcode;
            CourseId = courseId;
            BatchId = batchId; 
            TopicId = topicId;
            //Duration = duration;
            Date = date;
            Attendance = attendance;
        }


        public ClsTrainer(int batchId)
        {
            BatchId = batchId;
        }
            
           public void InsertAttendance()
           {
           con.Open();
           SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
           cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@Flag", "InsertAttendance");
           cmd.Parameters.AddWithValue("@StudCode", StudCode);
           cmd.Parameters.AddWithValue("@CourseId", CourseId);
           cmd.Parameters.AddWithValue("@BatchId", BatchId);          
           cmd.Parameters.AddWithValue("@TopicId", TopicId);
           cmd.Parameters.AddWithValue("@AttendanceDate", Date);
           cmd.Parameters.AddWithValue("@Attendance", Attendance);
           cmd.ExecuteNonQuery();
           con.Close();
           }



        public DataTable GetBatch()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetBatch");
            //cmd.Parameters.AddWithValue("@BatchId", BatchId);
            //cmd.Parameters.AddWithValue("@BatchName", BatchName);
           SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt2 = new DataTable();
            adpt.Fill(dt2);
            return dt2;
            con.Close();
        }


        //public DataTable GetByStudDetailsByBatchId()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@Flag", "GetByStudDetailsByBatchId");
        //    cmd.Parameters.AddWithValue("@BatchId", BatchId);
        //    SqlDataAdapter adpt = new SqlDataAdapter();
        //    adpt.SelectCommand = cmd;
        //    DataTable dt2 = new DataTable();
        //    adpt.Fill(dt2);
        //    return dt2;
        //    con.Close();
          
        //}


        public DataTable GetByStudBatchId()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetByStudDetailsByBatchId");
            cmd.Parameters.AddWithValue("@BatchId", BatchId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }

        //public ClsTrainer(int courseId, string courseName)
        //{

        //    CourseId = courseId;
        //    CourseName = courseName;
        //}


        public DataTable GetCourse()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetCourse");
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }
        //public ClsTrainer(string studcode)
        //{
        //   StudCode = studcode;
          
        //}

        //public ClsTrainer(int topicId)
        //{
        //    TopicId = topicId;
        //}

        //public ClsTrainer(string studCode, int courseId, int batchId, int topicId, string date, string attendance) 
        //{
        //    StudCode = studCode;
        //    CourseId = courseId;
        //    BatchId = batchId;
        //    TopicId = topicId;
        //    Date1 = date;
        //    Attendance = attendance;
        //}

       /* public ClsTrainer(int courseId)
        {
            CourseId = courseId;
        }*/

        //public ClsTrainer(int topicId)
        //{
        //    TopicId = topicId;
        //}

        //public ClsTrainer(string studFullName, int courseid, int batchId, string date, int attendance) : this(studFullName, courseid)
        //{
        //}

       //public ClsTrainer( int batchId, string attendance)
       // {
       //  BatchId = batchId;
       //     Attendance = attendance;
       // }

        public ClsTrainer(string studCode, int courseId, int batchId, int topicId)
        {
            StudCode = studCode;
            CourseId = courseId;
            BatchId = batchId;
            TopicId = topicId;
        }

        public ClsTrainer()
        {
        }

        public ClsTrainer(string studCode)
        {
            StudCode = studCode;
        }

        //public ClsTrainer(int topicId, int topicid, int attendance1) : this(topicId)
        //{
        //    TopicId = topicid;
        //    this.attendance1 = attendance1;
        //}

        public DataTable Getstudcode()
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Getstudcode");
            cmd.Parameters.AddWithValue("@StudCode", StudCode);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }

        public DataTable GetByStudDetails()
        { 

            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Getstudcode");
            cmd.Parameters.AddWithValue("@StudCode", StudCode);
            cmd.Parameters.AddWithValue("@Attendance", Attendance);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }

        public SqlDataReader GetEdit()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "GetEdit");
            cmd.Parameters.AddWithValue("@Studcode", StudCode);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            return dr;
            con.Close();
        }
       


        public void UpdateAttendance()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "UpdateAttendance");
            cmd.Parameters.AddWithValue("@AttendanceId", AttendanceId);
            cmd.ExecuteNonQuery();
            con.Close();

        }


        public DataTable MonthlyAttendance()
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "MonthlyAttendance");
            cmd.Parameters.AddWithValue("@AttendanceId", AttendanceId);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();

        }

       // public ClsTrainer(string searchbox)
        //{
        //    SearchBox = searchbox;
        //}




        public DataTable Search()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("AttendanceManegementSystem", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Flag", "Search");
            cmd.Parameters.AddWithValue("@SearchBox", SearchBox);
            SqlDataAdapter adpt = new SqlDataAdapter();
            adpt.SelectCommand = cmd;
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            return dt;
            con.Close();
        }

        



    }
}
  

