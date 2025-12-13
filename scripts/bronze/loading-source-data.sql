use DataWarehouse;
go

create or alter procedure bronze.load_bronze as 
begin
	print '=================================================='
	print 'loading the data from  source system crm'
	print '=================================================='
	-- loading cust_info
	truncate table bronze.crm_cust_info;

	bulk insert bronze.crm_cust_info
	from 'D:\Datawarehouse Project\source_crm\cust_info.csv'
	with (
		firstrow = 2,
		fieldterminator = ',',
		tablock

	);


	-- select * from bronze.crm_cust_info;

	-- loading prd_info
	truncate table bronze.crm_prd_info;

	bulk insert bronze.crm_prd_info
	from  'D:\Datawarehouse Project\source_crm\prd_info.csv'
	with (
		firstrow = 2,
		fieldterminator = ',',
		tablock
	);

	-- select * from bronze.crm_prd_info;



	--loading sales details
	truncate table bronze.crm_sales_details;

	bulk insert bronze.crm_sales_details
	from 'D:\Datawarehouse Project\source_crm\sales_details.csv'
	with (
		firstrow = 2,
		fieldterminator = ',',
		tablock

	);

	-- select count(*) from bronze.crm_sales_details;


	print '=================================================='
	print 'loading the data from  source system erp'
	print '=================================================='
	--loading cust_az12
	truncate table bronze.erp_cust_az12;

	bulk insert bronze.erp_cust_az12
	from 'D:\Datawarehouse Project\source_erp\CUST_AZ12 (1).csv'
	with (
		firstrow = 2,
		fieldterminator = ',',
		tablock

	);

	-- select * from bronze.erp_cust_az12;



	--loading loc_a101
	truncate table bronze.erp_loc_a101;

	bulk insert bronze.erp_loc_a101
	from 'D:\Datawarehouse Project\source_erp\LOC_A101 (1).csv'
	with (
		firstrow = 2,
		fieldterminator = ',',
		tablock

	);

	-- select * from bronze.erp_loc_a101;



	--loading px_cat_g1v2
	truncate table bronze.erp_px_cat_g1v2;

	bulk insert bronze.erp_px_cat_g1v2
	from 'D:\Datawarehouse Project\source_erp\PX_CAT_G1V2 (1).csv'
	with (
		firstrow = 2,
		fieldterminator = ',',
		tablock

	);
end
	-- select * from bronze.erp_px_cat_g1v2;




-- exec bronze.load_bronze;


-- select count(*) from bronze.crm_cust_info;
-- select count(*) from bronze.crm_cust_info;
-- select count(*) from bronze.crm_sales_details;
-- select count(*) from bronze.erp_cust_az12;
-- select count(*) from bronze.erp_loc_a101;
-- select count(*) from bronze.erp_px_cat_g1v2;

