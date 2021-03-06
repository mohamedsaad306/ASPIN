USE [LinkedInDB]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 1/12/2017 7:15:44 PM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Certification]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_OrganizationId] [int] NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Url] [nvarchar](100) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Certification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Certification_Authority]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certification_Authority](
	[Fk_CertificationId] [int] NOT NULL,
	[Fk_OrganizationId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Certification_Authority] PRIMARY KEY CLUSTERED 
(
	[Fk_CertificationId] ASC,
	[Fk_OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Degree]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EducationalOrg]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationalOrg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Address] [nvarchar](500) NULL,
	[Country] [nvarchar](50) NULL,
	[TelNumber] [nvarchar](20) NULL,
	[Website] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EducationalOrg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[NumMembers] [int] NULL,
	[Country] [nvarchar](50) NULL,
	[CreatedAt] [datetime] NULL,
	[Image] [nvarchar](100) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group_Post]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Post](
	[Fk_GroupId] [int] NOT NULL,
	[Fk_PostId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Group_Post] PRIMARY KEY CLUSTERED 
(
	[Fk_GroupId] ASC,
	[Fk_PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group_UserAdmin]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_UserAdmin](
	[Fk_Admin_UserId] [uniqueidentifier] NOT NULL,
	[Fk_GroupId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Group_UserAdmin] PRIMARY KEY CLUSTERED 
(
	[Fk_Admin_UserId] ASC,
	[Fk_GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Group_UserMember]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_UserMember](
	[Fk_Member_UserId] [uniqueidentifier] NOT NULL,
	[Fk_GroupId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Group_UserMember] PRIMARY KEY CLUSTERED 
(
	[Fk_Member_UserId] ASC,
	[Fk_GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_OrganizationId] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CeatedAt] [datetime] NULL,
	[Country] [nvarchar](50) NULL,
	[Industry] [nvarchar](max) NULL,
	[EmploymentType] [nvarchar](50) NULL,
	[Experience] [nvarchar](max) NULL,
	[Vacancies] [int] NULL,
	[NoApplicants] [int] NULL,
	[NoViews] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Language]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LanguageProficiency]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LanguageProficiency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_LanguageProficiency] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Message]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](max) NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_MsgThreadId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MessageThread]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageThread](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_CreateBy_UserId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MessageThread] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MsgRead_State]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsgRead_State](
	[Fk_MessageId] [int] NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_MsgThreadId] [int] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MsgRead_State] PRIMARY KEY CLUSTERED 
(
	[Fk_MessageId] ASC,
	[Fk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MsgThread_User]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsgThread_User](
	[Fk_MsgThreadId] [int] NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MsgThread_User] PRIMARY KEY CLUSTERED 
(
	[Fk_MsgThreadId] ASC,
	[Fk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organization]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](500) NULL,
	[Country] [nvarchar](50) NULL,
	[FoundationDate] [datetime] NULL,
	[TelNumber] [nvarchar](20) NULL,
	[WebSite] [nvarchar](max) NULL,
	[Industry] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[Image] [nvarchar](100) NULL,
	[Fk_PrivacyId] [int] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[NumLike] [int] NULL,
	[NumShare] [int] NULL,
	[NumComment] [int] NULL,
	[IsInGroup] [bit] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Comment]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Comment](
	[Fk_PostId] [int] NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Post_Comment] PRIMARY KEY CLUSTERED 
(
	[Fk_PostId] ASC,
	[Fk_UserId] ASC,
	[CreationDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Like]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Like](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_PostId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Post_Like] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post_Share]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post_Share](
	[Fk_PostId] [int] NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Text] [nvarchar](max) NOT NULL,
	[Fk_PrivacyId] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Post_Share] PRIMARY KEY CLUSTERED 
(
	[Fk_PostId] ASC,
	[Fk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Privacy]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Privacy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Privacy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Url] [nvarchar](1000) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project_UserTeam]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_UserTeam](
	[Fk_ProjectId] [int] NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Project_UserTeam] PRIMARY KEY CLUSTERED 
(
	[Fk_ProjectId] ASC,
	[Fk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Connection]    Script Date: 1/12/2017 7:15:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Connection](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_Connection_UserId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Connection] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_Connection_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Education]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Education](
	[Fk_EducationalOrgId] [int] NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Grade] [nvarchar](50) NULL,
	[Fk_DegreeId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[FieldOfStudy] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Education] PRIMARY KEY CLUSTERED 
