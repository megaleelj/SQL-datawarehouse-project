-- This script creates six tables in the 'bronze' schema to store raw data for CRM and ERP systems.

-- Table: bronze.crm_cust_info
-- Stores customer information such as ID, name, gender, marital status, and account creation date.

-- Table: bronze.crm_prd_info
-- Contains product-related details, including product ID, name, cost, product line, and active date range.

-- Table: bronze.crm_sales_details
-- Holds detailed sales transaction data, linking customers and products with order dates, shipment info, and financial metrics like quantity, sales amount, and price.

-- Table: bronze.erp_loc_a101
-- Maps customer or company IDs (cid) to their respective countries.

-- Table: bronze.erp_cust_az12
-- Captures additional ERP customer data, including birth date and gender.

-- Table: bronze.erp_px_cat_g1v2
-- Stores product category and subcategory data, including maintenance-related attributes.

-- These tables represent raw or ingested data layers in a data lake/warehouse environment, likely used for integration, transformation, and analytics across CRM and ERP domains.

CREATE TABLE bronze.crm_cust_info (
	cst_id INT, 
	cst_key NVARCHAR(50),
	cst_firstname NVARCHAR(50),
	cst_lastname NVARCHAR(50),
	cst_material_status NVARCHAR(50),
	cst_gndr NVARCHAR(50),
	cst_create_date DATE
);

CREATE TABLE bronze.crm_prd_info (
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
);

CREATE TABLE bronze.crm_sales_details (
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT,
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

CREATE TABLE bronze.erp_loc_a101 (
	cid NVARCHAR(50),
	cntry NVARCHAR(50)
);

CREATE TABLE bronze.erp_cust_az12(
	cid NVARCHAR (50),
	bdate DATE,
	gen NVARCHAR (50)
);
CREATE TABLE bronze.erp_px_cat_g1v2(
	id NVARCHAR (50),
	cat NVARCHAR (50),
	subcat NVARCHAR (50),
	maintenance NVARCHAR (50)
);
