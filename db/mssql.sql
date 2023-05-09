-- SQL dump generated using DBML (dbml-lang.org)
-- Database: SQL Server
-- Generated at: 2023-05-09T03:48:10.837Z

CREATE SCHEMA [dbo]
GO

CREATE TABLE [dbo].[Area_Province] (
  [id] int NOT NULL IDENTITY(1, 1),
  [area_id] int NOT NULL,
  [geography_id] int NOT NULL,
  [province_id] int NOT NULL,
  [is_office] bit NOT NULL,
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Disturbance_Report] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [region_id] int NOT NULL,
  [area_id] int NOT NULL,
  [person_responsible] nvarchar(50),
  [report_year] int,
  [report_month] int,
  [quarter] int,
  [agency_name] nvarchar(50),
  [received_date] datetime,
  [received_no] nvarchar(50),
  [business_type_id] int NOT NULL,
  [business_type_name] nvarchar(100),
  [disturbance_type_id] int,
  [disturbance_type_name] nvarchar(100),
  [description] ntext,
  [site_code] nvarchar(20),
  [latitude] nvarchar(20),
  [longitude] nvarchar(20),
  [sub_district_id] int,
  [sub_district_name] nvarchar(50),
  [district_id] int,
  [district_name] nvarchar(50),
  [province_id] int,
  [province_name] nvarchar(50),
  [cause_of_disturbance] ntext,
  [frequency] int,
  [disturbance_status_id] int NOT NULL,
  [cloesd_no] nvarchar(20),
  [closed_date] datetime,
  [duration] int,
  [closed_description] ntext,
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modified_by] nvarchar(50),
  [modified_date] datetime,
  [status] varchar(1),
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[EMF_Measurement_Report] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [report_year] int NOT NULL,
  [report_month] int NOT NULL,
  [report_date] int NOT NULL,
  [quarter] int NOT NULL,
  [selection] nvarchar(100),
  [measured_time] datetime,
  [service_name] nvarchar(50),
  [start_Hz] int,
  [stop_Hz] int,
  [original_file_name] nvarchar(100),
  [new_file_name] nvarchar(100),
  [files_path] nvarchar(500),
  [created_date] datetime,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[EMF_Measurement_Report_Detail] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [emf_measurement_report_id] bigint NOT NULL,
  [max_V/m] decimal(20,2),
  [avg_V/m] decimal(20,2),
  [rms_V/m] decimal(20,2),
  [limit_V/m] decimal(20,2),
  [max_percent] decimal(20,2),
  [avg_percent] decimal(20,2),
  [rms_percent] decimal(20,2),
  [max_mA/m] decimal(20,2),
  [avg_mA/m] decimal(20,2),
  [rms_mA/m] decimal(20,2),
  [max_mW/m] decimal(20,2),
  [avg_mW/m] decimal(20,2),
  [rms_mW/m] decimal(20,2),
  [created_date] datetime,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Health_Safety_Test_Plan] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [region_id] int NOT NULL,
  [area_id] int NOT NULL,
  [report_year] int NOT NULL,
  [description] nvarchar(50),
  [actual_01] int,
  [result_01] int,
  [actual_02] int,
  [result_02] int,
  [actual_03] int,
  [result_03] int,
  [actual_04] int,
  [result_04] int,
  [actual_05] int,
  [result_05] int,
  [actual_06] int,
  [result_06] int,
  [actual_07] int,
  [result_07] int,
  [actual_08] int,
  [result_08] int,
  [actual_09] int,
  [result_09] int,
  [actual_10] int,
  [result_10] int,
  [actual_11] int,
  [result_11] int,
  [actual_12] int,
  [result_12] int,
  [original_file_name] nvarchar(100),
  [new_file_name] nvarchar(100),
  [file_path] nvarchar(500),
  [created_by] nvarchar(50),
  [created_date] int,
  [modified_by] nvarchar(50),
  [modified_date] int,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Area] (
  [id] int NOT NULL IDENTITY(1, 1),
  [region_id] int NOT NULL,
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Broadcast_Station] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [chk_ID] int,
  [transaction_date] datetime,
  [checked_date] datetime,
  [region_id] int,
  [region_name] nvarchar(50),
  [area_id] int,
  [area_name] nvarchar(50),
  [station] nvarchar(50),
  [station_type_id] int,
  [station_type_name] nvarchar(50),
  [station_code] nvarchar(10),
  [station_name] nvarchar(100),
  [frequency] decimal(10,4),
  [license_no] nvarchar(20),
  [province_id] int,
  [province_name] nvarchar(50),
  [district_id] int,
  [district_name] nvarchar(50),
  [sub_district_id] int,
  [sub_district_name] nvarchar(50),
  [address] nvarchar(500),
  [latitude] nvarchar(20),
  [longitude] nvarchar(20),
  [tested_result] ntext,
  [station_status] nvarchar(50),
  [broadcase_start_time] time,
  [broadcast_end_time] time,
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Business_Type] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Company_Type] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_District] (
  [id] int NOT NULL IDENTITY(1, 1),
  [province_id] int NOT NULL,
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Disturbance_Status] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Disturbance_Type] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Geography] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_License_Type] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100),
  [created_by] nvarchar(50),
  [created_date] datetime,
  [modifed_by] nvarchar(50),
  [modified_date] datetime,
  [deleted_by] nvarchar(50),
  [deleted_date] datetime,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Other_Station] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [owner_type_id] int,
  [owner_type_name] nvarchar(100),
  [region_id] int,
  [region_name] nvarchar(50),
  [area_id] int,
  [area_name] nvarchar(50) NOT NULL,
  [station_type_id] int NOT NULL,
  [station_type_name] nvarchar(50) NOT NULL,
  [station_code] nvarchar(10) NOT NULL,
  [station_name] nvarchar(100) NOT NULL,
  [frequency] nvarchar(50) NOT NULL,
  [ฺbusiness_name] nvarchar(255) NOT NULL,
  [company_type_id] int NOT NULL,
  [company_type_name] nvarchar(100) NOT NULL,
  [license_type_id] int NOT NULL,
  [license_type_name] nvarchar(100) NOT NULL,
  [license_no] nvarchar(20) NOT NULL,
  [license_date] datetime NOT NULL,
  [province_id] int NOT NULL,
  [province_name] nvarchar(50) NOT NULL,
  [district_id] int NOT NULL,
  [district_name] nvarchar(50) NOT NULL,
  [sub_district_id] int NOT NULL,
  [sub_district_name] nvarchar(50) NOT NULL,
  [address] nvarchar(500) NOT NULL,
  [latitude] nvarchar(20) NOT NULL,
  [longitude] nvarchar(20) NOT NULL,
  [contract_name] nvarchar(100) NOT NULL,
  [contract_telephone] nvarchar(50) NOT NULL,
  [altitude_above_sea_level] int NOT NULL,
  [aerial_type] nvarchar(100) NOT NULL,
  [expansion_rate_of_aerial] decimal(10,2) NOT NULL,
  [sending] int NOT NULL,
  [HeightOfAerial] int NOT NULL,
  [TestOfFrequency] decimal(10,4) NOT NULL,
  [broadcast_start_time] time NOT NULL,
  [broadcast_end_time] time NOT NULL,
  [CreatedBy] nvarchar(50) NOT NULL,
  [CreatedDate] datetime NOT NULL,
  [ModifedBy] nvarchar(50) NOT NULL,
  [ModifiedDate] datetime NOT NULL,
  [DeletedBy] nvarchar(50) NOT NULL,
  [DeletedDate] datetime NOT NULL,
  [Status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Owner_Type] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Province] (
  [id] int NOT NULL IDENTITY(1, 1),
  [geography_id] int NOT NULL,
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Radio_Station] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50) NOT NULL,
  [station_unit] nvarchar(10) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Region] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Station_Type] (
  [id] int NOT NULL IDENTITY(1, 1),
  [name_th] nvarchar(100) NOT NULL,
  [name_en] nvarchar(100) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Sub_District] (
  [id] int NOT NULL IDENTITY(1, 1),
  [province_id] int NOT NULL,
  [district_id] int NOT NULL,
  [name_th] nvarchar(50) NOT NULL,
  [name_en] nvarchar(50) NOT NULL,
  [post_code] varchar(5) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Info_Zipcode] (
  [id] int NOT NULL IDENTITY(1, 1),
  [province_id] int NOT NULL,
  [district_id] int NOT NULL,
  [sub_district_id] int NOT NULL,
  [code] varchar(5) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] datetime NOT NULL,
  [modifed_by] nvarchar(50) NOT NULL,
  [modified_date] datetime NOT NULL,
  [deleted_by] nvarchar(50) NOT NULL,
  [deleted_date] datetime NOT NULL,
  [status] varchar(1) NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[Radio_Emission_Test_Plan] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [region_id] int NOT NULL,
  [area_id] int NOT NULL,
  [report_year] int NOT NULL,
  [radio_station_id] int NOT NULL,
  [actual_01] int NOT NULL,
  [result_01] int NOT NULL,
  [actual_02] int NOT NULL,
  [result_02] int NOT NULL,
  [actual_03] int NOT NULL,
  [result_03] int NOT NULL,
  [actual_04] int NOT NULL,
  [result_04] int NOT NULL,
  [actual_05] int NOT NULL,
  [result_05] int NOT NULL,
  [actual_06] int NOT NULL,
  [result_06] int NOT NULL,
  [actual_07] int NOT NULL,
  [result_07] int NOT NULL,
  [actual_08] int NOT NULL,
  [result_08] int NOT NULL,
  [actual_09] int NOT NULL,
  [result_09] int NOT NULL,
  [actual_10] int NOT NULL,
  [result_10] int NOT NULL,
  [actual_11] int NOT NULL,
  [result_11] int NOT NULL,
  [actual_12] int NOT NULL,
  [result_12] int NOT NULL,
  [original_file_name] nvarchar(100) NOT NULL,
  [new_file_name] nvarchar(100) NOT NULL,
  [file_path] nvarchar(500) NOT NULL,
  [created_by] nvarchar(50) NOT NULL,
  [created_date] int NOT NULL,
  [modified_by] nvarchar(50) NOT NULL,
  [modified_date] int NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[TCI_Occupancy_Report] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [report_year] int NOT NULL,
  [report_month] int NOT NULL,
  [report_date] int NOT NULL,
  [quarter] int NOT NULL,
  [task_id] int NOT NULL,
  [storage_interval] nvarchar(20) NOT NULL,
  [operator_id] nvarchar(100) NOT NULL,
  [message_length] int NOT NULL,
  [start_time] datetime NOT NULL,
  [stop_time] datetime NOT NULL,
  [threshold_method] nvarchar(100) NOT NULL,
  [duration] nvarchar(100) NOT NULL,
  [station_name] nvarchar(100) NOT NULL,
  [all_single_channels] char(1) NOT NULL,
  [latitude] nvarchar(20) NOT NULL,
  [longitude] nvarchar(20) NOT NULL,
  [antenna] nvarchar(50) NOT NULL,
  [polarization] nvarchar(20) NOT NULL,
  [original_file_name] nvarchar(100) NOT NULL,
  [new_file_name] nvarchar(100) NOT NULL,
  [files_path] nvarchar(500) NOT NULL,
  [created_date] datetime NOT NULL,
  PRIMARY KEY ([id])
)
GO

