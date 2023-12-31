/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON

GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentAuditTrails]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentAuditTrails](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentAuditTrails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentComments]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentComments](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentDeleteds]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentDeleteds](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentDeleteds] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentReminders]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentReminders](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[Frequency] [int] NOT NULL,
	[Message] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentReminders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Documents]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documents](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NULL,
	[PhysicalFolderId] [uniqueidentifier] NOT NULL,
	[Extension] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
	[Size] [bigint] NOT NULL,
	[ThumbnailPath] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Documents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentShareableLinks]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentShareableLinks](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[LinkExpiryTime] [datetime2](7) NULL,
	[Password] [nvarchar](max) NULL,
	[LinkCode] [nvarchar](max) NULL,
	[IsLinkExpired] [bit] NOT NULL,
	[IsAllowDownload] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentShareableLinks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentStarreds]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentStarreds](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DocumentStarreds] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTokens]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTokens](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[Token] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[DocumentVersionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DocumentTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentUserPermissions]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentUserPermissions](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentUserPermissions] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentVersions]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentVersions](
	[Id] [uniqueidentifier] NOT NULL,
	[DocumentId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Size] [bigint] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DocumentVersions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailSMTPSettings]    Script Date: 08/22/2021 15:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailSMTPSettings](
	[Id] [uniqueidentifier] NOT NULL,
	[Host] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[IsEnableSSL] [bit] NOT NULL,
	[Port] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmailSMTPSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplates]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplates](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Body] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmailTemplates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HierarchyFolders]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HierarchyFolders](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[SystemFolderName] [bigint] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Level] [int] NOT NULL,
	[PhysicalFolderId] [uniqueidentifier] NOT NULL,
	[IsShared] [bit] NOT NULL,
 CONSTRAINT [PK_HierarchyFolders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginAudits]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginAudits](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[LoginTime] [datetime2](7) NOT NULL,
	[RemoteIP] [nvarchar](50) NULL,
	[Status] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoginAudits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NLog]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NLog](
	[Id] [uniqueidentifier] NOT NULL,
	[MachineName] [nvarchar](max) NULL,
	[Logged] [datetime2](7) NOT NULL,
	[Level] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
	[Logger] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[Callsite] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
	[Source] [nvarchar](50) NULL,
 CONSTRAINT [PK_NLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhysicalFolders]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhysicalFolders](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NULL,
	[SystemFolderName] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Size] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_PhysicalFolders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhysicalFolderUsers]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhysicalFolderUsers](
	[FolderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PhysicalFolderUsers] PRIMARY KEY CLUSTERED 
(
	[FolderId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecentActivities]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecentActivities](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[FolderId] [uniqueidentifier] NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Action] [int] NOT NULL,
 CONSTRAINT [PK_RecentActivities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SharedDocumentUser]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SharedDocumentUser](
	[DocumentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SharedDocumentUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserNotifications]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserNotifications](
	[Id] [uniqueidentifier] NOT NULL,
	[Action] [int] NOT NULL,
	[DocumentId] [uniqueidentifier] NULL,
	[FolderId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ToUserId] [uniqueidentifier] NOT NULL,
	[FromUserId] [uniqueidentifier] NOT NULL,
	[IsRead] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[ErrorMsg] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserNotifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProfilePhoto] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsAdmin] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VirtualFolders]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VirtualFolders](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](450) NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Size] [nvarchar](max) NULL,
	[IsShared] [bit] NOT NULL,
	[PhysicalFolderId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VirtualFolders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VirtualFolderUsers]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VirtualFolderUsers](
	[FolderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[IsStarred] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NOT NULL,
	[DeletedDate] [datetime2](7) NULL,
	[DeletedBy] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VirtualFolderUsers] PRIMARY KEY CLUSTERED 
(
	[FolderId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210821060317_Initial', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210821060339_Initial_SQL_Data', N'5.0.4')
INSERT [dbo].[EmailTemplates] ([Id], [Name], [Subject], [Body], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'bf6bd6f0-75f2-45ee-9dd0-360776fe1bf2', N'Reset Pasword', N'Reset Password Request', N'<p>Hi ##UserName##,</p><p>We got the reset password request from the account please link on below Link to reset your password:</p><p>##link##</p><p><strong><span style="color:#0e8a16;">Thanks,</span></strong></p><p><strong><span style="color:#0e8a16;">Team ML Glob Tech</span></strong></p>', CAST(N'2021-04-15T12:15:37.9231606' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-04-15T12:15:37.9231653' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, NULL, 0)
INSERT [dbo].[EmailTemplates] ([Id], [Name], [Subject], [Body], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'634c2a67-e390-42bc-aaec-68fb0ada7b31', N'Welcome Email', N'Welcome to ML Glob Tech', N'<p>Hi ##UserName##,</p><p>Welcome to ML Glob Tech.</p><p>Please Fill free to contact.</p><p><strong><span style="color:#0e8a16;">Thanks</span></strong></p><p><strong><span style="color:#0e8a16;">Team ML Glob Tech</span></strong></p>', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2021-04-15T12:15:54.7274775' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[PhysicalFolders] ON 

INSERT [dbo].[PhysicalFolders] ([Id], [Name], [SystemFolderName], [ParentId], [Size], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'79073ec1-51e2-4772-95e6-9b06075a174b', N'All Files', 1, NULL, NULL, CAST(N'2021-06-01T00:00:00.0000000' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-06-01T00:00:00.0000000' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[PhysicalFolders] OFF
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [IsDeleted], [IsActive], [ProfilePhoto], [Provider], [Address], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1a5cf5b9-ead8-495c-8719-2d8be776f452', N'Norman', N'Russell', 0, 1, N'user-profile.jpg', NULL, NULL, CAST(N'2021-01-09T16:00:55.3200000' AS DateTime2), NULL, CAST(N'2021-04-09T22:13:04.3607628' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, NULL, 0, N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', N'employee@gmail.com', N'EMPLOYEE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKWs5TYpiKZTo10GsYT3ydUD92Xv9PzHyaE6IlWewhVAcBXpQ92H1g7zz9r2wNXTTw==', N'C6DDSWCQJIFOEWSOC2IEIDGXZ7YOHGAC', N'542d648b-582f-464b-9264-4efd2a4f8b1a', N'7684012345', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [IsDeleted], [IsActive], [ProfilePhoto], [Provider], [Address], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsAdmin], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4b352b37-332a-40c6-ab05-e38fcf109719', N'Frederic', N'Holland', 0, 1, N'user-profile.jpg', NULL, NULL, CAST(N'2021-01-09T16:00:55.3200000' AS DateTime2), NULL, CAST(N'2021-04-09T22:13:30.0911557' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, NULL, 1, N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEkx5K65gWhkIDvtcI3QVCom8fFRVWBIVlDWGqPujKdUWwSs2/0bB2fFzTaAq8z3pA==', N'EZNIRU4TFNZUE4VWL4CLRBHP7VMTICHA', N'56223fd5-d4f1-4811-a806-bf8bdff9bb5c', N'3360123459', 0, 0, NULL, 1, 0)
INSERT [dbo].[VirtualFolders] ([Id], [Name], [ParentId], [Size], [IsShared], [PhysicalFolderId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [DeletedDate], [DeletedBy], [IsDeleted]) VALUES (N'a4d06132-d76c-49b5-8472-2bf78ac4147e', N'All FIles', NULL, NULL, 0, N'79073ec1-51e2-4772-95e6-9b06075a174b', CAST(N'2021-06-01T00:00:00.0000000' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', CAST(N'2021-06-01T00:00:00.0000000' AS DateTime2), N'4b352b37-332a-40c6-ab05-e38fcf109719', NULL, NULL, 0)
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_Users_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_Users_UserId]
GO
ALTER TABLE [dbo].[DocumentAuditTrails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentAuditTrails_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentAuditTrails] CHECK CONSTRAINT [FK_DocumentAuditTrails_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentComments]  WITH CHECK ADD  CONSTRAINT [FK_DocumentComments_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentComments] CHECK CONSTRAINT [FK_DocumentComments_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentComments]  WITH CHECK ADD  CONSTRAINT [FK_DocumentComments_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentComments] CHECK CONSTRAINT [FK_DocumentComments_Users_CreatedBy]
GO
ALTER TABLE [dbo].[DocumentComments]  WITH CHECK ADD  CONSTRAINT [FK_DocumentComments_Users_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentComments] CHECK CONSTRAINT [FK_DocumentComments_Users_DeletedBy]
GO
ALTER TABLE [dbo].[DocumentComments]  WITH CHECK ADD  CONSTRAINT [FK_DocumentComments_Users_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentComments] CHECK CONSTRAINT [FK_DocumentComments_Users_ModifiedBy]
GO
ALTER TABLE [dbo].[DocumentDeleteds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeleteds_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentDeleteds] CHECK CONSTRAINT [FK_DocumentDeleteds_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentDeleteds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeleteds_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentDeleteds] CHECK CONSTRAINT [FK_DocumentDeleteds_Users_CreatedBy]
GO
ALTER TABLE [dbo].[DocumentDeleteds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeleteds_Users_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentDeleteds] CHECK CONSTRAINT [FK_DocumentDeleteds_Users_DeletedBy]
GO
ALTER TABLE [dbo].[DocumentDeleteds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeleteds_Users_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentDeleteds] CHECK CONSTRAINT [FK_DocumentDeleteds_Users_ModifiedBy]
GO
ALTER TABLE [dbo].[DocumentDeleteds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeleteds_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentDeleteds] CHECK CONSTRAINT [FK_DocumentDeleteds_Users_UserId]
GO
ALTER TABLE [dbo].[DocumentReminders]  WITH CHECK ADD  CONSTRAINT [FK_DocumentReminders_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentReminders] CHECK CONSTRAINT [FK_DocumentReminders_Documents_DocumentId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_PhysicalFolders_PhysicalFolderId] FOREIGN KEY([PhysicalFolderId])
REFERENCES [dbo].[PhysicalFolders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_PhysicalFolders_PhysicalFolderId]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Users_CreatedBy]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Users_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Users_DeletedBy]
GO
ALTER TABLE [dbo].[Documents]  WITH CHECK ADD  CONSTRAINT [FK_Documents_Users_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Documents] CHECK CONSTRAINT [FK_Documents_Users_ModifiedBy]
GO
ALTER TABLE [dbo].[DocumentShareableLinks]  WITH CHECK ADD  CONSTRAINT [FK_DocumentShareableLinks_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentShareableLinks] CHECK CONSTRAINT [FK_DocumentShareableLinks_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentStarreds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentStarreds_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentStarreds] CHECK CONSTRAINT [FK_DocumentStarreds_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentStarreds]  WITH CHECK ADD  CONSTRAINT [FK_DocumentStarreds_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentStarreds] CHECK CONSTRAINT [FK_DocumentStarreds_Users_UserId]
GO
ALTER TABLE [dbo].[DocumentUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentUserPermissions_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentUserPermissions] CHECK CONSTRAINT [FK_DocumentUserPermissions_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentUserPermissions_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentUserPermissions] CHECK CONSTRAINT [FK_DocumentUserPermissions_Users_UserId]
GO
ALTER TABLE [dbo].[DocumentVersions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentVersions_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentVersions] CHECK CONSTRAINT [FK_DocumentVersions_Documents_DocumentId]
GO
ALTER TABLE [dbo].[DocumentVersions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentVersions_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentVersions] CHECK CONSTRAINT [FK_DocumentVersions_Users_CreatedBy]
GO
ALTER TABLE [dbo].[DocumentVersions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentVersions_Users_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentVersions] CHECK CONSTRAINT [FK_DocumentVersions_Users_DeletedBy]
GO
ALTER TABLE [dbo].[DocumentVersions]  WITH CHECK ADD  CONSTRAINT [FK_DocumentVersions_Users_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[DocumentVersions] CHECK CONSTRAINT [FK_DocumentVersions_Users_ModifiedBy]
GO
ALTER TABLE [dbo].[EmailSMTPSettings]  WITH CHECK ADD  CONSTRAINT [FK_EmailSMTPSettings_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[EmailSMTPSettings] CHECK CONSTRAINT [FK_EmailSMTPSettings_Users_CreatedBy]
GO
ALTER TABLE [dbo].[EmailSMTPSettings]  WITH CHECK ADD  CONSTRAINT [FK_EmailSMTPSettings_Users_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[EmailSMTPSettings] CHECK CONSTRAINT [FK_EmailSMTPSettings_Users_DeletedBy]
GO
ALTER TABLE [dbo].[EmailSMTPSettings]  WITH CHECK ADD  CONSTRAINT [FK_EmailSMTPSettings_Users_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[EmailSMTPSettings] CHECK CONSTRAINT [FK_EmailSMTPSettings_Users_ModifiedBy]
GO
ALTER TABLE [dbo].[PhysicalFolders]  WITH CHECK ADD  CONSTRAINT [FK_PhysicalFolders_PhysicalFolders_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[PhysicalFolders] ([Id])
GO
ALTER TABLE [dbo].[PhysicalFolders] CHECK CONSTRAINT [FK_PhysicalFolders_PhysicalFolders_ParentId]
GO
ALTER TABLE [dbo].[PhysicalFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_PhysicalFolderUsers_PhysicalFolders_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[PhysicalFolders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhysicalFolderUsers] CHECK CONSTRAINT [FK_PhysicalFolderUsers_PhysicalFolders_FolderId]
GO
ALTER TABLE [dbo].[PhysicalFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_PhysicalFolderUsers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhysicalFolderUsers] CHECK CONSTRAINT [FK_PhysicalFolderUsers_Users_UserId]
GO
ALTER TABLE [dbo].[RecentActivities]  WITH CHECK ADD  CONSTRAINT [FK_RecentActivities_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecentActivities] CHECK CONSTRAINT [FK_RecentActivities_Documents_DocumentId]
GO
ALTER TABLE [dbo].[RecentActivities]  WITH CHECK ADD  CONSTRAINT [FK_RecentActivities_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecentActivities] CHECK CONSTRAINT [FK_RecentActivities_Users_UserId]
GO
ALTER TABLE [dbo].[RecentActivities]  WITH CHECK ADD  CONSTRAINT [FK_RecentActivities_VirtualFolders_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[VirtualFolders] ([Id])
GO
ALTER TABLE [dbo].[RecentActivities] CHECK CONSTRAINT [FK_RecentActivities_VirtualFolders_FolderId]
GO
ALTER TABLE [dbo].[SharedDocumentUser]  WITH CHECK ADD  CONSTRAINT [FK_SharedDocumentUser_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SharedDocumentUser] CHECK CONSTRAINT [FK_SharedDocumentUser_Documents_DocumentId]
GO
ALTER TABLE [dbo].[SharedDocumentUser]  WITH CHECK ADD  CONSTRAINT [FK_SharedDocumentUser_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SharedDocumentUser] CHECK CONSTRAINT [FK_SharedDocumentUser_Users_UserId]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_Documents_DocumentId] FOREIGN KEY([DocumentId])
REFERENCES [dbo].[Documents] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_Documents_DocumentId]
GO
ALTER TABLE [dbo].[UserNotifications]  WITH CHECK ADD  CONSTRAINT [FK_UserNotifications_VirtualFolders_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[VirtualFolders] ([Id])
GO
ALTER TABLE [dbo].[UserNotifications] CHECK CONSTRAINT [FK_UserNotifications_VirtualFolders_FolderId]
GO
ALTER TABLE [dbo].[VirtualFolders]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolders_PhysicalFolders_PhysicalFolderId] FOREIGN KEY([PhysicalFolderId])
REFERENCES [dbo].[PhysicalFolders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VirtualFolders] CHECK CONSTRAINT [FK_VirtualFolders_PhysicalFolders_PhysicalFolderId]
GO
ALTER TABLE [dbo].[VirtualFolders]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolders_VirtualFolders_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[VirtualFolders] ([Id])
GO
ALTER TABLE [dbo].[VirtualFolders] CHECK CONSTRAINT [FK_VirtualFolders_VirtualFolders_ParentId]
GO
ALTER TABLE [dbo].[VirtualFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolderUsers_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[VirtualFolderUsers] CHECK CONSTRAINT [FK_VirtualFolderUsers_Users_CreatedBy]
GO
ALTER TABLE [dbo].[VirtualFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolderUsers_Users_DeletedBy] FOREIGN KEY([DeletedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[VirtualFolderUsers] CHECK CONSTRAINT [FK_VirtualFolderUsers_Users_DeletedBy]
GO
ALTER TABLE [dbo].[VirtualFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolderUsers_Users_ModifiedBy] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[VirtualFolderUsers] CHECK CONSTRAINT [FK_VirtualFolderUsers_Users_ModifiedBy]
GO
ALTER TABLE [dbo].[VirtualFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolderUsers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VirtualFolderUsers] CHECK CONSTRAINT [FK_VirtualFolderUsers_Users_UserId]
GO
ALTER TABLE [dbo].[VirtualFolderUsers]  WITH CHECK ADD  CONSTRAINT [FK_VirtualFolderUsers_VirtualFolders_FolderId] FOREIGN KEY([FolderId])
REFERENCES [dbo].[VirtualFolders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VirtualFolderUsers] CHECK CONSTRAINT [FK_VirtualFolderUsers_VirtualFolders_FolderId]
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsFolderCreate',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsFileUpload',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsDeleteFileFolder',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsSharedFileFolder',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsSendEmail',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsRenameFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsDownloadFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsCopyFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsCopyFolder',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsMoveFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'1A5CF5B9-EAD8-495C-8719-2D8BE776F452', 'IsSharedLink',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsFolderCreate',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsFileUpload',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsDeleteFileFolder',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsSharedFileFolder',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsSendEmail',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsRenameFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsDownloadFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsCopyFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsCopyFolder',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsMoveFile',1)
GO
INSERT [dbo].[AspNetUserClaims] ( [UserId], [ClaimType], [ClaimValue]) VALUES (N'4B352B37-332A-40C6-AB05-E38FCF109719', 'IsSharedLink',1)
GO

/****** Object:  StoredProcedure [dbo].[getPhysicalFolderChildsHierarchyById]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPhysicalFolderChildsHierarchyById](
@Id uniqueidentifier) AS
BEGIN
DECLARE @IsShared BIT = 0;

WITH MyCTE
AS ( SELECT  Id,
            Name,
			SystemFolderName,
            ParentId,
            newID() as PhysicalFolderId,
			0 AS Level,
			@IsShared as IsShared
FROM PhysicalFolders
WHERE ParentId = @Id
UNION ALL
SELECT  
		f.Id,
		f.Name,
		f.SystemFolderName,
		f.ParentId, 
		newID() as PhysicalFolderId, 
		Level + 1, 
		@IsShared as IsShared
FROM PhysicalFolders f
INNER JOIN MyCTE ON f.ParentId = MyCTE.Id)
SELECT *
FROM MyCTE

END
GO
/****** Object:  StoredProcedure [dbo].[getPhysicalFolderParentsHierarchyById]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPhysicalFolderParentsHierarchyById](
@Id uniqueidentifier) AS
BEGIN
DECLARE @IsShared BIT = 0;

WITH MyCTE
AS ( SELECT  Id,
            Name,
			SystemFolderName,
            ParentId,
            newID() as PhysicalFolderId,
			0 AS Level,
			@IsShared as IsShared
FROM PhysicalFolders
WHERE Id = @Id
UNION ALL
SELECT  
			f.Id,
			f.Name,
			f.SystemFolderName,
			f.ParentId,
			newID() as PhysicalFolderId, 
			Level + 1,
			@IsShared as IsShared
FROM PhysicalFolders f
INNER JOIN MyCTE ON f.Id = MyCTE.ParentId)
SELECT *
FROM MyCTE

END
GO
/****** Object:  StoredProcedure [dbo].[getSharedChildsHierarchyById]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getSharedChildsHierarchyById](
@Id uniqueidentifier) AS
BEGIN

WITH MyCTE
AS ( SELECT  Id,
            Name,
			CAST(0 AS bigint) as SystemFolderName,
            ParentId,
			IsShared,
			PhysicalFolderId,
			0 AS Level
			
FROM VirtualFolders
WHERE ParentId = @Id
UNION ALL
SELECT  
f.Id,
f.Name,
CAST(0 AS bigint) as SystemFolderName,
f.ParentId, 
f.IsShared,
f.PhysicalFolderId,
Level + 1
FROM VirtualFolders f
INNER JOIN MyCTE ON f.ParentId = MyCTE.Id)
SELECT TOP 1 *
FROM MyCTE WHERE IsShared=1

END
GO
/****** Object:  StoredProcedure [dbo].[getSharedParentsHierarchyById]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getSharedParentsHierarchyById](
@Id uniqueidentifier) AS
BEGIN

WITH MyCTE
AS ( SELECT  Id,
            Name,
			CAST(0 AS bigint) as SystemFolderName,
            ParentId,
            PhysicalFolderId,
			0 AS Level,
			IsShared
FROM VirtualFolders
WHERE Id = @Id
UNION ALL
SELECT  
f.Id,
f.Name,
CAST(0 AS bigint) as SystemFolderName,
f.ParentId, 
f.PhysicalFolderId, 
Level + 1,
f.IsShared
FROM VirtualFolders f
INNER JOIN MyCTE ON f.Id = MyCTE.ParentId)
SELECT TOP 1 *
FROM MyCTE WHERE Id!=@Id AND IsShared=1

END
GO
/****** Object:  StoredProcedure [dbo].[getVirtualFolderChildsHierarchyById]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getVirtualFolderChildsHierarchyById](
@Id uniqueidentifier) AS
BEGIN

WITH MyCTE
AS ( SELECT  Id,
            Name,
			CAST(0 AS bigint) as SystemFolderName,
            ParentId,
            PhysicalFolderId,
			0 AS Level,
			IsShared
FROM VirtualFolders
WHERE ParentId = @Id
UNION ALL
SELECT  
			f.Id,
			f.Name,
			CAST(0 AS bigint) as SystemFolderName,
			f.ParentId, 
			f.PhysicalFolderId, 
			Level + 1,
			f.IsShared
FROM VirtualFolders f
INNER JOIN MyCTE ON f.ParentId = MyCTE.Id)
SELECT *
FROM MyCTE

END
GO
/****** Object:  StoredProcedure [dbo].[getVirtualFolderParentsHierarchyById]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getVirtualFolderParentsHierarchyById](
@Id uniqueidentifier) AS
BEGIN

WITH MyCTE
AS ( SELECT  Id,
            Name,
			CAST(0 AS bigint) as SystemFolderName,
            ParentId,
            PhysicalFolderId,
			0 AS Level,
			IsShared
FROM VirtualFolders
WHERE Id = @Id
UNION ALL
SELECT  
			f.Id,
			f.Name,
			CAST(0 AS bigint) as SystemFolderName,
			f.ParentId, 
			f.PhysicalFolderId, 
			Level + 1,
			f.IsShared
FROM VirtualFolders f
INNER JOIN MyCTE ON f.Id = MyCTE.ParentId)
SELECT *
FROM MyCTE

END
GO
/****** Object:  StoredProcedure [dbo].[NLog_AddEntry_p]    Script Date: 08/22/2021 15:38:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NLog_AddEntry_p] (
  @machineName nvarchar(200),
  @logged datetime,
  @level varchar(5),
  @message nvarchar(max),
  @logger nvarchar(300),
  @properties nvarchar(max),
  @callsite nvarchar(300),
  @exception nvarchar(max)
) AS
BEGIN
  INSERT INTO [dbo].[NLog] (
	[Id],
    [MachineName],
    [Logged],
    [Level],
    [Message],
    [Logger],
    [Properties],
    [Callsite],
    [Exception],
	[Source]
  ) VALUES (
    newid(),
    @machineName,
    @logged,
    @level,
    @message,
    @logger,
    @properties,
    @callsite,
    @exception,
	'.Net Core'
  )
  END
GO