(
	[Fk_EducationalOrgId] ASC,
	[Fk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Experience]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Experience](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_OrganizationId] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Experience] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Follow]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Follow](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_Follower_UserId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Follow] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_Follower_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_JobApply]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_JobApply](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_JobId] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_JobApply] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Language]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Language](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_LangId] [int] NOT NULL,
	[Fk_LangProficiencyId] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Language] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_LangId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Recommendation]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Recommendation](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_User_ExperienceId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[RelationToUser] [nvarchar](100) NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Recommendation] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_User_ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Skill]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Skill](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_Skill_Id] [int] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_User_Skill] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_Skill_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserDetail]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetail](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[JobTitle] [nvarchar](256) NULL,
	[Summary] [nvarchar](max) NULL,
	[ProfileImage] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](500) NULL,
	[Country] [nvarchar](50) NULL,
	[NoConnections] [int] NULL,
	[ProfileViews] [int] NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserDetail] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserProfile_View]    Script Date: 1/12/2017 7:15:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile_View](
	[Fk_UserId] [uniqueidentifier] NOT NULL,
	[Fk_Visitor_UserId] [uniqueidentifier] NOT NULL,
	[CreationDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserProfile_View] PRIMARY KEY CLUSTERED 
(
	[Fk_UserId] ASC,
	[Fk_Visitor_UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Certification]  WITH CHECK ADD  CONSTRAINT [FK_Certification_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Certification] CHECK CONSTRAINT [FK_Certification_aspnet_Users]
GO
ALTER TABLE [dbo].[Certification]  WITH CHECK ADD  CONSTRAINT [FK_Certification_Organization] FOREIGN KEY([Fk_OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[Certification] CHECK CONSTRAINT [FK_Certification_Organization]
GO
ALTER TABLE [dbo].[Certification_Authority]  WITH CHECK ADD  CONSTRAINT [FK_Certification_Authority_Certification] FOREIGN KEY([Fk_CertificationId])
REFERENCES [dbo].[Certification] ([Id])
GO
ALTER TABLE [dbo].[Certification_Authority] CHECK CONSTRAINT [FK_Certification_Authority_Certification]
GO
ALTER TABLE [dbo].[Certification_Authority]  WITH CHECK ADD  CONSTRAINT [FK_Certification_Authority_Organization] FOREIGN KEY([Fk_OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[Certification_Authority] CHECK CONSTRAINT [FK_Certification_Authority_Organization]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_aspnet_Users]
GO
ALTER TABLE [dbo].[Group_Post]  WITH CHECK ADD  CONSTRAINT [FK_Group_Post_Group] FOREIGN KEY([Fk_GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Group_Post] CHECK CONSTRAINT [FK_Group_Post_Group]
GO
ALTER TABLE [dbo].[Group_Post]  WITH CHECK ADD  CONSTRAINT [FK_Group_Post_Post] FOREIGN KEY([Fk_PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Group_Post] CHECK CONSTRAINT [FK_Group_Post_Post]
GO
ALTER TABLE [dbo].[Group_UserAdmin]  WITH CHECK ADD  CONSTRAINT [FK_Group_UserAdmin_aspnet_Users] FOREIGN KEY([Fk_Admin_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Group_UserAdmin] CHECK CONSTRAINT [FK_Group_UserAdmin_aspnet_Users]
GO
ALTER TABLE [dbo].[Group_UserAdmin]  WITH CHECK ADD  CONSTRAINT [FK_Group_UserAdmin_Group] FOREIGN KEY([Fk_GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Group_UserAdmin] CHECK CONSTRAINT [FK_Group_UserAdmin_Group]
GO
ALTER TABLE [dbo].[Group_UserMember]  WITH CHECK ADD  CONSTRAINT [FK_Group_UserMember_aspnet_Users] FOREIGN KEY([Fk_Member_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Group_UserMember] CHECK CONSTRAINT [FK_Group_UserMember_aspnet_Users]
GO
ALTER TABLE [dbo].[Group_UserMember]  WITH CHECK ADD  CONSTRAINT [FK_Group_UserMember_Group] FOREIGN KEY([Fk_GroupId])
REFERENCES [dbo].[Group] ([Id])
GO
ALTER TABLE [dbo].[Group_UserMember] CHECK CONSTRAINT [FK_Group_UserMember_Group]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_Job_Organization] FOREIGN KEY([Fk_OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_Job_Organization]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_aspnet_Users]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_MessageThread] FOREIGN KEY([Fk_MsgThreadId])
REFERENCES [dbo].[MessageThread] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_MessageThread]
GO
ALTER TABLE [dbo].[MessageThread]  WITH CHECK ADD  CONSTRAINT [FK_MessageThread_aspnet_Users] FOREIGN KEY([Fk_CreateBy_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[MessageThread] CHECK CONSTRAINT [FK_MessageThread_aspnet_Users]
GO
ALTER TABLE [dbo].[MsgRead_State]  WITH CHECK ADD  CONSTRAINT [FK_MsgRead_State_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[MsgRead_State] CHECK CONSTRAINT [FK_MsgRead_State_aspnet_Users]
GO
ALTER TABLE [dbo].[MsgRead_State]  WITH CHECK ADD  CONSTRAINT [FK_MsgRead_State_Message] FOREIGN KEY([Fk_MessageId])
REFERENCES [dbo].[Message] ([Id])
GO
ALTER TABLE [dbo].[MsgRead_State] CHECK CONSTRAINT [FK_MsgRead_State_Message]
GO
ALTER TABLE [dbo].[MsgRead_State]  WITH CHECK ADD  CONSTRAINT [FK_MsgRead_State_MessageThread] FOREIGN KEY([Fk_MsgThreadId])
REFERENCES [dbo].[MessageThread] ([Id])
GO
ALTER TABLE [dbo].[MsgRead_State] CHECK CONSTRAINT [FK_MsgRead_State_MessageThread]
GO
ALTER TABLE [dbo].[MsgThread_User]  WITH CHECK ADD  CONSTRAINT [FK_MsgThread_User_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[MsgThread_User] CHECK CONSTRAINT [FK_MsgThread_User_aspnet_Users]
GO
ALTER TABLE [dbo].[MsgThread_User]  WITH CHECK ADD  CONSTRAINT [FK_MsgThread_User_MessageThread] FOREIGN KEY([Fk_MsgThreadId])
REFERENCES [dbo].[MessageThread] ([Id])
GO
ALTER TABLE [dbo].[MsgThread_User] CHECK CONSTRAINT [FK_MsgThread_User_MessageThread]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_aspnet_Users]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Privacy] FOREIGN KEY([Fk_PrivacyId])
REFERENCES [dbo].[Privacy] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Privacy]
GO
ALTER TABLE [dbo].[Post_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comment_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Post_Comment] CHECK CONSTRAINT [FK_Post_Comment_aspnet_Users]
GO
ALTER TABLE [dbo].[Post_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comment_Post] FOREIGN KEY([Fk_PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Post_Comment] CHECK CONSTRAINT [FK_Post_Comment_Post]
GO
ALTER TABLE [dbo].[Post_Like]  WITH CHECK ADD  CONSTRAINT [FK_Post_Like_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Post_Like] CHECK CONSTRAINT [FK_Post_Like_aspnet_Users]
GO
ALTER TABLE [dbo].[Post_Like]  WITH CHECK ADD  CONSTRAINT [FK_Post_Like_Post] FOREIGN KEY([Fk_PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Post_Like] CHECK CONSTRAINT [FK_Post_Like_Post]
GO
ALTER TABLE [dbo].[Post_Share]  WITH CHECK ADD  CONSTRAINT [FK_Post_Share_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Post_Share] CHECK CONSTRAINT [FK_Post_Share_aspnet_Users]
GO
ALTER TABLE [dbo].[Post_Share]  WITH CHECK ADD  CONSTRAINT [FK_Post_Share_Post] FOREIGN KEY([Fk_PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Post_Share] CHECK CONSTRAINT [FK_Post_Share_Post]
GO
ALTER TABLE [dbo].[Post_Share]  WITH CHECK ADD  CONSTRAINT [FK_Post_Share_Privacy] FOREIGN KEY([Fk_PrivacyId])
REFERENCES [dbo].[Privacy] ([Id])
GO
ALTER TABLE [dbo].[Post_Share] CHECK CONSTRAINT [FK_Post_Share_Privacy]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_aspnet_Users]
GO
ALTER TABLE [dbo].[Project_UserTeam]  WITH CHECK ADD  CONSTRAINT [FK_Project_UserTeam_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Project_UserTeam] CHECK CONSTRAINT [FK_Project_UserTeam_aspnet_Users]
GO
ALTER TABLE [dbo].[Project_UserTeam]  WITH CHECK ADD  CONSTRAINT [FK_Project_UserTeam_Project] FOREIGN KEY([Fk_ProjectId])
REFERENCES [dbo].[Project] ([Id])
GO
ALTER TABLE [dbo].[Project_UserTeam] CHECK CONSTRAINT [FK_Project_UserTeam_Project]
GO
ALTER TABLE [dbo].[User_Connection]  WITH CHECK ADD  CONSTRAINT [FK_User_Connection_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Connection] CHECK CONSTRAINT [FK_User_Connection_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Connection]  WITH CHECK ADD  CONSTRAINT [FK_User_Connection_aspnet_Users1] FOREIGN KEY([Fk_Connection_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Connection] CHECK CONSTRAINT [FK_User_Connection_aspnet_Users1]
GO
ALTER TABLE [dbo].[User_Education]  WITH CHECK ADD  CONSTRAINT [FK_User_Education_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Education] CHECK CONSTRAINT [FK_User_Education_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Education]  WITH CHECK ADD  CONSTRAINT [FK_User_Education_EducationalOrg] FOREIGN KEY([Fk_EducationalOrgId])
REFERENCES [dbo].[EducationalOrg] ([Id])
GO
ALTER TABLE [dbo].[User_Education] CHECK CONSTRAINT [FK_User_Education_EducationalOrg]
GO
ALTER TABLE [dbo].[User_Experience]  WITH CHECK ADD  CONSTRAINT [FK_User_Experience_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Experience] CHECK CONSTRAINT [FK_User_Experience_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Experience]  WITH CHECK ADD  CONSTRAINT [FK_User_Experience_Organization] FOREIGN KEY([Fk_OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[User_Experience] CHECK CONSTRAINT [FK_User_Experience_Organization]
GO
ALTER TABLE [dbo].[User_Follow]  WITH CHECK ADD  CONSTRAINT [FK_User_Follow_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Follow] CHECK CONSTRAINT [FK_User_Follow_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Follow]  WITH CHECK ADD  CONSTRAINT [FK_User_Follow_aspnet_Users1] FOREIGN KEY([Fk_Follower_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Follow] CHECK CONSTRAINT [FK_User_Follow_aspnet_Users1]
GO
ALTER TABLE [dbo].[User_JobApply]  WITH CHECK ADD  CONSTRAINT [FK_User_JobApply_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_JobApply] CHECK CONSTRAINT [FK_User_JobApply_aspnet_Users]
GO
ALTER TABLE [dbo].[User_JobApply]  WITH CHECK ADD  CONSTRAINT [FK_User_JobApply_Job] FOREIGN KEY([Fk_JobId])
REFERENCES [dbo].[Job] ([Id])
GO
ALTER TABLE [dbo].[User_JobApply] CHECK CONSTRAINT [FK_User_JobApply_Job]
GO
ALTER TABLE [dbo].[User_Language]  WITH CHECK ADD  CONSTRAINT [FK_User_Language_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Language] CHECK CONSTRAINT [FK_User_Language_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Language]  WITH CHECK ADD  CONSTRAINT [FK_User_Language_Language] FOREIGN KEY([Fk_LangId])
REFERENCES [dbo].[Language] ([Id])
GO
ALTER TABLE [dbo].[User_Language] CHECK CONSTRAINT [FK_User_Language_Language]
GO
ALTER TABLE [dbo].[User_Language]  WITH CHECK ADD  CONSTRAINT [FK_User_Language_LanguageProficiency] FOREIGN KEY([Fk_LangProficiencyId])
REFERENCES [dbo].[LanguageProficiency] ([Id])
GO
ALTER TABLE [dbo].[User_Language] CHECK CONSTRAINT [FK_User_Language_LanguageProficiency]
GO
ALTER TABLE [dbo].[User_Recommendation]  WITH CHECK ADD  CONSTRAINT [FK_User_Recommendation_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Recommendation] CHECK CONSTRAINT [FK_User_Recommendation_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Recommendation]  WITH CHECK ADD  CONSTRAINT [FK_User_Recommendation_User_Experience] FOREIGN KEY([Fk_User_ExperienceId])
REFERENCES [dbo].[User_Experience] ([Id])
GO
ALTER TABLE [dbo].[User_Recommendation] CHECK CONSTRAINT [FK_User_Recommendation_User_Experience]
GO
ALTER TABLE [dbo].[User_Skill]  WITH CHECK ADD  CONSTRAINT [FK_User_Skill_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[User_Skill] CHECK CONSTRAINT [FK_User_Skill_aspnet_Users]
GO
ALTER TABLE [dbo].[User_Skill]  WITH CHECK ADD  CONSTRAINT [FK_User_Skill_Skill] FOREIGN KEY([Fk_Skill_Id])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[User_Skill] CHECK CONSTRAINT [FK_User_Skill_Skill]
GO
ALTER TABLE [dbo].[UserDetail]  WITH CHECK ADD  CONSTRAINT [FK_UserDetail_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserDetail] CHECK CONSTRAINT [FK_UserDetail_aspnet_Users]
GO
ALTER TABLE [dbo].[UserProfile_View]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_View_aspnet_Users] FOREIGN KEY([Fk_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserProfile_View] CHECK CONSTRAINT [FK_UserProfile_View_aspnet_Users]
GO
ALTER TABLE [dbo].[UserProfile_View]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_View_aspnet_Users1] FOREIGN KEY([Fk_Visitor_UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserProfile_View] CHECK CONSTRAINT [FK_UserProfile_View_aspnet_Users1]
GO