CREATE TABLE [dbo].[TCI_Occupancy_Report_Detail] (
  [id] bigint NOT NULL IDENTITY(1, 1),
  [tci_occupancy_report_id] bigint NOT NULL,
  [band] int NOT NULL,
  [start_frequency_MHz] int NOT NULL,
  [stop_frequency_MHz] int NOT NULL,
  [bandwidth_kHz] decimal(20,2) NOT NULL,
  [channel_no] int NOT NULL,
  [frequency_MHz] decimal(20,4) NOT NULL,
  [maximum_occupancy_percent] int NOT NULL,
  [average_occupancy_percent] int NOT NULL,
  [maximum_field_strength_dBuV/m] int NOT NULL,
  [average_field_strength_dBuV/m] int NOT NULL,
  [created_date] datetime NOT NULL,
  PRIMARY KEY ([id])
)
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID ของจังหวัดภายในแต่ละเขตของกสทช.',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID ของเขตในกสทช. (FK)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'area_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID รหัสภูมิภาคประเทศ (FK)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'geography_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID รหัสจังหวัด (FK)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'province_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'เป็นที่ตั้งสำนักงานเขต?',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'is_office';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของผู้สร้างข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'created_by';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ที่สร้างข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'created_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของผู้ปรับปรุงข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'modifed_by';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ที่ปรับปรุงข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'modified_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของผู้ลบข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'deleted_by';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ที่ลบข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'deleted_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'สถานะของข้อมูล ( A = Active, I = Inactive, D = Delete )',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Area_Province',
@level2type = N'Column', @level2name = 'status';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ Disturbance_Report',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ Region (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'region_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID ของ Area (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'area_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของผู้รับผิดชอบ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'person_responsible';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ปีของข้อมูลการรบกวน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'report_year';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'เดือนของข้อมูลการรบกวน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'report_month';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ไตรมาสของข้อมูลการรบกวน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'quarter';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของหน่วยงาน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'agency_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่หนังสือ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'received_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'เลขที่หนังสือ',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'received_no';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ Business_Type (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'business_type_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของประเภทหน่วยงาน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'business_type_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ Disturbance_Type (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'disturbance_type_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของประเภทการรบกวน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'disturbance_type_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'รายละเอียดของแจ้งปัญหาการรบกวน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'รหัสของ site ที่แจ้งปัญหา',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'site_code';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ละติจูดของสถานที่ที่แจ้งปัญหา',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'latitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ลองจิจูดของสถานที่ที่แจ้งปัญหา',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'longitude';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ Sub_District (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'sub_district_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของตำบล / แขวง',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'sub_district_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ District (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'district_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของอำเภอ / เขต',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'district_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ Province (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'province_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของจังหวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'province_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'สาเหตุของการรบกวน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'cause_of_disturbance';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ความถี่ (MHz.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'frequency';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID ของ Disturbance_Status ( FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'disturbance_status_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'เลขหนังสือปิดงาน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'cloesd_no';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ที่ปิดงาน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'closed_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ระยะเวลาในการดำเนินการ (วัน) : วันที่ปิด - วันที่รับเรื่อง',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'duration';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'รายละเอียดในการปิดงาน',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'closed_description';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของผู้สร้างข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'created_by';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ที่สร้างข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'created_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของผู้ปรับปรุงข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'modified_by';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ที่ปรับปรุงข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'modified_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'สถานะของข้อมูล ( A = Active, I = Inactive, D = Delete )',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'Disturbance_Report',
@level2type = N'Column', @level2name = 'status';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ EMF Measurement Report',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ปีของข้อมูลการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'report_year';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'เดือนของข้อมูลการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'report_month';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันที่ของข้อมูลการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'report_date';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ไตรมาสของข้อมูลการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'quarter';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อ Service ของข้อมูลการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'measured_time';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ความถี่ (Hz) เริ่มต้นที่ทำการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'service_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ความถี่ (Hz) สิ้นสุดที่ทำการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'start_Hz';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ความถี่ (Hz) สิ้นสุดที่ทำการตรวจวัด',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'stop_Hz';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของไฟล์ต้นฉบับที่นำเข้าข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'original_file_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อของไฟล์ที่นำเข้าข้อมูลสำเร็จ อัพเดทชื่อใหม่ ต่อท้ายด้วย_yyMMddHHmm',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'new_file_name';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ชื่อ path ที่เก็บไฟล์หลังจากนำเข้าข้อมูลสำเร็จหรือ Fail(แยกเก็บ)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report',
@level2type = N'Column', @level2name = 'files_path';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ EMF_Measurement_Report_Detail',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ID. ของ EMF_Measurement_Report (FK.)',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'emf_measurement_report_id';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Max ของการตรวจวัดโดยคำนวณจาก V/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'max_V/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Avg ของการตรวจวัดโดยคำนวณจาก V/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'avg_V/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Rms ของการตรวจวัดโดยคำนวณจาก V/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'rms_V/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Limit ของการตรวจวัดโดยคำนวณจาก V/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'limit_V/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Max ของการตรวจวัดแบบ %',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'max_percent';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Avg ของการตรวจวัดแบบ %',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'avg_percent';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Rms ของการตรวจวัดแบบ %',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'rms_percent';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Max ของการตรวจวัดโดยคำนวณจาก mA/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'max_mA/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Avg ของการตรวจวัดโดยคำนวณจาก mA/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'avg_mA/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Rms ของการตรวจวัดโดยคำนวณจาก mA/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'rms_mA/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Max ของการตรวจวัดโดยคำนวณจาก mW/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'max_mW/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Avg ของการตรวจวัดโดยคำนวณจาก mW/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'avg_mW/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'ค่า Rms ของการตรวจวัดโดยคำนวณจาก mW/m',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'rms_mW/m';
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'วันเวลาที่สร้างข้อมูล',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'EMF_Measurement_Report_Detail',
@level2type = N'Column', @level2name = 'created_date';
GO

ALTER TABLE [dbo].[Health_Safety_Test_Plan] ADD CONSTRAINT [FKHealth_Saf953904] FOREIGN KEY ([area_id]) REFERENCES [dbo].[Info_Area] ([id])
GO

ALTER TABLE [dbo].[Health_Safety_Test_Plan] ADD CONSTRAINT [FKHealth_Saf855281] FOREIGN KEY ([region_id]) REFERENCES [dbo].[Info_Region] ([id])
GO

ALTER TABLE [dbo].[Radio_Emission_Test_Plan] ADD CONSTRAINT [FKRadio_Emis890179] FOREIGN KEY ([area_id]) REFERENCES [dbo].[Info_Area] ([id])
GO

ALTER TABLE [dbo].[Radio_Emission_Test_Plan] ADD CONSTRAINT [FKRadio_Emis80993] FOREIGN KEY ([region_id]) REFERENCES [dbo].[Info_Region] ([id])
GO

ALTER TABLE [dbo].[Radio_Emission_Test_Plan] ADD CONSTRAINT [FKRadio_Emis238262] FOREIGN KEY ([radio_station_id]) REFERENCES [dbo].[Info_Radio_Station] ([id])
GO

ALTER TABLE [dbo].[Info_Zipcode] ADD CONSTRAINT [FKInfo_Zipco299713] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Info_Province] ([id])
GO

ALTER TABLE [dbo].[Info_Zipcode] ADD CONSTRAINT [FKInfo_Zipco255546] FOREIGN KEY ([district_id]) REFERENCES [dbo].[Info_District] ([id])
GO

ALTER TABLE [dbo].[Area_Province] ADD CONSTRAINT [FKArea_Provi574106] FOREIGN KEY ([geography_id]) REFERENCES [dbo].[Info_Geography] ([id])
GO

ALTER TABLE [dbo].[Info_Sub_District] ADD CONSTRAINT [FKInfo_Sub_D858503] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Info_Province] ([id])
GO

ALTER TABLE [dbo].[Info_Zipcode] ADD CONSTRAINT [FKInfo_Zipco177048] FOREIGN KEY ([sub_district_id]) REFERENCES [dbo].[Info_Sub_District] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Disturbance_Report] ADD CONSTRAINT [FKDisturbanc342409] FOREIGN KEY ([business_type_id]) REFERENCES [dbo].[Info_Business_Type] ([id])
GO

ALTER TABLE [dbo].[Disturbance_Report] ADD CONSTRAINT [FKDisturbanc708223] FOREIGN KEY ([disturbance_status_id]) REFERENCES [dbo].[Info_Disturbance_Status] ([id])
GO

ALTER TABLE [dbo].[Info_Sub_District] ADD CONSTRAINT [FKInfo_Sub_D902670] FOREIGN KEY ([district_id]) REFERENCES [dbo].[Info_District] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Info_District] ADD CONSTRAINT [FKInfo_Distr360426] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Info_Province] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Info_Province] ADD CONSTRAINT [FKInfo_Provi333697] FOREIGN KEY ([geography_id]) REFERENCES [dbo].[Info_Geography] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Area_Province] ADD CONSTRAINT [FKArea_Provi922664] FOREIGN KEY ([province_id]) REFERENCES [dbo].[Info_Province] ([id]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[Area_Province] ADD CONSTRAINT [FKArea_Provi893606] FOREIGN KEY ([area_id]) REFERENCES [dbo].[Info_Area] ([id])
GO

ALTER TABLE [dbo].[Disturbance_Report] ADD CONSTRAINT [FKDisturbanc670568] FOREIGN KEY ([region_id]) REFERENCES [dbo].[Info_Region] ([id])
GO

ALTER TABLE [dbo].[Info_Area] ADD CONSTRAINT [FKInfo_Area396653] FOREIGN KEY ([region_id]) REFERENCES [dbo].[Info_Region] ([id])
GO

ALTER TABLE [dbo].[Disturbance_Report] ADD CONSTRAINT [FKDisturbanc861381] FOREIGN KEY ([area_id]) REFERENCES [dbo].[Info_Area] ([id])
GO

ALTER TABLE [dbo].[EMF_Measurement_Report_Detail] ADD CONSTRAINT [FKEMF_Measur160831] FOREIGN KEY ([emf_measurement_report_id]) REFERENCES [dbo].[EMF_Measurement_Report] ([id])
GO

ALTER TABLE [dbo].[TCI_Occupancy_Report_Detail] ADD CONSTRAINT [FKTCI_Occupa427123] FOREIGN KEY ([tci_occupancy_report_id]) REFERENCES [dbo].[TCI_Occupancy_Report] ([id])
GO
