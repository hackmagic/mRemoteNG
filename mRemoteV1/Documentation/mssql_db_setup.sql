if exists (select * from dbo.sysobjects 
    where id = object_id(N'[dbo].[tblCons]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblCons]
GO

if exists (select * from dbo.sysobjects 
    where id = object_id(N'[dbo].[tblRoot]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblRoot]
GO

if exists (select * from dbo.sysobjects 
    where id = object_id(N'[dbo].[tblUpdate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tblUpdate]
GO

CREATE TABLE [dbo].[tblCons] (
	ID int NOT NULL IDENTITY(1,1),
	ConstantID varchar(128),
	PositionID int NOT NULL,
	ParentID varchar(128),
	LastChange datetime NOT NULL,
	Name varchar(128) NOT NULL,
	[Type] varchar(32) NOT NULL,
	Expanded bit NOT NULL,
	Description varchar(1024),
	Icon varchar(128) NOT NULL,
	Panel varchar(128) NOT NULL,
	Username varchar(512),
	DomainName varchar(512),
	Password varchar(1024),
	Hostname varchar(512),
	Protocol varchar(32) NOT NULL,
	PuttySession varchar(128),
	Port int NOT NULL,
	ConnectToConsole bit NOT NULL,
	UseCredSsp bit NOT NULL,
	RenderingEngine varchar(10),
	ICAEncryptionStrength varchar(32) NOT NULL,
	RDPAuthenticationLevel varchar(32) NOT NULL,
	RDPMinutesToIdleTimeout int NOT NULL,
	RDPAlertIdleTimeout bit NOT NULL,
	Colors varchar(32) NOT NULL,
	Resolution varchar(32) NOT NULL,
	DisplayWallpaper bit NOT NULL,
	DisplayThemes bit NOT NULL,
	EnableFontSmoothing bit NOT NULL,
	EnableDesktopComposition bit NOT NULL,
	CacheBitmaps bit NOT NULL,
	RedirectDiskDrives bit NOT NULL,
	RedirectPorts bit NOT NULL,
	RedirectPrinters bit NOT NULL,
	RedirectSmartCards bit NOT NULL,
	RedirectSound varchar(64) NOT NULL,
	SoundQuality varchar(20) NOT NULL,
	RedirectAudioCapture bit NOT NULL,
	RedirectKeys bit NOT NULL,
	Connected bit NOT NULL,
	PreExtApp varchar(256),
	PostExtApp varchar(256),
	MacAddress varchar(32),
	UserField varchar(256),
	ExtApp varchar(256),
	VNCCompression varchar(10),
	VNCEncoding varchar(20),
	VNCAuthMode varchar(10),
	VNCProxyType varchar(20),
	VNCProxyIP varchar(128),
	VNCProxyPort int,
	VNCProxyUsername varchar(512),
	VNCProxyPassword varchar(1024),
	VNCColors varchar(10),
	VNCSmartSizeMode varchar(20),
	VNCViewOnly bit NOT NULL,
	RDGatewayUsageMethod varchar(32) NOT NULL,
	RDGatewayHostname varchar(512),
	RDGatewayUseConnectionCredentials varchar(32) NOT NULL,
	RDGatewayUsername varchar(512),
	RDGatewayPassword varchar(1024),
	RDGatewayDomain varchar(512),
	InheritCacheBitmaps bit NOT NULL,
	InheritColors bit NOT NULL,
	InheritDescription bit NOT NULL,
	InheritDisplayThemes bit NOT NULL,
	InheritDisplayWallpaper bit NOT NULL,
	InheritEnableFontSmoothing bit NOT NULL,
	InheritEnableDesktopComposition bit NOT NULL,
	InheritDomain bit NOT NULL,
	InheritIcon bit NOT NULL,
	InheritPanel bit NOT NULL,
	InheritPassword bit NOT NULL,
	InheritPort bit NOT NULL,
	InheritProtocol bit NOT NULL,
	InheritPuttySession bit NOT NULL,
	InheritRedirectDiskDrives bit NOT NULL,
	InheritRedirectKeys bit NOT NULL,
	InheritRedirectPorts bit NOT NULL,
	InheritRedirectPrinters bit NOT NULL,
	InheritRedirectSmartCards bit NOT NULL,
	InheritRedirectSound bit NOT NULL,
	InheritSoundQuality bit NOT NULL,
	InheritRedirectAudioCapture bit NOT NULL,
	InheritResolution bit NOT NULL,
	InheritUseConsoleSession bit NOT NULL,
	InheritUseCredSsp bit NOT NULL,
	InheritRenderingEngine bit NOT NULL,
	InheritICAEncryptionStrength bit NOT NULL,
	InheritRDPAuthenticationLevel bit NOT NULL,
	InheritRDPMinutesToIdleTimeout bit NOT NULL,
	InheritRDPAlertIdleTimeout bit NOT NULL,
	InheritUsername bit NOT NULL,
	InheritPreExtApp bit NOT NULL,
	InheritPostExtApp bit NOT NULL,
	InheritMacAddress bit NOT NULL,
	InheritUserField bit NOT NULL,
	InheritExtApp bit NOT NULL,
	InheritVNCCompression bit NOT NULL,
	InheritVNCEncoding bit NOT NULL,
	InheritVNCAuthMode bit NOT NULL,
	InheritVNCProxyType bit NOT NULL,
	InheritVNCProxyIP bit NOT NULL,
	InheritVNCProxyPort bit NOT NULL,
	InheritVNCProxyUsername bit NOT NULL,
	InheritVNCProxyPassword bit NOT NULL,
	InheritVNCColors bit NOT NULL,
	InheritVNCSmartSizeMode bit NOT NULL,
	InheritVNCViewOnly bit NOT NULL,
	InheritRDGatewayUsageMethod bit NOT NULL,
	InheritRDGatewayHostname bit NOT NULL,
	InheritRDGatewayUseConnectionCredentials bit NOT NULL,
	InheritRDGatewayUsername bit NOT NULL,
	InheritRDGatewayPassword bit NOT NULL,
	InheritRDGatewayDomain bit NOT NULL,
	LoadBalanceInfo varchar(1024),
	AutomaticResize bit DEFAULT ((1)) NOT NULL,
	InheritLoadBalanceInfo bit DEFAULT ((0)) NOT NULL,
	InheritAutomaticResize bit DEFAULT ((0)) NOT NULL,
	RedirectClipboard bit DEFAULT ((0)) NOT NULL,
	InheritRedirectClipboard bit DEFAULT ((0)) NOT NULL,
	RdpVersion varchar(10),
	InheritRdpVersion bit DEFAULT ((0)) NOT NULL,
	VmId varchar(100),
	UseVmId bit,
	InheritVmId bit,
	InheritUseVmId bit
) GO

CREATE TABLE [dbo].[tblRoot] (
	[Name] [varchar] (2048) NOT NULL ,
	[Export] [bit] NOT NULL ,
	[Protected] [varchar] (4048) NOT NULL ,
	[ConfVersion] [float] NOT NULL 
) ON [PRIMARY]
GO
 
CREATE TABLE [dbo].[tblUpdate] (
	[LastUpdate] [datetime] NULL 
) ON [PRIMARY]
GO