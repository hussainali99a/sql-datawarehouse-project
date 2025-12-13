use DataWarehouse;
go 

if OBJECT_ID('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info;
create table bronze.crm_cust_info(
	cst_id INT,
	cst_key Nvarchar(50),
	cst_firstname Nvarchar(50),
	cst_lastname Nvarchar(50),
	cst_material_status Nvarchar(50),
	cst_gndr Nvarchar(50),
	cst_create_date date
);
go

if OBJECT_ID('bronze.crm_prd_info', 'U') is not null
	drop table bronze.crm_prd_info;
create table bronze.crm_prd_info(
	prd_id INT,
	prd_key Nvarchar(50),
	prd_nm Nvarchar(50),
	prd_cost INT,
	prd_line Nvarchar(50),
	prd_start_dt datetime,
	prd_end_dt datetime
);
go

if OBJECT_ID('bronze.crm_sales_details', 'U') is not null
	drop table bronze.crm_sales_details;
create table bronze.crm_sales_details(
	sls_ord_num Nvarchar(50),
	sls_prd_key Nvarchar(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);
go

if OBJECT_ID('bronze.erp_cust_az12', 'U') is not null
	drop table bronze.erp_cust_az12;
create table bronze.erp_cust_az12(
cid Nvarchar(50),
bdate date,
gen Nvarchar(50)
);
go

if OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') is not null
	drop table bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2(
id Nvarchar(50),
cat Nvarchar(50),
subcat Nvarchar(50),
maintenance Nvarchar(50)
);
go

if OBJECT_ID('bronze.erp_loc_a101', 'U') is not null
	drop table bronze.erp_loc_a101;
create table bronze.erp_loc_a101(
cid Nvarchar(50),
cntry Nvarchar(50)
);
go



