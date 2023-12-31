USE [IMS-PROJECT]
GO
/****** Object:  Table [dbo].[tblAssignment]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssignment](
	[AssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentName] [nvarchar](50) NULL,
	[TopicID] [int] NULL,
 CONSTRAINT [PK_tblAssignment] PRIMARY KEY CLUSTERED 
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAssignProject]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssignProject](
	[AssignProjectId] [int] IDENTITY(1,1) NOT NULL,
	[BatchId] [int] NULL,
	[ProjectID] [int] NULL,
	[Duration] [nvarchar](50) NULL,
	[TeamLeaderStudCode] [nvarchar](50) NULL,
	[PMStaffCode] [nvarchar](50) NULL,
	[HRStaffCode] [nvarchar](50) NULL,
	[DirectStaffCode] [nvarchar](50) NULL,
	[TotalTeamMember] [int] NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_tblProject] PRIMARY KEY CLUSTERED 
(
	[AssignProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAssignSchedule]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssignSchedule](
	[AssignScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleId] [int] NULL,
	[BatchId] [int] NULL,
	[SDate] [date] NULL,
	[Edate] [date] NULL,
	[AssignmentId] [nvarchar](max) NULL,
	[AttendanceId] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblAssignSchedule] PRIMARY KEY CLUSTERED 
(
	[AssignScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAttendance]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAttendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[StudCode] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[BatchId] [int] NULL,
	[TopicId] [int] NULL,
	[AttendanceDate] [nvarchar](50) NULL,
	[Attendance] [bit] NULL,
 CONSTRAINT [PK_tblAttendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBatch]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBatch](
	[BatchId] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[StaffCode] [nvarchar](50) NULL,
	[StudCode] [nvarchar](max) NULL,
	[TotalStudent] [int] NULL,
	[BatchSTime] [nvarchar](50) NULL,
	[BatchEndTime] [nvarchar](50) NULL,
	[LabId] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_tblBatch] PRIMARY KEY CLUSTERED 
(
	[BatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCertification]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCertification](
	[CertificateId] [int] IDENTITY(1,1) NOT NULL,
	[IssueDate] [date] NULL,
	[CertificateNo] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[StudCode] [nvarchar](50) NULL,
	[DurationFrom] [date] NULL,
	[DurationTo] [date] NULL,
	[Graduation] [nvarchar](5) NULL,
 CONSTRAINT [PK_tblCertification] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCity](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[StateId] [int] NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompany]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompany](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[CityID] [int] NULL,
	[PinCode] [int] NULL,
	[CompanyEmail] [nvarchar](50) NULL,
	[WebSite] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[OwnerName] [nvarchar](50) NULL,
	[OwnerEmail] [nvarchar](50) NULL,
	[OwnerMobileNo] [nvarchar](16) NULL,
	[StudentCode] [nvarchar](50) NULL,
	[ProjectManagerStaffId] [int] NULL,
	[NoofEmployee] [int] NULL,
	[CompanyContact] [int] NULL,
	[LetterHead] [nvarchar](50) NULL,
	[Logo] [image] NULL,
 CONSTRAINT [PK_tblCompany] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCountry](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCourse]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourse](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseTypeId] [int] NULL,
	[CourseName] [nvarchar](50) NULL,
	[CourseFees] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Syllabus] [nvarchar](max) NULL,
	[CourseRagistrationDate] [date] NULL,
	[CenterId] [int] NULL,
 CONSTRAINT [PK_tblCourse] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCourseType]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCourseType](
	[CourseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CourseTypeName] [nvarchar](50) NULL,
	[CenterId] [int] NULL,
 CONSTRAINT [PK_tblCourseType] PRIMARY KEY CLUSTERED 
(
	[CourseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCreateProject]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCreateProject](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](50) NULL,
	[TopicId] [int] NULL,
 CONSTRAINT [PK_tblCreateProject] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEnquirySource]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEnquirySource](
	[EnquirySourceID] [int] IDENTITY(1,1) NOT NULL,
	[EnquirySourceName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblEnquirySource] PRIMARY KEY CLUSTERED 
(
	[EnquirySourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEvents]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvents](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [nvarchar](50) NULL,
	[EventOrganizer] [nvarchar](50) NULL,
	[NoofParticipant] [int] NULL,
	[Subject] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[TentativeEndDate] [date] NULL,
	[StartTime] [nvarchar](50) NULL,
	[EndTime] [nvarchar](50) NULL,
	[StatusId] [int] NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblEvents] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFeedback]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[BatchId] [int] NULL,
	[FeedbackTo] [nvarchar](70) NULL,
	[FeedBackFrom] [nvarchar](70) NULL,
	[Rating] [nvarchar](5) NULL,
	[Performance] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblFeedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLab]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLab](
	[LabId] [int] IDENTITY(1,1) NOT NULL,
	[LabName] [nvarchar](50) NULL,
	[LabCapacity] [int] NULL,
	[AvailableSystem] [int] NULL,
	[CenterId] [int] NULL,
 CONSTRAINT [PK_tblLab] PRIMARY KEY CLUSTERED 
(
	[LabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLeave]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLeave](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[LeaveType] [nvarchar](6) NULL,
	[StaffCode] [nvarchar](50) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[StartTime] [nvarchar](50) NULL,
	[EndTime] [nvarchar](50) NULL,
	[LeaveApplyDate] [date] NULL,
	[Description] [nvarchar](max) NULL,
	[StatusId] [int] NULL,
	[Certificate] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblLeave] PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLocations]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLocations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLocations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPayment]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPayment](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[StudCode] [nvarchar](50) NULL,
	[PaidAmount] [nvarchar](15) NULL,
	[BalanceAmount] [nvarchar](15) NULL,
	[PaymentMode] [nvarchar](6) NULL,
	[PaidDate] [date] NULL,
 CONSTRAINT [PK_tblPayment] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPlacedStudent]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPlacedStudent](
	[PlacedstudId] [int] IDENTITY(1,1) NOT NULL,
	[StudCode] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[PlacedDate] [date] NULL,
	[DateOfJoing] [date] NULL,
	[CompanyId] [int] NULL,
	[Designation] [nvarchar](50) NULL,
	[Package] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPlacedStudent] PRIMARY KEY CLUSTERED 
(
	[PlacedstudId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQualification]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQualification](
	[QulificationId] [int] IDENTITY(1,1) NOT NULL,
	[StaffCode] [nvarchar](50) NULL,
	[StudCode] [nvarchar](50) NULL,
	[GraduationYear] [int] NULL,
	[GraduationPercentage] [decimal](5, 2) NULL,
	[Graduation_University] [nvarchar](50) NULL,
	[GraduationFile] [nvarchar](max) NULL,
	[PGYear] [int] NULL,
	[PGPercentage] [decimal](5, 2) NULL,
	[PGUniversity] [nvarchar](50) NULL,
	[PGFile] [nvarchar](max) NULL,
	[OtherCourse] [nvarchar](50) NULL,
	[OtherCourseYear] [int] NULL,
	[OtherCoursePercentage] [decimal](5, 2) NULL,
	[OtherCourseUniversity] [nvarchar](50) NULL,
	[OtherCourseFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblQualification] PRIMARY KEY CLUSTERED 
(
	[QulificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblResult]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblResult](
	[ResultId] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NULL,
	[BatchId] [int] NULL,
	[StudCode] [nvarchar](50) NULL,
	[Obtained_Marks] [int] NULL,
	[Attendance] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblResult] PRIMARY KEY CLUSTERED 
(
	[ResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRTSCRMCenter]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRTSCRMCenter](
	[CenterId] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NULL,
	[Logo] [nvarchar](max) NULL,
	[InvoicePrefix] [nvarchar](50) NULL,
	[CenterType] [nvarchar](30) NULL,
	[CenterName] [nvarchar](50) NULL,
	[CenterAddress] [nvarchar](max) NULL,
	[ClientId] [int] NULL,
	[Contact] [nvarchar](17) NULL,
	[Email] [nvarchar](250) NULL,
	[LabCapacity] [int] NULL,
	[RegistrationDate] [date] NULL,
 CONSTRAINT [PK_tblRTSCRMCenter] PRIMARY KEY CLUSTERED 
(
	[CenterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSchedule]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSchedule](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[StaffCode] [nvarchar](max) NULL,
	[CourseId] [int] NULL,
	[TopicId] [nvarchar](max) NULL,
	[Duration] [nvarchar](50) NULL,
	[AssignmentId] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSkill]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSkill](
	[SkillId] [int] IDENTITY(1,1) NOT NULL,
	[SkillName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblSkill] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStaff]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStaff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[StaffCode] [nvarchar](50) NOT NULL,
	[StaffName] [nvarchar](50) NULL,
	[StaffPassword] [nvarchar](50) NULL,
	[StaffRegistrationDate] [date] NULL,
	[StaffContact] [nvarchar](16) NULL,
	[StaffWhatsappContact] [nvarchar](50) NULL,
	[StaffAddress] [nvarchar](max) NULL,
	[CityId] [int] NULL,
	[AadharNo] [nvarchar](16) NULL,
	[PanNo] [nvarchar](10) NULL,
	[StaffEmail] [nvarchar](100) NULL,
	[StaffGender] [varchar](16) NULL,
	[StaffDOB] [date] NULL,
	[SSC_Year] [int] NULL,
	[SSC_Percentage] [decimal](5, 2) NULL,
	[SSCUniversity] [nvarchar](50) NULL,
	[SSCFile] [nvarchar](max) NULL,
	[HSCYear] [int] NULL,
	[HSCPercentage] [decimal](5, 2) NULL,
	[HSC_University] [nvarchar](50) NULL,
	[HSCFile] [nvarchar](max) NULL,
	[QualificationId] [int] NULL,
	[StaffPositionId] [int] NULL,
	[CourseId] [int] NULL,
	[Skill_Id] [int] NULL,
	[WorkExperience] [nvarchar](16) NULL,
	[As_Trainer_experience] [nvarchar](16) NULL,
	[JoiningDate] [date] NULL,
	[StatusId] [int] NULL,
	[CenterId] [int] NULL,
	[BankName] [nvarchar](50) NULL,
	[IfscCode] [nvarchar](20) NULL,
	[BankaccountNo] [nvarchar](20) NULL,
	[BranchName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblStaff_1] PRIMARY KEY CLUSTERED 
(
	[StaffCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStaffPosition]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStaffPosition](
	[StaffPositionId] [int] IDENTITY(1,1) NOT NULL,
	[StaffPosition] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblStaffPosition] PRIMARY KEY CLUSTERED 
(
	[StaffPositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblStaffStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[StudId] [int] IDENTITY(1,1) NOT NULL,
	[StudCode] [nvarchar](50) NOT NULL,
	[StudFullName] [nvarchar](300) NULL,
	[ContactNo] [nvarchar](16) NULL,
	[AlternateNo] [nvarchar](16) NULL,
	[EmailId] [nvarchar](100) NULL,
	[Gender] [nvarchar](16) NULL,
	[LocalAddress] [nvarchar](max) NULL,
	[PermentAddress] [nvarchar](max) NULL,
	[CityId] [int] NULL,
	[PinNo] [nvarchar](10) NULL,
	[EnquiryDate] [date] NULL,
	[RegistrationDate] [date] NULL,
	[QualificationID] [int] NULL,
	[ProfessionalStatus] [nvarchar](13) NULL,
	[Reference] [nvarchar](17) NULL,
	[EnquirySourceId] [int] NULL,
	[CourseId] [int] NULL,
	[TimePreferred] [nvarchar](16) NULL,
	[PreviousExperience] [nvarchar](3) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Period] [nvarchar](20) NULL,
	[DOB] [date] NULL,
	[FatherName] [nvarchar](50) NULL,
	[MotherName] [nvarchar](50) NULL,
	[FatherContactNo] [nvarchar](16) NULL,
	[MotherContactNo] [nvarchar](16) NULL,
	[StatusId] [int] NULL,
	[RegistrationFees] [int] NULL,
	[NumberOfInstalments] [int] NULL,
	[PaymentMethod] [varchar](50) NULL,
	[TransactionId] [nvarchar](50) NULL,
	[RaiseDiscount] [nvarchar](6) NULL,
	[EnquiryComment] [nvarchar](200) NULL,
	[PhotoFile] [nvarchar](max) NULL,
	[AadharCardFile] [nvarchar](max) NULL,
	[PanCardFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblStudent] PRIMARY KEY CLUSTERED 
(
	[StudCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTemplate]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTemplate](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](50) NULL,
	[TemplateType] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblTemplate] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTest]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTest](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[TopicId] [int] NULL,
	[TestCreationDate] [date] NULL,
	[TotalMarks] [int] NULL,
	[Duration] [nvarchar](50) NULL,
	[SelectFile] [nvarchar](200) NULL,
	[Isdelete] [int] NOT NULL,
 CONSTRAINT [PK_tblTest] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTestAssign]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTestAssign](
	[TestAssignId] [int] IDENTITY(1,1) NOT NULL,
	[TestId] [int] NULL,
	[Date] [date] NULL,
	[StratTime] [nvarchar](50) NULL,
	[BatchId] [int] NULL,
	[LabId] [int] NULL,
	[StatusId] [int] NULL,
	[MonitoringStaff] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTestAssign] PRIMARY KEY CLUSTERED 
(
	[TestAssignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTestimonial]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTestimonial](
	[TestmonialId] [int] IDENTITY(1,1) NOT NULL,
	[StudCode] [nvarchar](50) NULL,
	[QulificationID] [int] NULL,
	[Designation] [nvarchar](50) NULL,
	[CompanyID] [int] NULL,
	[SalaryOffer] [decimal](18, 0) NULL,
	[DateOfJoining] [date] NULL,
	[UploadVideo] [nvarchar](max) NULL,
	[UploadPDF] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblTestimonial] PRIMARY KEY CLUSTERED 
(
	[TestmonialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTopic]    Script Date: 08-07-2023 11:44:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTopic](
	[TopicId] [int] IDENTITY(1,1) NOT NULL,
	[TopicName] [nvarchar](50) NULL,
	[CourseId] [int] NULL,
	[Duration] [nvarchar](50) NULL,
	[NumberofSessions] [int] NULL,
	[AssignmentFileName] [nvarchar](max) NULL,
	[StaffCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblTopic] PRIMARY KEY CLUSTERED 
(
	[TopicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAssignment] ON 

INSERT [dbo].[tblAssignment] ([AssignmentId], [AssignmentName], [TopicID]) VALUES (1, N'ADO', 1)
INSERT [dbo].[tblAssignment] ([AssignmentId], [AssignmentName], [TopicID]) VALUES (2, N'HTML', 2)
INSERT [dbo].[tblAssignment] ([AssignmentId], [AssignmentName], [TopicID]) VALUES (3, N'ASP', 1)
INSERT [dbo].[tblAssignment] ([AssignmentId], [AssignmentName], [TopicID]) VALUES (4, N'WIm', 1)
SET IDENTITY_INSERT [dbo].[tblAssignment] OFF
GO
SET IDENTITY_INSERT [dbo].[tblAttendance] ON 

INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (1, N'STUDN67001', 1, 1020, 1, N'2023-06-19', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (2, N'STUDN67002', 1, 1021, 2, N'2023-06-26', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (3, N'STUDN67003', 1, 1022, 3, N'2023-08-01', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (4, N'STUDN67004', 1, 1023, 4, N'2023-07-03', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (5, N'STUDN67005', 1, 1024, 1, N'2023-07-03', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (6, N'STUDN67006', 1, 1025, 2, N'2023-08-01', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (7, N'STUDN67007', 1, 1026, 3, N'2023-08-01', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (8, N'STUDN67008', 1, 1027, 4, N'2023-08-01', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (9, N'STUDN67009', 1, 1028, 1, N'2023-08-01', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (10, N'STUDN67001', 1, 1020, 1, N'2023-06-19', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (256, N'STUDN67029', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (257, N'STUDN67030', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (258, N'STUDN67031', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (259, N'STUDN67032', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (260, N'STUDN67033', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (261, N'STUDN67034', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (262, N'STUDN67035', 1, 1024, 1, N'25-06-2023 12:13:57 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (263, N'STUDN67015', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (264, N'STUDN67016', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (265, N'STUDN67017', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (266, N'STUDN67018', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (267, N'STUDN67019', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (268, N'STUDN67020', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (269, N'STUDN67021', 1, 1022, 1, N'25-06-2023 02:59:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (305, N'STUDN67029', 1, 1024, 1, N'26-06-2023 11:04:24 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (306, N'STUDN67001', 1, 1020, 2, N'26-06-2023 11:06:50 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (307, N'STUDN67015', 1, 1022, 2, N'26-06-2023 11:08:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (308, N'STUDN67022', 1, 1023, 2, N'26-06-2023 11:11:41 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (309, N'STUDN67002', 1, 1020, 1, N'26-06-2023 11:27:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (310, N'STUDN67003', 1, 1020, 1, N'26-06-2023 11:27:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (311, N'STUDN67004', 1, 1020, 1, N'26-06-2023 11:27:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (312, N'STUDN67005', 1, 1020, 1, N'26-06-2023 11:27:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (313, N'STUDN67006', 1, 1020, 1, N'26-06-2023 11:27:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (314, N'STUDN67007', 1, 1020, 1, N'26-06-2023 11:27:46 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (315, N'False', 1, 1020, 1, N'26-06-2023 11:29:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (316, N'False', 1, 1020, 1, N'26-06-2023 11:29:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (317, N'False', 1, 1020, 1, N'26-06-2023 11:29:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (318, N'False', 1, 1020, 1, N'26-06-2023 11:29:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (319, N'False', 1, 1020, 1, N'26-06-2023 11:29:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (320, N'STUDN67016', 1, 1022, 2, N'26-06-2023 11:30:58 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (321, N'STUDN67002', 1, 1020, 1, N'26-06-2023 11:36:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (322, N'STUDN67004', 1, 1020, 1, N'26-06-2023 11:36:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (323, N'STUDN67005', 1, 1020, 1, N'26-06-2023 11:36:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (324, N'STUDN67006', 1, 1020, 1, N'26-06-2023 11:36:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (325, N'STUDN67007', 1, 1020, 1, N'26-06-2023 11:36:04 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (326, N'STUDN67001', 1, 1020, 2, N'26-06-2023 11:39:20 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (327, N'STUDN67003', 1, 1020, 2, N'26-06-2023 11:39:20 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (328, N'STUDN67004', 1, 1020, 2, N'26-06-2023 11:39:20 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (329, N'STUDN67005', 1, 1020, 2, N'26-06-2023 11:39:20 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (330, N'STUDN67015', 1, 1022, 2, N'26-06-2023 11:43:15 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (331, N'STUDN67017', 1, 1022, 2, N'26-06-2023 11:43:15 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (332, N'STUDN67019', 1, 1022, 2, N'26-06-2023 11:43:15 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (333, N'STUDN67021', 1, 1022, 2, N'26-06-2023 11:43:15 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (334, N'STUDN67001', 1, 1020, 2, N'26-06-2023 11:48:50 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (335, N'STUDN67003', 1, 1020, 2, N'26-06-2023 11:48:50 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (336, N'STUDN67005', 1, 1020, 2, N'26-06-2023 11:48:50 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (337, N'STUDN67007', 1, 1020, 2, N'26-06-2023 11:48:50 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (338, N'STUDN67008', 1, 1021, 2, N'26-06-2023 11:53:06 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (339, N'STUDN67009', 1, 1021, 2, N'26-06-2023 11:53:06 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (340, N'STUDN67013', 1, 1021, 2, N'26-06-2023 11:53:06 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (341, N'STUDN67014', 1, 1021, 2, N'26-06-2023 11:53:06 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (342, N'False', 1, 1024, 1, N'26-06-2023 11:57:32 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (343, N'False', 1, 1024, 1, N'26-06-2023 11:57:32 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (344, N'False', 1, 1024, 1, N'26-06-2023 11:57:32 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (345, N'False', 1, 1024, 1, N'26-06-2023 11:57:32 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (346, N'False', 1, 1024, 1, N'26-06-2023 11:57:32 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (347, N'False', 1, 1024, 1, N'26-06-2023 11:57:32 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (348, N'STUDN67017', 1, 1022, 2, N'26-06-2023 12:00:11 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (349, N'STUDN67018', 1, 1022, 2, N'26-06-2023 12:00:11 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (350, N'STUDN67021', 1, 1022, 2, N'26-06-2023 12:00:11 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (351, N'STUDN67008', 1, 1021, 2, N'26-06-2023 12:03:57 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (352, N'STUDN67009', 1, 1021, 2, N'26-06-2023 12:03:57 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (353, N'STUDN67013', 1, 1021, 2, N'26-06-2023 12:03:57 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (354, N'STUDN67014', 1, 1021, 2, N'26-06-2023 12:03:57 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (355, N'7', 1, 1021, 2, N'26-06-2023 12:03:57 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (356, N'STUDN67001', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (357, N'STUDN67004', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (358, N'STUDN67007', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (359, N'True', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (360, N'STUDN67001', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (361, N'STUDN67004', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (362, N'STUDN67007', 1, 1020, 2, N'26-06-2023 12:09:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (363, N'STUDN67001', 1, 1020, 2, N'26-06-2023 12:15:03 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (364, N'STUDN67003', 1, 1020, 2, N'26-06-2023 12:15:03 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (365, N'STUDN67007', 1, 1020, 2, N'26-06-2023 12:15:03 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (366, N'STUDN67015', 1, 1022, 2, N'26-06-2023 12:17:38 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (367, N'STUDN67001', 1, 1020, 2, N'26-06-2023 01:31:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (368, N'STUDN67002', 1, 1020, 2, N'26-06-2023 01:31:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (369, N'STUDN67006', 1, 1020, 2, N'26-06-2023 01:31:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (370, N'STUDN67007', 1, 1020, 2, N'26-06-2023 01:31:37 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (371, N'STUDN67031', 1, 1024, 2, N'26-06-2023 01:56:52 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (372, N'STUDN67034', 1, 1024, 2, N'26-06-2023 01:56:52 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (373, N'STUDN67035', 1, 1024, 2, N'26-06-2023 01:56:52 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (374, N'STUDN67022', 1, 1023, 1, N'26-06-2023 06:19:46 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (375, N'STUDN67015', 1, 1022, 2, N'28-06-2023 10:19:59 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (376, N'STUDN67020', 1, 1022, 2, N'28-06-2023 10:19:59 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (377, N'STUDN67021', 1, 1022, 2, N'28-06-2023 10:19:59 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (378, N'STUDN67011', 1, 1021, 2, N'28-06-2023 10:24:58 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (379, N'STUDN67012', 1, 1021, 2, N'28-06-2023 10:24:58 AM', 1)
GO
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (380, N'STUDN67013', 1, 1021, 2, N'28-06-2023 10:24:58 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (381, N'STUDN67029', 1, 1024, 2, N'05-07-2023 10:21:30 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (382, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (383, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (384, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (385, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (386, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (387, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (388, N'False', 1, 1021, 2, N'07-07-2023 09:23:38 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (389, N'False', 1, 1023, 2, N'07-07-2023 09:26:03 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (390, N'STUDN67009', 1, 1021, 1, N'07-07-2023 10:50:41 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (391, N'STUDN67013', 1, 1021, 1, N'07-07-2023 10:50:41 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (392, N'STUDN67014', 1, 1021, 1, N'07-07-2023 10:50:41 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (393, N'False', 1, 1021, 1, N'07-07-2023 10:50:41 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (394, N'STUDN67030', 1, 1024, 1, N'07-07-2023 10:52:56 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (395, N'STUDN67034', 1, 1024, 1, N'07-07-2023 10:52:56 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (396, N'STUDN67035', 1, 1024, 1, N'07-07-2023 10:52:56 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (397, N'False', 1, 1024, 1, N'07-07-2023 10:52:56 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (398, N'STUDN67018', 1, 1022, 2, N'07-07-2023 11:59:48 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (399, N'STUDN67019', 1, 1022, 2, N'07-07-2023 11:59:48 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (400, N'STUDN67020', 1, 1022, 2, N'07-07-2023 11:59:48 AM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (401, N'False', 1, 1022, 2, N'07-07-2023 11:59:48 AM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (402, N'False', 1, 1023, 1, N'07-07-2023 12:01:17 PM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (403, N'False', 1, 1023, 1, N'07-07-2023 12:01:17 PM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (404, N'False', 1, 1023, 1, N'07-07-2023 12:01:17 PM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (405, N'False', 1, 1023, 1, N'07-07-2023 12:01:17 PM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (406, N'False', 1, 1023, 1, N'07-07-2023 12:01:17 PM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (407, N'False', 1, 1023, 1, N'07-07-2023 12:01:17 PM', 0)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (408, N'STUDN67024', 1, 1023, 1, N'07-07-2023 12:03:51 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (409, N'STUDN67026', 1, 1023, 1, N'07-07-2023 09:59:15 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (410, N'STUDN67027', 1, 1023, 1, N'07-07-2023 09:59:15 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (411, N'STUDN67028', 1, 1023, 1, N'07-07-2023 09:59:15 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (412, N'STUDN67025', 1, 1023, 1, N'07-07-2023 09:59:53 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (413, N'STUDN67026', 1, 1023, 1, N'07-07-2023 09:59:53 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (414, N'STUDN67027', 1, 1023, 1, N'07-07-2023 09:59:53 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (415, N'STUDN67025', 1, 1023, 1, N'07-07-2023 10:04:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (416, N'STUDN67027', 1, 1023, 1, N'07-07-2023 10:04:50 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (417, N'STUDN67026', 1, 1023, 1, N'07-07-2023 10:18:25 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (418, N'STUDN67027', 1, 1023, 1, N'07-07-2023 10:18:25 PM', 1)
INSERT [dbo].[tblAttendance] ([AttendanceId], [StudCode], [CourseId], [BatchId], [TopicId], [AttendanceDate], [Attendance]) VALUES (419, N'STUDN67028', 1, 1023, 1, N'07-07-2023 10:18:25 PM', 1)
SET IDENTITY_INSERT [dbo].[tblAttendance] OFF
GO
SET IDENTITY_INSERT [dbo].[tblBatch] ON 

INSERT [dbo].[tblBatch] ([BatchId], [BatchName], [CourseId], [StaffCode], [StudCode], [TotalStudent], [BatchSTime], [BatchEndTime], [LabId], [StartDate], [EndDate], [StatusId]) VALUES (1020, N'DN65', 1, N'STF4', N'STUDN67001,STUDN67002,STUDN67003,STUDN67004,STUDN67005,STUDN67006,STUDN67007', 7, N'8AM', N'2PM', 1, CAST(N'2023-06-19' AS Date), CAST(N'2023-07-01' AS Date), 7)
INSERT [dbo].[tblBatch] ([BatchId], [BatchName], [CourseId], [StaffCode], [StudCode], [TotalStudent], [BatchSTime], [BatchEndTime], [LabId], [StartDate], [EndDate], [StatusId]) VALUES (1021, N'DN66', 1, N'STF4', N'STUDN67008,STUDN67009,STUDN67010,STUDN67011,STUDN67012,STUDN67013,STUDN67014', 7, N'2PM', N'8PM', 1, CAST(N'2023-06-26' AS Date), CAST(N'2023-12-30' AS Date), 7)
INSERT [dbo].[tblBatch] ([BatchId], [BatchName], [CourseId], [StaffCode], [StudCode], [TotalStudent], [BatchSTime], [BatchEndTime], [LabId], [StartDate], [EndDate], [StatusId]) VALUES (1022, N'DN67', 1, N'STF5', N'STUDN67015,STUDN67016,STUDN67017,STUDN67018,STUDN67019,STUDN67020,STUDN67021', 7, N'8AM', N'2PM', 2, CAST(N'2023-08-01' AS Date), CAST(N'2023-12-30' AS Date), 7)
INSERT [dbo].[tblBatch] ([BatchId], [BatchName], [CourseId], [StaffCode], [StudCode], [TotalStudent], [BatchSTime], [BatchEndTime], [LabId], [StartDate], [EndDate], [StatusId]) VALUES (1023, N'DN68', 1, N'STF5', N'STUDN67022,STUDN67023,STUDN67024,STUDN67025,STUDN67026,STUDN67027,STUDN67028', 7, N'2PM', N'8PM', 2, CAST(N'2023-07-03' AS Date), CAST(N'2023-12-30' AS Date), 7)
INSERT [dbo].[tblBatch] ([BatchId], [BatchName], [CourseId], [StaffCode], [StudCode], [TotalStudent], [BatchSTime], [BatchEndTime], [LabId], [StartDate], [EndDate], [StatusId]) VALUES (1024, N'DN69', 1, N'STF4', N'STUDN67029,STUDN67030,STUDN67031,STUDN67032,STUDN67033,STUDN67034,STUDN67035', 7, N'9AM', N'3PM', 3, CAST(N'2023-07-03' AS Date), CAST(N'2024-01-27' AS Date), 7)
INSERT [dbo].[tblBatch] ([BatchId], [BatchName], [CourseId], [StaffCode], [StudCode], [TotalStudent], [BatchSTime], [BatchEndTime], [LabId], [StartDate], [EndDate], [StatusId]) VALUES (1025, N'Java101', 2, N'STF4', N'STUDN67036,STUDN67037,STUDN67038,STUDN67039,STUDN67040,STUDN67041,STUDN67042', 7, N'10AM', N'5PM', 4, CAST(N'2023-08-01' AS Date), CAST(N'2024-03-30' AS Date), 7)
SET IDENTITY_INSERT [dbo].[tblBatch] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCity] ON 

INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (1, N'Pune', 1)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (2, N'Mumbai', 1)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (3, N'Mandoli', 2)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (4, N'Hastsal', 2)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (5, N'Panaji', 3)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (6, N'Ponda', 3)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (7, N'Sapporo', 4)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (8, N'Hakodate', 4)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (9, N'Tokyo', 5)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (10, N'Kobe', 5)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (11, N'Munich', 6)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (12, N'Nuremberg', 6)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (13, N'Hanover', 7)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (14, N'Oldenburg', 7)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (15, N'Calgary', 8)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (16, N'Edmonton', 8)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (17, N'Barranquilla', 9)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (18, N'Cali', 9)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (19, N'Melbourne', 10)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (20, N'Geelong', 10)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (21, N'Hobart', 11)
INSERT [dbo].[tblCity] ([CityId], [CityName], [StateId]) VALUES (22, N'Launceston', 11)
SET IDENTITY_INSERT [dbo].[tblCity] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCountry] ON 

INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (2, N'Japan')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (3, N'Germany')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (4, N'Canada')
INSERT [dbo].[tblCountry] ([CountryId], [CountryName]) VALUES (5, N'Australia')
SET IDENTITY_INSERT [dbo].[tblCountry] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCourse] ON 

INSERT [dbo].[tblCourse] ([CourseId], [CourseTypeId], [CourseName], [CourseFees], [Description], [Syllabus], [CourseRagistrationDate], [CenterId]) VALUES (1, 1, N'.Net', N'50000', N'DotNet', N'aqwe', CAST(N'2023-04-13' AS Date), 1)
INSERT [dbo].[tblCourse] ([CourseId], [CourseTypeId], [CourseName], [CourseFees], [Description], [Syllabus], [CourseRagistrationDate], [CenterId]) VALUES (2, 1, N'Java', N'50000', N'DotNet', N'aweqwe', CAST(N'2023-04-13' AS Date), 2)
INSERT [dbo].[tblCourse] ([CourseId], [CourseTypeId], [CourseName], [CourseFees], [Description], [Syllabus], [CourseRagistrationDate], [CenterId]) VALUES (3, 1, N'Python', N'50000', N'DotNet', N'qweqweqw', CAST(N'2023-04-13' AS Date), 3)
INSERT [dbo].[tblCourse] ([CourseId], [CourseTypeId], [CourseName], [CourseFees], [Description], [Syllabus], [CourseRagistrationDate], [CenterId]) VALUES (4, 1, N'Testing', N'50000', N'DotNet', N'qweqweqw', CAST(N'2023-04-13' AS Date), 1)
INSERT [dbo].[tblCourse] ([CourseId], [CourseTypeId], [CourseName], [CourseFees], [Description], [Syllabus], [CourseRagistrationDate], [CenterId]) VALUES (5, 1, N'DataAnalytics', N'50000', N'DotNet', N'qweqweqw', CAST(N'2023-04-13' AS Date), 2)
INSERT [dbo].[tblCourse] ([CourseId], [CourseTypeId], [CourseName], [CourseFees], [Description], [Syllabus], [CourseRagistrationDate], [CenterId]) VALUES (6, 2, N'Oracle', N'50000', N'DotNet', N'12123', CAST(N'2023-04-13' AS Date), 3)
SET IDENTITY_INSERT [dbo].[tblCourse] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCourseType] ON 

INSERT [dbo].[tblCourseType] ([CourseTypeId], [CourseTypeName], [CenterId]) VALUES (1, N'Software', 1)
INSERT [dbo].[tblCourseType] ([CourseTypeId], [CourseTypeName], [CenterId]) VALUES (2, N'DataBase', 2)
INSERT [dbo].[tblCourseType] ([CourseTypeId], [CourseTypeName], [CenterId]) VALUES (3, N'Networking', 3)
INSERT [dbo].[tblCourseType] ([CourseTypeId], [CourseTypeName], [CenterId]) VALUES (4, N'Data Structure', 1)
INSERT [dbo].[tblCourseType] ([CourseTypeId], [CourseTypeName], [CenterId]) VALUES (5, N'AWS', 2)
SET IDENTITY_INSERT [dbo].[tblCourseType] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCreateProject] ON 

INSERT [dbo].[tblCreateProject] ([ProjectID], [ProjectName], [TopicId]) VALUES (1, N'IMS', 1)
INSERT [dbo].[tblCreateProject] ([ProjectID], [ProjectName], [TopicId]) VALUES (2, N'CRMS', 2)
INSERT [dbo].[tblCreateProject] ([ProjectID], [ProjectName], [TopicId]) VALUES (3, N'GRMS', 1)
INSERT [dbo].[tblCreateProject] ([ProjectID], [ProjectName], [TopicId]) VALUES (4, N'Finnaces Management', 2)
SET IDENTITY_INSERT [dbo].[tblCreateProject] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEnquirySource] ON 

INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (1, N'Sawant Sir')
INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (2, N'Online')
INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (3, N'Offline')
INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (4, N'Students')
INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (5, N'Students')
INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (6, N'Students')
INSERT [dbo].[tblEnquirySource] ([EnquirySourceID], [EnquirySourceName]) VALUES (7, N'Students')
SET IDENTITY_INSERT [dbo].[tblEnquirySource] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEvents] ON 

INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventOrganizer], [NoofParticipant], [Subject], [StartDate], [TentativeEndDate], [StartTime], [EndTime], [StatusId], [Description]) VALUES (1, N'Demo Lecture', N'Ganesh Sir', 20, N'ASP .NET', CAST(N'2002-01-13' AS Date), CAST(N'2002-01-13' AS Date), N'10.30 AM', N'10.30 AM', 1, N'asd')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventOrganizer], [NoofParticipant], [Subject], [StartDate], [TentativeEndDate], [StartTime], [EndTime], [StatusId], [Description]) VALUES (2, N'Ado.Net Presentation', N'Ganesh Sir', 20, N'ADO .NET', CAST(N'2023-04-06' AS Date), CAST(N'2023-04-06' AS Date), NULL, NULL, 2, N'asd')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventOrganizer], [NoofParticipant], [Subject], [StartDate], [TentativeEndDate], [StartTime], [EndTime], [StatusId], [Description]) VALUES (3, N'Function', N'Ganesh Sir', 20, N'Class 8th Anniversary', CAST(N'2023-04-06' AS Date), CAST(N'2023-04-06' AS Date), NULL, NULL, 3, N'asd')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventOrganizer], [NoofParticipant], [Subject], [StartDate], [TentativeEndDate], [StartTime], [EndTime], [StatusId], [Description]) VALUES (4, N'Republic day', N'Ganesh Sir', 20, N'Republic day', CAST(N'2023-04-06' AS Date), CAST(N'2023-04-06' AS Date), NULL, NULL, 1, N'ads')
INSERT [dbo].[tblEvents] ([EventID], [EventName], [EventOrganizer], [NoofParticipant], [Subject], [StartDate], [TentativeEndDate], [StartTime], [EndTime], [StatusId], [Description]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[tblEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFeedback] ON 

INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (2, 2, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (3, 3, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (4, 4, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (5, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (6, 2, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblFeedback] ([FeedbackId], [CourseId], [BatchId], [FeedbackTo], [FeedBackFrom], [Rating], [Performance]) VALUES (7, 3, 3, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLab] ON 

INSERT [dbo].[tblLab] ([LabId], [LabName], [LabCapacity], [AvailableSystem], [CenterId]) VALUES (1, N'Sun', 12, 12, 1)
INSERT [dbo].[tblLab] ([LabId], [LabName], [LabCapacity], [AvailableSystem], [CenterId]) VALUES (2, N'Moon', 23, 23, 2)
INSERT [dbo].[tblLab] ([LabId], [LabName], [LabCapacity], [AvailableSystem], [CenterId]) VALUES (3, N'Jupiter', 11, 11, 3)
INSERT [dbo].[tblLab] ([LabId], [LabName], [LabCapacity], [AvailableSystem], [CenterId]) VALUES (4, N'Mars', 15, 14, 1)
SET IDENTITY_INSERT [dbo].[tblLab] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLeave] ON 

INSERT [dbo].[tblLeave] ([LeaveId], [LeaveType], [StaffCode], [StartDate], [EndDate], [StartTime], [EndTime], [LeaveApplyDate], [Description], [StatusId], [Certificate]) VALUES (1, NULL, N'STF1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[tblLeave] ([LeaveId], [LeaveType], [StaffCode], [StartDate], [EndDate], [StartTime], [EndTime], [LeaveApplyDate], [Description], [StatusId], [Certificate]) VALUES (2, NULL, N'STF2', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL)
INSERT [dbo].[tblLeave] ([LeaveId], [LeaveType], [StaffCode], [StartDate], [EndDate], [StartTime], [EndTime], [LeaveApplyDate], [Description], [StatusId], [Certificate]) VALUES (3, NULL, N'STF3', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[tblLeave] ([LeaveId], [LeaveType], [StaffCode], [StartDate], [EndDate], [StartTime], [EndTime], [LeaveApplyDate], [Description], [StatusId], [Certificate]) VALUES (4, NULL, N'STF4', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL)
INSERT [dbo].[tblLeave] ([LeaveId], [LeaveType], [StaffCode], [StartDate], [EndDate], [StartTime], [EndTime], [LeaveApplyDate], [Description], [StatusId], [Certificate]) VALUES (5, NULL, N'STF5', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[tblLeave] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLocations] ON 

INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (1, N'Pune')
INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (2, N'Mumbai')
INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (3, N'Nashik')
INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (4, N'Thane')
INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (5, N'Masd')
INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (6, N'12')
INSERT [dbo].[tblLocations] ([LocationID], [LocationName]) VALUES (7, N'asd')
SET IDENTITY_INSERT [dbo].[tblLocations] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPayment] ON 

INSERT [dbo].[tblPayment] ([TransactionId], [StudCode], [PaidAmount], [BalanceAmount], [PaymentMode], [PaidDate]) VALUES (1, N'STUDN67001', N'5000', N'Online', NULL, CAST(N'2023-02-22' AS Date))
INSERT [dbo].[tblPayment] ([TransactionId], [StudCode], [PaidAmount], [BalanceAmount], [PaymentMode], [PaidDate]) VALUES (2, N'STUDN67002', N'5000', N'Online', NULL, CAST(N'2023-02-22' AS Date))
INSERT [dbo].[tblPayment] ([TransactionId], [StudCode], [PaidAmount], [BalanceAmount], [PaymentMode], [PaidDate]) VALUES (3, N'STUDN67003', N'5000', N'Online', NULL, CAST(N'2023-02-22' AS Date))
INSERT [dbo].[tblPayment] ([TransactionId], [StudCode], [PaidAmount], [BalanceAmount], [PaymentMode], [PaidDate]) VALUES (4, N'STUDN67004', N'5000', N'Online', NULL, CAST(N'2023-02-22' AS Date))
INSERT [dbo].[tblPayment] ([TransactionId], [StudCode], [PaidAmount], [BalanceAmount], [PaymentMode], [PaidDate]) VALUES (5, N'STUDN67005', N'5000', N'Online', NULL, CAST(N'2023-02-22' AS Date))
SET IDENTITY_INSERT [dbo].[tblPayment] OFF
GO
SET IDENTITY_INSERT [dbo].[tblQualification] ON 

INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (1, N'STF1', NULL, 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (2, N'STF4', NULL, 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (3, NULL, N'STUDN67001', 2008, NULL, N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (4, NULL, N'STUDN67002', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (5, NULL, N'STUDN67003', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (6, NULL, N'STUDN67004', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (7, NULL, N'STUDN67005', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (8, NULL, N'STUDN67006', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (9, NULL, N'STUDN67007', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (10, NULL, N'STUDN67008', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblQualification] ([QulificationId], [StaffCode], [StudCode], [GraduationYear], [GraduationPercentage], [Graduation_University], [GraduationFile], [PGYear], [PGPercentage], [PGUniversity], [PGFile], [OtherCourse], [OtherCourseYear], [OtherCoursePercentage], [OtherCourseUniversity], [OtherCourseFile]) VALUES (11, NULL, N'STUDN67009', 2008, CAST(80.65 AS Decimal(5, 2)), N'Pune University', NULL, 2010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblQualification] OFF
GO
SET IDENTITY_INSERT [dbo].[tblResult] ON 

INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (1, 2052, 1020, N'STUDN67001', 17, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (2, 2052, 1020, N'STUDN67002', 16, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (4, 2052, 1020, N'STUDN67003', 20, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (5, 2052, 1020, N'STUDN67004', 19, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (6, 2052, 1020, N'STUDN67005', 18, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (7, 2052, 1020, N'STUDN67006', 0, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (8, 2052, 1020, N'STUDN67007', 18, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (9, 2052, 1021, N'STUDN67008', 17, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (10, 2052, 1021, N'STUDN67009', 18, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (11, 2052, 1021, N'STUDN67010', 14, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (12, 2052, 1021, N'STUDN67011', 16, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (13, 2052, 1021, N'STUDN67012', 9, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (14, 2052, 1021, N'STUDN67013', 0, N'Absent')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (15, 2052, 1021, N'STUDN67014', 18, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (16, 2052, 1022, N'STUDN67015', 0, N'Absent')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (17, 2052, 1022, N'STUDN67016', 17, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (18, 2052, 1022, N'STUDN67017', 14, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (19, 2052, 1022, N'STUDN67018', 15, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (20, 2052, 1022, N'STUDN67019', 16, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (21, 2052, 1022, N'STUDN67020', 0, N'Absent')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (22, 2052, 1022, N'STUDN67021', 12, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (23, 2055, 1020, N'STUDN67001', 35, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (24, 2052, 1020, N'STUDN67002', 36, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (25, 2052, 1020, N'STUDN67003', 37, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (26, 2052, 1020, N'STUDN67004', 38, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (27, 2052, 1020, N'STUDN67005', 39, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (28, 2052, 1020, N'STUDN67006', 0, N'Absent')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (29, 2052, 1020, N'STUDN67007', 36, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (30, 2061, 1025, N'STUDN67036', 41, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (31, 2061, 1025, N'STUDN67037', 38, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (32, 2061, 1025, N'STUDN67038', 25, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (33, 2061, 1025, N'STUDN67039', 43, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (34, 2061, 1025, N'STUDN67040', 0, N'Absent')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (35, 2061, 1025, N'STUDN67041', 34, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (36, 2061, 1025, N'STUDN67042', 31, N'Present')
INSERT [dbo].[tblResult] ([ResultId], [TestId], [BatchId], [StudCode], [Obtained_Marks], [Attendance]) VALUES (37, 2052, 1020, N'STUDN67001', 30, N'Present')
SET IDENTITY_INSERT [dbo].[tblResult] OFF
GO
SET IDENTITY_INSERT [dbo].[tblRTSCRMCenter] ON 

INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (6, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (8, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (9, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblRTSCRMCenter] ([CenterId], [LocationId], [Logo], [InvoicePrefix], [CenterType], [CenterName], [CenterAddress], [ClientId], [Contact], [Email], [LabCapacity], [RegistrationDate]) VALUES (10, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblRTSCRMCenter] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSchedule] ON 

INSERT [dbo].[tblSchedule] ([ScheduleId], [StaffCode], [CourseId], [TopicId], [Duration], [AssignmentId]) VALUES (1, N'STF1', 1, N'1,2,3', N'5 hours', N'1,2')
INSERT [dbo].[tblSchedule] ([ScheduleId], [StaffCode], [CourseId], [TopicId], [Duration], [AssignmentId]) VALUES (2, N'STF2', 2, N'1,2,3', N'5 hours', N'1,2')
INSERT [dbo].[tblSchedule] ([ScheduleId], [StaffCode], [CourseId], [TopicId], [Duration], [AssignmentId]) VALUES (3, N'STF3', 3, N'1,2,3', N'5 hours', N'1,2')
INSERT [dbo].[tblSchedule] ([ScheduleId], [StaffCode], [CourseId], [TopicId], [Duration], [AssignmentId]) VALUES (4, N'STF4', 1, N'1,2,3', N'5 hours', N'1,2')
SET IDENTITY_INSERT [dbo].[tblSchedule] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSkill] ON 

INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (1, N'C#')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (2, N'MS Sql Server')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (3, N'ADO .Net')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (4, N'MVC')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (5, N'HTML')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (6, N'CSS')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (7, N'JS')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (8, N'React')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (9, N'Angular')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (10, N'Java')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (11, N'Data Stucture')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (12, N'OS')
INSERT [dbo].[tblSkill] ([SkillId], [SkillName]) VALUES (13, N'Spring Boot')
SET IDENTITY_INSERT [dbo].[tblSkill] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStaff] ON 

INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (1, N'STF1', N'Ganesh Lad', N'12345', CAST(N'2022-01-01' AS Date), N'9145678932', N'9145678932', N'Pune', 1, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (10, N'STF10', N'Payal Gaikwad', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 4, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 2, 5, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (11, N'STF11', N'Ravina Sutar', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 5, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 3, 6, NULL, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (12, N'STF12', N'Rishi Patil', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 3, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 4, 2, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (13, N'STF13', N'Prathamesh Kumbhar', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 6, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, 1, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (14, N'STF14', N'Kartik Sharma', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 2, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 2, 5, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (15, N'STF15', N'Omkar Kurle', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 2, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 3, 4, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (16, N'STF16', N'Pooja Gadkar', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 4, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 4, 2, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (17, N'STF17', N'Pratiksha Patil', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 3, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 3, NULL, NULL, NULL, 1, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (18, N'STF18', N'Vaibhav Powar', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 2, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, 4, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (19, N'STF19', N'Pranjal Bhosale', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 4, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 3, 5, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (2, N'STF2', N'Abhijit Chavan', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 2, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 2, 2, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (20, N'STF20', N'Amruta Kale', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 5, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 4, 2, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (3, N'STF3', N'Jalindar Savant', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 3, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 3, 3, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (4, N'STF4', N'Kavita Kadam', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 1, N'209470519541', N'BNZPM2501F', N'kavita@gmail.com', N'Female', CAST(N'1985-08-09' AS Date), 1999, CAST(79.89 AS Decimal(5, 2)), N'SPPU', N'Choose this file', 2001, CAST(75.00 AS Decimal(5, 2)), N'SPPU', N'Choose this file', 2, 1, 1, 1, N'10Year', N'5Year', CAST(N'2018-12-01' AS Date), 3, 3, N'SBI', N'SBIN212312', N'Sbi12345', N'Lakshminagar')
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (5, N'STF5', N'Gauri Powar', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 5, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 1, 5, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (6, N'STF6', N'Priyanka Patil', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 6, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 2, 4, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (7, N'STF7', N'Satyajit Bhosale', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 1, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 3, 2, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (8, N'STF8', N'Raj Desai', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 2, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 4, 1, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStaff] ([StaffId], [StaffCode], [StaffName], [StaffPassword], [StaffRegistrationDate], [StaffContact], [StaffWhatsappContact], [StaffAddress], [CityId], [AadharNo], [PanNo], [StaffEmail], [StaffGender], [StaffDOB], [SSC_Year], [SSC_Percentage], [SSCUniversity], [SSCFile], [HSCYear], [HSCPercentage], [HSC_University], [HSCFile], [QualificationId], [StaffPositionId], [CourseId], [Skill_Id], [WorkExperience], [As_Trainer_experience], [JoiningDate], [StatusId], [CenterId], [BankName], [IfscCode], [BankaccountNo], [BranchName]) VALUES (9, N'STF9', N'Saurabh Chavan', N'12345', CAST(N'2022-01-02' AS Date), N'9145678932', N'9145678932', N'Pune', 3, N'209470519541', N'BNZPM2501F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 1, 4, NULL, NULL, NULL, 4, 2, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblStaff] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStaffPosition] ON 

INSERT [dbo].[tblStaffPosition] ([StaffPositionId], [StaffPosition]) VALUES (1, N'Sr.Trainer')
INSERT [dbo].[tblStaffPosition] ([StaffPositionId], [StaffPosition]) VALUES (2, N'Jr Trainer')
SET IDENTITY_INSERT [dbo].[tblStaffPosition] OFF
GO
SET IDENTITY_INSERT [dbo].[tblState] ON 

INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (1, N'Maharashtra', 1)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (2, N'Delhi', 1)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (3, N'Goa', 1)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (4, N'Hokkaido', 2)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (5, N'Honshu', 2)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (6, N'Bavaria', 2)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (7, N'Niedersachsen ', 3)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (8, N'Alberta', 3)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (9, N'Columbia', 4)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (10, N'Victoria', 4)
INSERT [dbo].[tblState] ([StateId], [StateName], [CountryId]) VALUES (11, N'Tasmania', 5)
SET IDENTITY_INSERT [dbo].[tblState] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStatus] ON 

INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (1, N'Event Conducted')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (2, N'Event Pending')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (3, N'Trainer Active')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (4, N'Trainer On Leave')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (5, N'Trainer Leave Approve')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (6, N'Trainer Leave Reject')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (7, N'Batch Status Active')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (8, N'Batch Status Break')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (9, N'Batch Status Complete')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (10, N'Batch Status Pending')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (11, N'Assign Project Assign')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (12, N'Assign Project Active')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (13, N'Assign Project Pending')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (14, N'Assign Project Complete')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (15, N'Test Status Pending')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (16, N'Test Status Conduct')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (17, N'Student Status Active')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (18, N'StudentStatusPending')
INSERT [dbo].[tblStatus] ([StatusID], [StatusName]) VALUES (19, N'StudentStatusBreak')
SET IDENTITY_INSERT [dbo].[tblStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[tblStudent] ON 

INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (1, N'STUDN67001', N'Reva Kiran Patil', N'7894563210', N'7894563211', N'reva@gmail.com', N'Male', N'Pune', N'Pune', 1, N'411001', CAST(N'2023-01-12' AS Date), CAST(N'2023-12-31' AS Date), 1, N'Employee', N'Linked In', 1, 1, N'11 am to 2 pm', N'Yes', N'GayaSotfware', N'Software Developer', N'1 Year', CAST(N'1999-01-20' AS Date), N'Kiran', N'Vaishnavli', N'7894563210', N'815789126783', 17, 1000, 4, N'Online', N'1', N'1%', N'Call After 2 days', N'Image.jpg', N'Adhar.pdf', N'PanCard.pdf')
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (2, N'STUDN67002', N'Raj Kisan Bhosale', N'7894563211', N'7894563211', N'raj@gmail.com', N'Female', N'Thane', N'Thane', 2, N'400601', CAST(N'2023-02-13' AS Date), CAST(N'2023-08-20' AS Date), 2, N'Student', N'Naukari.Com', 2, 1, N'12 pm to 3 pm', N'No', N'Land Mark', N'Frontend Developer', N'1 Year', CAST(N'1995-05-22' AS Date), N'Kisan', N'Asmita', N'7894563211', N'815789126783', 17, 1000, 4, N'Cash', N'2', N'2%', N'Call After 2 days', N'Image.jpg', N'Adhar.pdf', N'PanCard.pdf')
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (3, N'STUDN67003', N'Srushti Chandrashekhar Bhosale', N'6499637375', N'7894563211', N'Srushti@gmail.com', N'Female', N'Nashik', N'Nashik', 3, N'422001', CAST(N'2023-02-10' AS Date), CAST(N'2023-12-31' AS Date), 3, N'Student', N'Google', 3, 1, N'1 pm to 4 pm', N'Yes', N'Sales 5G', N'Software Developer', N'1 Year', CAST(N'2000-08-24' AS Date), N'Chandrashekhar', N'Varsha', N'7894563211', N'815789126783', 17, 1000, 4, N'Online', N'3', N'1%', N'Call After 2 days', N'Image.jpg', N'Adhar.pdf', N'PanCard.pdf')
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (4, N'STUDN67004', N'Gayatri Yuvaraj Kumbhar', N'6499637375', N'7894563211', N'Gayatri@gmail.com', N'Female', N'Kolhapur', N'Kolhapur', 4, N'416003', CAST(N'2023-01-12' AS Date), CAST(N'2023-08-20' AS Date), 4, N'Student', N'Foundit', 4, 1, N'3 pm to 6 pm', N'No', N'IBM', N'Software Developer', N'1 Year', CAST(N'2001-12-07' AS Date), N'Yuvaraj', N'Sneha', N'7894563211', N'815789126783', 17, 1000, 4, N'Cash', N'4', N'1%', N'Call After 2 days', N'Image.jpg', N'Adhar.pdf', N'PanCard.pdf')
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (5, N'STUDN67005', N'Sushil Satish Babar', N'6499637375', N'7894563211', N'Dhanshree@gmail.com', N'Female', N'Nagpur', N'Nagpur', 5, N'440001', CAST(N'2023-02-18' AS Date), CAST(N'2023-12-31' AS Date), 5, N'Student', N'Linked In', 5, 1, N'5 pm to 8 pm', N'No', N'Tech Mahindra', N'Software Developer', N'1 Year', CAST(N'2002-08-03' AS Date), N'Satish', N'Vaishali', N'7894563211', N'815789126783', 17, 1000, 4, N'Online', N'5', N'1%', N'Call After 2 days', N'Image.jpg', N'Adhar.pdf', N'PanCard.pdf')
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (6, N'STUDN67006', N'Dhanshree Rajaram Jarag', N'6499637375', N'7894563211', N'Pragti@gmail.com', N'Female', NULL, NULL, NULL, N'400601', NULL, NULL, NULL, N'Student', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, 4, N'Cash', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (7, N'STUDN67007', N'Pragati LakshmanSutar', N'6499637375', N'7894563211', N'Kshitija@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (8, N'STUDN67008', N'Aakash Govind Sarvalkar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (9, N'STUDN67009', N'Manoj Mohan Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (10, N'STUDN67010', N'Kshitija Gaurav Darvan', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (11, N'STUDN67011', N'Satyjit Kabir Bhosale', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (12, N'STUDN67012', N'Aushutosh  Keshav Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (13, N'STUDN67013', N'Vinayak Virat Bhosale', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (14, N'STUDN67014', N'Saurbh Vipul Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (15, N'STUDN67015', N'Sanika Prakash Kumbhar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (16, N'STUDN67016', N'Mayuri Tejas  Kumbhar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (17, N'STUDN67017', N'Sakshi Sarang Shinde', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (18, N'STUDN67018', N'Amruta Nilesh Parkhe', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (19, N'STUDN67019', N'Sarita Shubham Musale', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (20, N'STUDN67020', N'Priyanka Shreyash Kumbhar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (21, N'STUDN67021', N'Uma Pradeep Desai', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (22, N'STUDN67022', N'Pooja Praveen Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (23, N'STUDN67023', N'Snehal Aniket Navale', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (24, N'STUDN67024', N'Gauri Anuj Khade', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (25, N'STUDN67025', N'Geetu Prathamesh Bhogam', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (26, N'STUDN67026', N'Pratiksha Pranit Kadam', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (27, N'STUDN67027', N'Payal Ajay Gaikwad', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (28, N'STUDN67028', N'Vaishnav Prajwal Gurav', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (29, N'STUDN67029', N'Sameer Pratik Chaugale', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (30, N'STUDN67030', N'Jay Amol Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (31, N'STUDN67031', N'Neha Amar Shinde', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (32, N'STUDN67032', N'Rohit Sanjay Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (33, N'STUDN67033', N'Altaf Harun Shaikh', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (34, N'STUDN67034', N'Akhilesh Lakhan Deshmukh', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (35, N'STUDN67035', N'Manohar Aanda Lohar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (36, N'STUDN67036', N'Neel Kunal Khaire', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (37, N'STUDN67037', N'Shweta Ashok Bonde', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (38, N'STUDN67038', N'Jay Sanjiv Singh', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (39, N'STUDN67039', N'Tejashri Ganesh Kale', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (40, N'STUDN67040', N'Nitu Aakash Lad', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (41, N'STUDN67041', N'Karan Sachin Mane ', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (42, N'STUDN67042', N'Abhishek Prem Mane', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (43, N'STUDN67043', N'Shubham Pavan Koli', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (44, N'STUDN67044', N'Sonal Vishwajeet Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (45, N'STUDN67045', N'Shweta Amit Mane', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (46, N'STUDN67046', N'Radhika Amar Kumbhar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (47, N'STUDN67047', N'Neeta Sanjay Patil', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (48, N'STUDN67048', N'Sarita Abhijeet Chechar', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (49, N'STUDN67049', N'Rajashri Arun Jtrate', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblStudent] ([StudId], [StudCode], [StudFullName], [ContactNo], [AlternateNo], [EmailId], [Gender], [LocalAddress], [PermentAddress], [CityId], [PinNo], [EnquiryDate], [RegistrationDate], [QualificationID], [ProfessionalStatus], [Reference], [EnquirySourceId], [CourseId], [TimePreferred], [PreviousExperience], [CompanyName], [Designation], [Period], [DOB], [FatherName], [MotherName], [FatherContactNo], [MotherContactNo], [StatusId], [RegistrationFees], [NumberOfInstalments], [PaymentMethod], [TransactionId], [RaiseDiscount], [EnquiryComment], [PhotoFile], [AadharCardFile], [PanCardFile]) VALUES (50, N'STUDN67050', N'Manvi Babaso Prabhu', N'6499637375', N'7894563211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblStudent] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTemplate] ON 

INSERT [dbo].[tblTemplate] ([TemplateId], [TemplateName], [TemplateType], [Description]) VALUES (1, N'Demo', NULL, NULL)
INSERT [dbo].[tblTemplate] ([TemplateId], [TemplateName], [TemplateType], [Description]) VALUES (2, N'Appoinment', NULL, NULL)
INSERT [dbo].[tblTemplate] ([TemplateId], [TemplateName], [TemplateType], [Description]) VALUES (3, N' Daily Wishesh ', NULL, NULL)
INSERT [dbo].[tblTemplate] ([TemplateId], [TemplateName], [TemplateType], [Description]) VALUES (4, N'Pending Fees', NULL, NULL)
INSERT [dbo].[tblTemplate] ([TemplateId], [TemplateName], [TemplateType], [Description]) VALUES (5, N'Congratulations', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblTemplate] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTest] ON 

INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2052, N'c# basic Test', 1, 1, CAST(N'2023-06-11' AS Date), 20, N'2Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2053, N'Datatypes and variables Test', 1, 2, CAST(N'2023-06-11' AS Date), 20, N'2Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2055, N'Class and Object Test', 1, 4, CAST(N'2023-06-11' AS Date), 40, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2056, N'Garbage Collection in c# Test', 1, 5, CAST(N'2023-06-11' AS Date), 50, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2057, N'Array in c# Test', 1, 6, CAST(N'2023-06-11' AS Date), 60, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2058, N'Collection in c# Test', 1, 7, CAST(N'2023-06-11' AS Date), 70, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2059, N'String and its methods  Test', 1, 9, CAST(N'2023-06-11' AS Date), 70, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2060, N'java basics  Test', 2, 10, CAST(N'2023-06-11' AS Date), 20, N'2Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2061, N'Opps in Java  Test', 2, 11, CAST(N'2023-06-11' AS Date), 50, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2062, N'Class and Object in java  Test', 2, 12, CAST(N'2023-06-11' AS Date), 50, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2063, N'Array in java  Test', 2, 14, CAST(N'2023-06-11' AS Date), 60, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2064, N'methods in Java  Test', 2, 18, CAST(N'2023-06-11' AS Date), 70, N'3Hr', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2065, N'StringTest in .net', 1, 9, CAST(N'2023-06-13' AS Date), 30, N'2 hrs', N'C:\Users\Manohar\Downloads\dharani-veg-restaurant.jpg', 0)
INSERT [dbo].[tblTest] ([TestId], [TestName], [CourseId], [TopicId], [TestCreationDate], [TotalMarks], [Duration], [SelectFile], [Isdelete]) VALUES (2066, N'methods in Java Test', 2, 18, CAST(N'2023-06-14' AS Date), 30, N'2 Hrs', N'C:\Users\Manohar\Desktop\DotNet.pdf', 0)
SET IDENTITY_INSERT [dbo].[tblTest] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTestAssign] ON 

INSERT [dbo].[tblTestAssign] ([TestAssignId], [TestId], [Date], [StratTime], [BatchId], [LabId], [StatusId], [MonitoringStaff]) VALUES (1, 2052, CAST(N'2023-06-11' AS Date), N'10AM', 1020, 1, 15, N'STF4')
INSERT [dbo].[tblTestAssign] ([TestAssignId], [TestId], [Date], [StratTime], [BatchId], [LabId], [StatusId], [MonitoringStaff]) VALUES (2, 2055, CAST(N'2023-06-22' AS Date), N'3PM', 1021, 2, 15, N'STF4')
INSERT [dbo].[tblTestAssign] ([TestAssignId], [TestId], [Date], [StratTime], [BatchId], [LabId], [StatusId], [MonitoringStaff]) VALUES (3, 2057, CAST(N'2023-06-23' AS Date), N'10AM', 1022, 3, 15, N'STF5')
SET IDENTITY_INSERT [dbo].[tblTestAssign] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTestimonial] ON 

INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (1, N'STUDN67001', 1, N'TEAM MEMBER', 1, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (2, N'STUDN67002', 2, N'TEAM MEMBER', 2, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (3, N'STUDN67003', 3, N'TEAM MEMBER', 3, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (4, N'STUDN67004', 4, N'TEAM MEMBER', 1, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (5, N'STUDN67005', 1, N'TEAM MEMBER', 2, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (6, N'STUDN67006', 2, N'TEAM MEMBER', 3, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
INSERT [dbo].[tblTestimonial] ([TestmonialId], [StudCode], [QulificationID], [Designation], [CompanyID], [SalaryOffer], [DateOfJoining], [UploadVideo], [UploadPDF]) VALUES (7, N'STUDN67007', 3, N'TEAM MEMBER', 1, CAST(5 AS Decimal(18, 0)), CAST(N'2022-01-01' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblTestimonial] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTopic] ON 

INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (1, N'c# basic', 1, N'3Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (2, N'Datatypes and variables', 1, N'2Hr', 1, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (3, N'Opps in c#', 1, N'4Hr', 3, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (4, N'Class and Object', 1, N'4Hr', 3, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (5, N'Garbage Collection in c#', 1, N'2Hr', 1, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (6, N'Array in c#', 1, N'2Hr', 1, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (7, N'Collection in c#', 1, N'4Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (9, N'String and its methods', 1, N'2Hr', 1, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (10, N'java basics', 2, N'3Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (11, N'Opps in Java', 2, N'4Hr', 3, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF4')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (12, N'Class and Object in java', 2, N'4Hr', 3, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (13, N'Garbage Collection in java', 2, N'2Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (14, N'Array in java', 2, N'2Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (15, N'Collection in java', 2, N'4Hr', 3, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (16, N'String and its methods', 2, N'2Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (17, N'Methods in c#', 1, N'2Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
INSERT [dbo].[tblTopic] ([TopicId], [TopicName], [CourseId], [Duration], [NumberofSessions], [AssignmentFileName], [StaffCode]) VALUES (18, N'methods in Java', 2, N'2Hr', 2, N'C:\Users\Manohar\Pictures\wp2555257-apple-wallpaper-hd.jpg', N'STF5')
SET IDENTITY_INSERT [dbo].[tblTopic] OFF
GO
ALTER TABLE [dbo].[tblTest] ADD  CONSTRAINT [DF_tblTest_Isdelete_1]  DEFAULT ((0)) FOR [Isdelete]
GO
ALTER TABLE [dbo].[tblAssignment]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignment_tblTopic] FOREIGN KEY([TopicID])
REFERENCES [dbo].[tblTopic] ([TopicId])
GO
ALTER TABLE [dbo].[tblAssignment] CHECK CONSTRAINT [FK_tblAssignment_tblTopic]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblAssignProject] FOREIGN KEY([TeamLeaderStudCode])
REFERENCES [dbo].[tblStudent] ([StudCode])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblAssignProject]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[tblBatch] ([BatchId])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblBatch]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblCreateProject] FOREIGN KEY([ProjectID])
REFERENCES [dbo].[tblCreateProject] ([ProjectID])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblCreateProject]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblStaff] FOREIGN KEY([DirectStaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblStaff]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblStaff1] FOREIGN KEY([HRStaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblStaff1]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblStaff2] FOREIGN KEY([PMStaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblStaff2]
GO
ALTER TABLE [dbo].[tblAssignProject]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignProject_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblAssignProject] CHECK CONSTRAINT [FK_tblAssignProject_tblStatus]
GO
ALTER TABLE [dbo].[tblAssignSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignSchedule_tblBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[tblBatch] ([BatchId])
GO
ALTER TABLE [dbo].[tblAssignSchedule] CHECK CONSTRAINT [FK_tblAssignSchedule_tblBatch]
GO
ALTER TABLE [dbo].[tblAssignSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tblAssignSchedule_tblSchedule] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[tblSchedule] ([ScheduleId])
GO
ALTER TABLE [dbo].[tblAssignSchedule] CHECK CONSTRAINT [FK_tblAssignSchedule_tblSchedule]
GO
ALTER TABLE [dbo].[tblAttendance]  WITH CHECK ADD  CONSTRAINT [FK_tblAttendance_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblAttendance] CHECK CONSTRAINT [FK_tblAttendance_tblCourse]
GO
ALTER TABLE [dbo].[tblAttendance]  WITH CHECK ADD  CONSTRAINT [FK_tblAttendance_tblTopic] FOREIGN KEY([TopicId])
REFERENCES [dbo].[tblTopic] ([TopicId])
GO
ALTER TABLE [dbo].[tblAttendance] CHECK CONSTRAINT [FK_tblAttendance_tblTopic]
GO
ALTER TABLE [dbo].[tblBatch]  WITH CHECK ADD  CONSTRAINT [FK_tblBatch_tblBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[tblBatch] ([BatchId])
GO
ALTER TABLE [dbo].[tblBatch] CHECK CONSTRAINT [FK_tblBatch_tblBatch]
GO
ALTER TABLE [dbo].[tblBatch]  WITH CHECK ADD  CONSTRAINT [FK_tblBatch_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblBatch] CHECK CONSTRAINT [FK_tblBatch_tblCourse]
GO
ALTER TABLE [dbo].[tblBatch]  WITH CHECK ADD  CONSTRAINT [FK_tblBatch_tblLab] FOREIGN KEY([LabId])
REFERENCES [dbo].[tblLab] ([LabId])
GO
ALTER TABLE [dbo].[tblBatch] CHECK CONSTRAINT [FK_tblBatch_tblLab]
GO
ALTER TABLE [dbo].[tblBatch]  WITH CHECK ADD  CONSTRAINT [FK_tblBatch_tblStaff] FOREIGN KEY([StaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblBatch] CHECK CONSTRAINT [FK_tblBatch_tblStaff]
GO
ALTER TABLE [dbo].[tblBatch]  WITH CHECK ADD  CONSTRAINT [FK_tblBatch_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblBatch] CHECK CONSTRAINT [FK_tblBatch_tblStatus]
GO
ALTER TABLE [dbo].[tblCity]  WITH CHECK ADD  CONSTRAINT [FK_tblCity_tblState] FOREIGN KEY([StateId])
REFERENCES [dbo].[tblState] ([StateId])
GO
ALTER TABLE [dbo].[tblCity] CHECK CONSTRAINT [FK_tblCity_tblState]
GO
ALTER TABLE [dbo].[tblCourse]  WITH CHECK ADD  CONSTRAINT [FK_tblCourse_tblCourseType] FOREIGN KEY([CourseTypeId])
REFERENCES [dbo].[tblCourseType] ([CourseTypeId])
GO
ALTER TABLE [dbo].[tblCourse] CHECK CONSTRAINT [FK_tblCourse_tblCourseType]
GO
ALTER TABLE [dbo].[tblCourse]  WITH CHECK ADD  CONSTRAINT [FK_tblCourse_tblRTSCRMCenter] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tblRTSCRMCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tblCourse] CHECK CONSTRAINT [FK_tblCourse_tblRTSCRMCenter]
GO
ALTER TABLE [dbo].[tblCourseType]  WITH CHECK ADD  CONSTRAINT [FK_tblCourseType_tblRTSCRMCenter] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tblRTSCRMCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tblCourseType] CHECK CONSTRAINT [FK_tblCourseType_tblRTSCRMCenter]
GO
ALTER TABLE [dbo].[tblCreateProject]  WITH CHECK ADD  CONSTRAINT [FK_tblCreateProject_tblTopic] FOREIGN KEY([TopicId])
REFERENCES [dbo].[tblTopic] ([TopicId])
GO
ALTER TABLE [dbo].[tblCreateProject] CHECK CONSTRAINT [FK_tblCreateProject_tblTopic]
GO
ALTER TABLE [dbo].[tblEvents]  WITH CHECK ADD  CONSTRAINT [FK_tblEvents_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblEvents] CHECK CONSTRAINT [FK_tblEvents_tblStatus]
GO
ALTER TABLE [dbo].[tblFeedback]  WITH CHECK ADD  CONSTRAINT [FK_tblFeedback_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblFeedback] CHECK CONSTRAINT [FK_tblFeedback_tblCourse]
GO
ALTER TABLE [dbo].[tblLab]  WITH CHECK ADD  CONSTRAINT [FK_tblLab_tblRTSCRMCenter] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tblRTSCRMCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tblLab] CHECK CONSTRAINT [FK_tblLab_tblRTSCRMCenter]
GO
ALTER TABLE [dbo].[tblLeave]  WITH CHECK ADD  CONSTRAINT [FK_tblLeave_tblStaff] FOREIGN KEY([StaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblLeave] CHECK CONSTRAINT [FK_tblLeave_tblStaff]
GO
ALTER TABLE [dbo].[tblLeave]  WITH CHECK ADD  CONSTRAINT [FK_tblLeave_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblLeave] CHECK CONSTRAINT [FK_tblLeave_tblStatus]
GO
ALTER TABLE [dbo].[tblPayment]  WITH CHECK ADD  CONSTRAINT [FK_tblPayment_tblStudent] FOREIGN KEY([StudCode])
REFERENCES [dbo].[tblStudent] ([StudCode])
GO
ALTER TABLE [dbo].[tblPayment] CHECK CONSTRAINT [FK_tblPayment_tblStudent]
GO
ALTER TABLE [dbo].[tblQualification]  WITH CHECK ADD  CONSTRAINT [FK_tblQualification_tblStaff] FOREIGN KEY([StaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblQualification] CHECK CONSTRAINT [FK_tblQualification_tblStaff]
GO
ALTER TABLE [dbo].[tblQualification]  WITH CHECK ADD  CONSTRAINT [FK_tblQualification_tblStudent] FOREIGN KEY([StudCode])
REFERENCES [dbo].[tblStudent] ([StudCode])
GO
ALTER TABLE [dbo].[tblQualification] CHECK CONSTRAINT [FK_tblQualification_tblStudent]
GO
ALTER TABLE [dbo].[tblResult]  WITH CHECK ADD  CONSTRAINT [FK_tblResult_tblBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[tblBatch] ([BatchId])
GO
ALTER TABLE [dbo].[tblResult] CHECK CONSTRAINT [FK_tblResult_tblBatch]
GO
ALTER TABLE [dbo].[tblResult]  WITH CHECK ADD  CONSTRAINT [FK_tblResult_tblStudent] FOREIGN KEY([StudCode])
REFERENCES [dbo].[tblStudent] ([StudCode])
GO
ALTER TABLE [dbo].[tblResult] CHECK CONSTRAINT [FK_tblResult_tblStudent]
GO
ALTER TABLE [dbo].[tblResult]  WITH CHECK ADD  CONSTRAINT [FK_tblResult_tblTest] FOREIGN KEY([TestId])
REFERENCES [dbo].[tblTest] ([TestId])
GO
ALTER TABLE [dbo].[tblResult] CHECK CONSTRAINT [FK_tblResult_tblTest]
GO
ALTER TABLE [dbo].[tblRTSCRMCenter]  WITH CHECK ADD  CONSTRAINT [FK_tblRTSCRMCenter_tblLocations] FOREIGN KEY([LocationId])
REFERENCES [dbo].[tblLocations] ([LocationID])
GO
ALTER TABLE [dbo].[tblRTSCRMCenter] CHECK CONSTRAINT [FK_tblRTSCRMCenter_tblLocations]
GO
ALTER TABLE [dbo].[tblSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tblSchedule_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblSchedule] CHECK CONSTRAINT [FK_tblSchedule_tblCourse]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblCity] FOREIGN KEY([CityId])
REFERENCES [dbo].[tblCity] ([CityId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblCity]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblCourse]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblQualification] FOREIGN KEY([QualificationId])
REFERENCES [dbo].[tblQualification] ([QulificationId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblQualification]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblRTSCRMCenter] FOREIGN KEY([CenterId])
REFERENCES [dbo].[tblRTSCRMCenter] ([CenterId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblRTSCRMCenter]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblSkill] FOREIGN KEY([Skill_Id])
REFERENCES [dbo].[tblSkill] ([SkillId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblSkill]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblStaffPosition] FOREIGN KEY([StaffPositionId])
REFERENCES [dbo].[tblStaffPosition] ([StaffPositionId])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblStaffPosition]
GO
ALTER TABLE [dbo].[tblStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblStaff_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblStaff] CHECK CONSTRAINT [FK_tblStaff_tblStatus]
GO
ALTER TABLE [dbo].[tblState]  WITH CHECK ADD  CONSTRAINT [FK_tblState_tblCountry] FOREIGN KEY([CountryId])
REFERENCES [dbo].[tblCountry] ([CountryId])
GO
ALTER TABLE [dbo].[tblState] CHECK CONSTRAINT [FK_tblState_tblCountry]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblCity] FOREIGN KEY([CityId])
REFERENCES [dbo].[tblCity] ([CityId])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblCity]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblCourse]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblEnquirySource] FOREIGN KEY([EnquirySourceId])
REFERENCES [dbo].[tblEnquirySource] ([EnquirySourceID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblEnquirySource]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblQualification] FOREIGN KEY([QualificationID])
REFERENCES [dbo].[tblQualification] ([QulificationId])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblQualification]
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblStatus]
GO
ALTER TABLE [dbo].[tblTest]  WITH CHECK ADD  CONSTRAINT [FK_tblTest_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblTest] CHECK CONSTRAINT [FK_tblTest_tblCourse]
GO
ALTER TABLE [dbo].[tblTest]  WITH CHECK ADD  CONSTRAINT [FK_tblTest_tblTopic] FOREIGN KEY([TopicId])
REFERENCES [dbo].[tblTopic] ([TopicId])
GO
ALTER TABLE [dbo].[tblTest] CHECK CONSTRAINT [FK_tblTest_tblTopic]
GO
ALTER TABLE [dbo].[tblTestAssign]  WITH CHECK ADD  CONSTRAINT [FK_tblTestAssign_tblBatch] FOREIGN KEY([BatchId])
REFERENCES [dbo].[tblBatch] ([BatchId])
GO
ALTER TABLE [dbo].[tblTestAssign] CHECK CONSTRAINT [FK_tblTestAssign_tblBatch]
GO
ALTER TABLE [dbo].[tblTestAssign]  WITH CHECK ADD  CONSTRAINT [FK_tblTestAssign_tblLab] FOREIGN KEY([LabId])
REFERENCES [dbo].[tblLab] ([LabId])
GO
ALTER TABLE [dbo].[tblTestAssign] CHECK CONSTRAINT [FK_tblTestAssign_tblLab]
GO
ALTER TABLE [dbo].[tblTestAssign]  WITH CHECK ADD  CONSTRAINT [FK_tblTestAssign_tblLab1] FOREIGN KEY([LabId])
REFERENCES [dbo].[tblLab] ([LabId])
GO
ALTER TABLE [dbo].[tblTestAssign] CHECK CONSTRAINT [FK_tblTestAssign_tblLab1]
GO
ALTER TABLE [dbo].[tblTestAssign]  WITH CHECK ADD  CONSTRAINT [FK_tblTestAssign_tblStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tblStatus] ([StatusID])
GO
ALTER TABLE [dbo].[tblTestAssign] CHECK CONSTRAINT [FK_tblTestAssign_tblStatus]
GO
ALTER TABLE [dbo].[tblTestAssign]  WITH CHECK ADD  CONSTRAINT [FK_tblTestAssign_tblTest] FOREIGN KEY([TestId])
REFERENCES [dbo].[tblTest] ([TestId])
GO
ALTER TABLE [dbo].[tblTestAssign] CHECK CONSTRAINT [FK_tblTestAssign_tblTest]
GO
ALTER TABLE [dbo].[tblTestimonial]  WITH CHECK ADD  CONSTRAINT [FK_tblTestimonial_tblQualification] FOREIGN KEY([QulificationID])
REFERENCES [dbo].[tblQualification] ([QulificationId])
GO
ALTER TABLE [dbo].[tblTestimonial] CHECK CONSTRAINT [FK_tblTestimonial_tblQualification]
GO
ALTER TABLE [dbo].[tblTestimonial]  WITH CHECK ADD  CONSTRAINT [FK_tblTestimonial_tblStudent] FOREIGN KEY([StudCode])
REFERENCES [dbo].[tblStudent] ([StudCode])
GO
ALTER TABLE [dbo].[tblTestimonial] CHECK CONSTRAINT [FK_tblTestimonial_tblStudent]
GO
ALTER TABLE [dbo].[tblTopic]  WITH CHECK ADD  CONSTRAINT [FK_tblTopic_tblCourse] FOREIGN KEY([CourseId])
REFERENCES [dbo].[tblCourse] ([CourseId])
GO
ALTER TABLE [dbo].[tblTopic] CHECK CONSTRAINT [FK_tblTopic_tblCourse]
GO
ALTER TABLE [dbo].[tblTopic]  WITH CHECK ADD  CONSTRAINT [FK_tblTopic_tblTopic] FOREIGN KEY([StaffCode])
REFERENCES [dbo].[tblStaff] ([StaffCode])
GO
ALTER TABLE [dbo].[tblTopic] CHECK CONSTRAINT [FK_tblTopic_tblTopic]
GO
/****** Object:  StoredProcedure [dbo].[AttendanceManegementSystem]    Script Date: 08-07-2023 11:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AttendanceManegementSystem]
(

@AttendanceId int=null,
@StudCode nvarchar(50)=null,
@CourseId int=null,
@CourseName nvarchar(50)=null,
@BatchId int=null,
@BatchName nvarchar(50)=null,
@TopicId int=null,
@TopicName nvarchar(50)=null,
@Duration nvarchar(50)=null,
@AttendanceDate nvarchar(50)=null,
@Attendance bit=null,
@SearchBox nvarchar(50)=null,
@Flag varchar(50) =null

)
as
begin
	if(@Flag='ShowAttendance')
		begin
		select b.BatchId, B.BatchName, C.CourseId,C.CourseName,T.TopicId ,T.TopicName,A.AttendanceDate From tblBatch B
      inner join tblCourse C on C.CourseId=B.CourseId
      inner join tblAttendance A on A.CourseId=b.CourseId
      inner join tblTopic T on T.TopicId=A.TopicId
			--select c.CourseId,c.CourseName,T.TopicId,T.TopicName,A.[Date] from tblCourse C
			--inner join tblTopic T on T.CourseId=C.CourseId
			--inner join tblAttendance A on A.TopicId=T.TopicId
			--inner join tblBatch B on A.BatchId =B.BatchId where B.BatchId=@BatchId
			--inner join tblBatch B on A.BatchId=B.BatchId
		end

	if(@Flag='GetPresent')
		begin 
			select S.StudCode, S.StudFullName from tblStudent as s
			inner join tblAttendance B on B.StudCode=S.StudCode
		end

	if(@Flag='ViewAttendance')
		begin
			select  S.StudFullName,(case when Attendance=1 then 'Present' else 'Absent' end)as Attendance from tblAttendance as A
			inner join tblStudent S on A.StudCode=S.StudCode
			
		end
     if(@Flag='InsertAttendance')
        begin
         insert into tblAttendance values (@StudCode,@CourseId,@BatchId,@TopicId,@AttendanceDate,@Attendance)
       end
    if(@Flag='GetStudCode')
        begin 
           select StudFullName,StudCode from tblStudent where StudCode=@StudCode
       end
    if(@Flag='GetEdit')
	     begin
	          select*from tblAttendance where AttendanceId=@AttendanceId
	     end


	   if(@Flag='GetBatch')
	   begin
	   select * from tblBatch
	   --select BatchId,BatchName from tblBatch B
	   --inner join tblCourse C on B.CourseId=C.CourseId where  C.CourseId=@CourseId
	   end
	  if (@Flag='GetBatchDetails')
	  begin
	  select BatchName, BatchId ,StudCode from tblBatch where BatchId=@BatchId
	  end
       if(@Flag='GetCourse')
       begin
       select* from tblCourse 
      end
      if(@Flag='GetTopic')
        begin
           select TopicName,TopicId from tblTopic 
        end

      if(@Flag='GetByStudDetails')
         begin
         select Attendance,StudFullName ,AttendanceId from tblAttendance A
         inner join tblStudent s on S.StudCode=A.StudCode
           where A.CourseId=@CourseId  and AttendanceDate=@AttendanceDate
         end

	 if(@Flag='GetByStudDetailsByBatchId')
		 begin
       	select s.StudCode ,S.StudFullName from tblBatch B
			cross apply string_split(StudCode,',')as split 
			inner join tblStudent S on S.StudCode=split.value where BatchId=@BatchId
         end


     if(@Flag='GetCT')
	   begin
	    select C.CourseId,c.CourseName,T.TopicName from tblCourse C
		inner join tblTopic T on T.CourseId=C.CourseId where c.CourseId=@CourseId
			--inner join tblAttendance A on A.TopicId=T.TopicId
	    end
        if(@Flag='UpdateAttendance')
       begin
          update tblAttendance set Attendance=@Attendance where AttendanceId=@AttendanceId
  end
      if(@Flag='TopicwiseAttendance')
       begin
          select StudFullName, TopicName  from tblAttendance a
      inner join tblTopic t on t.TopicId = a.TopicId 
      inner join tblStudent s on s.StudCode = a.StudCode 
    where a.TopicId = t.TopicId 
  end
  if (@Flag='Search')
  begin
  select b.BatchId, B.BatchName,C.CourseName,T.TopicName,A.AttendanceDate From tblBatch B
      inner join tblCourse C on C.CourseId=B.CourseId
      inner join tblAttendance A on A.CourseId=b.CourseId
      inner join tblTopic T on T.TopicId=A.TopicId

	  where 
	  BatchName like '%'+@SearchBox+'%'
	  OR CourseName like '%'+@SearchBox+'%'
	  OR TopicName like '%'+@SearchBox+'%'OR
	  AttendanceDate like '%'+@SearchBox+'%'

end
  end
GO
/****** Object:  StoredProcedure [dbo].[BatchManagementProcedure]    Script Date: 08-07-2023 11:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BatchManagementProcedure]
(
@Flag varchar(50)= null,
@BatchName varchar(50)= null,
@CourseId int = null,
@StaffCode varchar(50)= null, 
@StudCode nvarchar(max)= null,
@TotalStudent int = null,
@BatchSTime varchar(50)= null,
@BatchEndTime varchar(50)= null,
@LabId int=null,
@StartDate Date =null,
@EndDate Date =null,
@StatusId int =null,
@BatchId int =null
)
as
begin
	if(@Flag='CreateBatch')
	begin
		  insert into tblBatch 
		  values(@BatchName,@CourseId,@StaffCode,@StudCode,@TotalStudent,@BatchSTime,@BatchEndTime,@LabId,@StartDate,@EndDate,@StatusId)
		
	end
			
	if(@Flag='GetAllBatchDetails')
		begin
			select * from [tblBatch]
		end





	if(@Flag='GetAllBatchDetails')
		begin
			select * from [tblBatch]
		end

		if(@Flag='GetBatchDetailsById')
		begin
			select * from [tblBatch] where batchId=@BatchId
		end

	if(@Flag='GetLab')
		begin
			select LabId,LabName from tblLab
		end

	if(@Flag='BatchStatus')
		begin
			select * from tblStatus where StatusID between 7 and 10
		end

	if(@Flag='GetStudentList')
		begin
			select StudCode,StudFullName from tblStudent where StatusId=18
			
		end

	if(@Flag='Get_Course')
		begin
			  select CourseId,CourseName from tblCourse 
		end

	if(@Flag='GetStaff')
		begin
			select StaffCode,StaffName from tblStaff 
		end
end
GO
/****** Object:  StoredProcedure [dbo].[ReportProcedure]    Script Date: 08-07-2023 11:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ReportProcedure]
(@Flag nvarchar(50)=null,
@Id int =null
)
as
begin
	if(@Flag='StudentReportDashboard')
	begin  
		select count(r.Attendance) as present,st.StudCode,St.StudFullName, b.BatchName,st.ContactNo from  tblResult as r 
right outer join tblStudent as st on st.StudCode = r.StudCode
left outer join tblBatch b on b.BatchId = r.BatchId
inner join tblCourse as co on co.CourseId = st.CourseId
group by st.StudCode,b.BatchName,st.StudFullName,st.ContactNo
	end

	if(@Flag='StudentReportDashboardById')
	begin  
		select count(r.Attendance) as present,st.StudCode,St.StudFullName, b.BatchName,st.ContactNo from  tblResult as r 
right outer join tblStudent as st on st.StudCode = r.StudCode
left outer join tblBatch b on b.BatchId = r.BatchId
inner join tblCourse as co on co.CourseId = st.CourseId
group by st.StudCode,b.BatchName,st.StudFullName,st.ContactNo
			--where B.BatchId=@Id
			--or C.CourseId=@Id
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Test_Management_Procedure]    Script Date: 08-07-2023 11:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Test_Management_Procedure]
(

@Flag varchar(50)=null,
@Test_Name varchar(50)=null,
@CourseId int=null,
@TopicId int=null,
@TestId int=null,
@BatchId int=null,
@TestCreationDate date =null,
@TotalMarks int =null,
@Duration varchar(50) =null,
@StartTime varchar(50) =null,
@SelectFile varchar(200) =null,
@SelectedCourseId int=null,
@SelectedTestId int=null,
@AssignTestDate date =null,
@SelectedBatchId int =null,
@SelectedLabId int =null,
@SelectedStatusId int =null,
@ObtainedMarks int =null,
@SelectedMonitoringStaffCode varchar(50) =null,
@SearchBoxText varchar(50) =null,
@StudCode varchar(50) =null,
@Attendance varchar(50) =null,
@TestAssgnIds varchar(50) =null

)
as
begin
	if(@Flag='Create_Test')
		begin
			   insert into tblTest values(@Test_Name,@CourseId,@TopicId,@TestCreationDate,@TotalMarks,@Duration,@SelectFile,0)
		end

	if(@Flag='ExamResult')
		begin
			   insert into tblResult values(@TestId,@BatchId,@StudCode,@ObtainedMarks,@Attendance)
		end

	if(@Flag='EditTest')
		begin
			update tblTest set TestName=@Test_Name,CourseId=@CourseId,TopicId=@TopicId,TestCreationDate=@TestCreationDate,TotalMarks=@TotalMarks,Duration=@Duration where TestId=@TestId
		end
		

		
	if(@Flag='EditTest')
		begin
			update tblTest set IsDelete=1 where TestId=@TestId	
		end

	if(@Flag='Get_Course')
		begin
			  select CourseId,CourseName from tblCourse 
		end

	if(@Flag='Get_Topic')
		begin
			  select T.TopicId,T.TopicName from tblTopic T join tblCourse TC on T.CourseId =TC.CourseId where T.CourseId=@SelectedCourseId
		end

	if(@Flag='GetDataToDatagrid')
		begin
		
			select TA.TestAssignId,T.TestId,TestName,TA.Date,C.CourseName ,b.BatchName,T.TotalMarks,TA.StratTime,T.Duration,L.LabName,S.StaffName,StatusName from tblTest T
				join tblTestAssign TA on T.TestId=TA.TestId 
				join tblCourse C on c.CourseId=T.CourseId
				join tblBatch B on Ta.BatchId=b.BatchId
				join tblLab L on TA.LabId=L.LabId
				join tblStaff S on S.StaffCode=B.StaffCode
				join tblStatus on tblStatus.StatusID=TA.StatusId

		end

		if(@Flag='GetDataToDatagridBySearchBox')
		begin
		
			select TA.TestAssignId,T.TestId,TestName,TA.Date,C.CourseName ,b.BatchName,T.TotalMarks,TA.StratTime,T.Duration,L.LabName,S.StaffName,StatusName from tblTest T
				join tblTestAssign TA on T.TestId=TA.TestId 
				join tblCourse C on c.CourseId=T.CourseId
				join tblBatch B on Ta.BatchId=b.BatchId
				join tblLab L on TA.LabId=L.LabId
				join tblStaff S on S.StaffCode=B.StaffCode
				join tblStatus on tblStatus.StatusID=TA.StatusId
			where 
			 t.TestName like '%'+ @SearchBoxText+'%'
			or CourseName like '%'+ @SearchBoxText+'%'
			or b.BatchName like '%'+ @SearchBoxText+'%'
			or t.TotalMarks like '%'+ @SearchBoxText+'%'
			or t.Duration like '%'+ @SearchBoxText+'%'
			or l.LabName like '%'+ @SearchBoxText+'%'
			or StatusName like '%'+ @SearchBoxText+'%'
			

		end

	if(@Flag='GetDataToDatagridByCourseName')
		begin
		select TA.TestAssignId,T.TestId,TestName,TA.Date,C.CourseName ,b.BatchName,T.TotalMarks,TA.StratTime,T.Duration,L.LabName,S.StaffName,StatusName
				from tblTest T
				join tblTestAssign TA on T.TestId=TA.TestId 
				join tblCourse C on c.CourseId=T.CourseId
				join tblBatch B on Ta.BatchId=b.BatchId
				join tblLab L on TA.LabId=L.LabId
				join tblStaff S on S.StaffCode=B.StaffCode
				join tblStatus on tblStatus.StatusID=TA.StatusId
			 where c.CourseId=@SelectedCourseId
			 
		end

		if(@Flag='GetDataToDatagridByBatchName')
		begin
		
			select TA.TestAssignId,T.TestId,TestName,TA.Date,C.CourseName ,b.BatchName,T.TotalMarks,TA.StratTime,T.Duration,L.LabName,S.StaffName,StatusName from tblTest T
				join tblTestAssign TA on T.TestId=TA.TestId 
				join tblCourse C on c.CourseId=T.CourseId
				join tblBatch B on Ta.BatchId=b.BatchId
				join tblLab L on TA.LabId=L.LabId
				join tblStaff S on S.StaffCode=B.StaffCode
				join tblStatus on tblStatus.StatusID=TA.StatusId
			 where b.BatchId=@SelectedBatchId
			 
		end

		if(@Flag='GetDataToDatagridByTestName')
		begin
		
			select TA.TestAssignId,T.TestId,TestName,TA.Date,C.CourseName ,b.BatchName,T.TotalMarks,TA.StratTime,T.Duration,L.LabName,S.StaffName,StatusName from tblTest T
				join tblTestAssign TA on T.TestId=TA.TestId 
				join tblCourse C on c.CourseId=T.CourseId
				join tblBatch B on Ta.BatchId=b.BatchId
				join tblLab L on TA.LabId=L.LabId
				join tblStaff S on S.StaffCode=B.StaffCode
				join tblStatus on tblStatus.StatusID=TA.StatusId
			 where T.TestId=@SelectedTestId
			 
		end

		if(@Flag='GetDataToDatagridByLabName')
		begin
		
			select TA.TestAssignId,T.TestId,TestName,TA.Date,C.CourseName ,b.BatchName,T.TotalMarks,TA.StratTime,T.Duration,L.LabName,S.StaffName,StatusName from tblTest T
				join tblTestAssign TA on T.TestId=TA.TestId 
				join tblCourse C on c.CourseId=T.CourseId
				join tblBatch B on Ta.BatchId=b.BatchId
				join tblLab L on TA.LabId=L.LabId
				join tblStaff S on S.StaffCode=B.StaffCode
				join tblStatus on tblStatus.StatusID=TA.StatusId
			 where l.LabId=@SelectedLabId
			 
		end
		
	

	if(@Flag='GetBatch')
		begin
			select BatchId,BatchName from tblBatch
		end

	if(@Flag='GetBatchByCourseId')
		begin
			select * from tblBatch b join tblCourse C on b.CourseId= c.CourseId where b.CourseId= @SelectedCourseId
		end

	if(@Flag='GetTestNameByCourseId')
		begin
			select * from tblTest b join tblCourse C on b.CourseId= c.CourseId where b.CourseId= @SelectedCourseId
		end


	if(@Flag='GetTestName')
		begin
			select T.TestId,TestName from tblTest T

			--select T.TestId,TestName from tblTest T join tblTestAssign TA on T.TestId= TA.TestId
			--join tblBatch B on TA.BatchId= B.BatchId where B.BatchId=3
			
		end

	--if(@Flag='GetBatch')
	--	begin
	--		select Topi from tblTest
	--	end

	if(@Flag='GetLab')
		begin
			select LabId,LabName from tblLab
		end

	if(@Flag='GetMonitoringStaff')
		begin
			select StaffCode,StaffName from tblStaff
		end

	if(@Flag='TestStatus')
		begin
			select * from tblStatus where StatusID between 15 and 16
		end

	if(@Flag='TestDetails')
		begin
			select TT.TestName,C.CourseId,c.CourseName ,TT.TotalMarks,tp.TopicId,tp.TopicName,TT.Duration,TT.SelectFile from tblTest TT 
			join tblTopic TP on TT.TopicId=TP.TopicId 
			join tblCourse C on C.CourseId=TP.CourseId 
			where TestId= @SelectedTestId
		end

	if(@Flag='Assign_Test')
		begin
			   insert into tblTestAssign values(@SelectedTestId,@AssignTestDate,@StartTime,@SelectedBatchId,@SelectedLabId,@SelectedStatusId,@SelectedMonitoringStaffCode)
		end

		if(@Flag='GetStudentsFromBatchByBatchId')
		begin
			select Split.value,S.StudFullName  from tblBatch B
			cross apply string_split(StudCode,',')as split INNER join tblStudent S on S.StudCode= split.value  where B.BatchId= @BatchId

			

			
		end

	if(@Flag='ExamDashboard')
		begin
			select b.BatchId,B.BatchName,CourseName,T.TestId, T.TestName ,T.Duration,T.TotalMarks,TA.Date from tblBatch b
			join tblCourse C on C.CourseId= b.CourseId
			join tblTestAssign  TA on TA.BatchId=B.BatchId
			join tblTest T on T.TestId=TA.TestId
		end

	if(@Flag='ExamResultByFilter')
		begin
			select b.BatchId,B.BatchName,CourseName,T.TestId, T.TestName ,T.Duration,T.TotalMarks,TA.Date from tblBatch b
			join tblCourse C on C.CourseId= b.CourseId
			join tblTestAssign  TA on TA.BatchId=B.BatchId
			join tblTest T on T.TestId=TA.TestId
			where 
			 B.BatchId = @BatchId 
			 or c.CourseId =@CourseId 
			 or T.TestId =  @TestId
			
		end

	if(@Flag='ExamResultByBatchId')
		begin
			select S.StudFullName,Attendance,t.TotalMarks, 
			R.Obtained_Marks
			from tblResult R
			join tblStudent S on S.StudCode=R.StudCode  
			join tblTest T on R.TestId=T.TestId
			join tblTopic TT on TT.TopicId=T.TopicId
			join tblCourse C on c.CourseId=s.CourseId
			join tblBatch B on R.BatchId=B.BatchId
			where b.batchId= @BatchId
		end

	if(@Flag='DeleteByAssignIds')
		begin
			delete tblTestAssign where TestAssignId in (@TestAssgnIds)
		end

		
	
end
GO
/****** Object:  StoredProcedure [dbo].[trainerprofile]    Script Date: 08-07-2023 11:44:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[trainerprofile]

(
@StaffCode nvarchar(50) =null,
@StaffName nvarchar(50) =null,
@StaffPassword nvarchar(50) =null,
@StaffRegistrationDate date =null,
@StaffContact nvarchar(16) =null,
@StaffWhatsappContact nvarchar(50)=null,
@StaffAddress nvarchar(MAX)=null,
@CityId int=null,
@AadharNo nvarchar(16) =null,
@PanNo nvarchar(10) =null,
@StaffEmail nvarchar(50) =null,
@StaffGender varchar(16) =null,
@StaffDOB date =null,
@SSC_Year int =null,
@SSC_Percentage decimal(5, 2) =null,
@SSCUniversity nvarchar(50)=null,
@SSCFile nvarchar(MAX)=null,
@HSCYear int=null,
@HSCPercentage decimal(5, 2) =null,
@HSC_University nvarchar(50) =null,
@HSCFile nvarchar(MAX) =null,
@QualificationId int =null,
@StaffPositionId int =null,
@CourseId int =null,
@Skill_Id int =null,
@Flag nvarchar(30)=null
)
as
GO
