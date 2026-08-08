--- DimDate ---
 
CREATE TABLE GOLD.DimDate(
	datekey   INT NOT NULL PRIMARY KEY,
	full_date DATE NOT NULL,
	[year]    INT NOT NULL,
	[quarter] INT NOT NULL,
	[month]   INT NOT NULL,
	month_name VARCHAR(20) NOT NULL,
	[day]     INT NOT NULL,
	day_name  VARCHAR(20) NOT NULL,
	is_weekend BIT NOT NULL
);
GO



DECLARE @start_date DATE , @end_date DATE , @Current_date DATE 

SELECT 
	@start_date = MIN (trans_date_time) ,
	@end_date = MAX (trans_date_time)  
FROM Silver.Transactions;

SET @Current_date = @start_date;

select @start_date , @end_date ,@Current_date

WHILE @Current_date <= @end_date
BEGIN
	INSERT INTO Gold.DimDate(
		datekey   ,
		full_date ,
		[year]    ,  
		[quarter] ,
		[month]   ,
		month_name,
		[day]     ,
		day_name  ,
		is_weekend )
	VALUES(
	CAST(FORMAT (@Current_date, 'yyyyMMdd') AS INT),
	@Current_date,
	YEAR(@Current_date),
	DATEPART(QUARTER,@Current_date),
	MONTH(@Current_date),
	DATENAME(MONTH,@Current_date),
	DAY(@Current_date),
	DATENAME(WEEKDAY,@Current_date),
	CASE 
	WHEN DATEPART(WEEKDAY,@Current_date) IN (1,7) THEN 1
	ELSE 0
	END
	);
	SET @Current_date = DATEADD(DAY,1,@Current_date)

END;


SELECT * FROM Gold.DimDate



-------- DimCustomer --------------

SELECT *
INTO Gold.DimCustomer
FROM Silver.Customers;

ALTER TABLE Gold.DimCustomer ALTER COLUMN customer_id INT NOT NULL;

ALTER TABLE Gold.DimCustomer ADD CONSTRAINT PK_DimCustomer PRIMARY KEY (customer_id); 


------------- DimMerchant---------

SELECT *
INTO Gold.DimMerchant
FROM Silver.Merchants;

ALTER TABLE Gold.DimMerchant ALTER COLUMN merchant_id INT NOT NULL;

ALTER TABLE Gold.DimMerchant ADD CONSTRAINT PK_DimMerchant PRIMARY KEY (merchant_id); 



-------FactTransaction--------

SELECT 
	transaction_id,
	customer_id,
	merchant_id,
	unix_time,
	amt,
	discount_amt,
	[tax_amt],
	CAST(FORMAT(trans_date_time , 'yyyyMMdd') AS INT) AS datekey,
	[session_id],
	category,
	currency,
	payment_method,
	trans_date_time,
	channel,
	entry_mode,
	device_type,
	transaction_status,
	trans_num,
	is_fraud
INTO Gold.FactTransaction
FROM Silver.Transactions;

ALTER TABLE Gold.FactTransaction ALTER COLUMN transaction_id INT NOT NULL;

ALTER TABLE Gold.FactTransaction ADD CONSTRAINT PK_FactTransaction PRIMARY KEY (transaction_id); 

select *
from Gold.FactTransaction

----- Foreign keys ---

ALTER TABLE Gold.FactTransaction
	ADD CONSTRAINT FK_Fact_DimDate FOREIGN KEY (datekey) REFERENCES Gold.DimDate (datekey);

ALTER TABLE Gold.FactTransaction
	ADD CONSTRAINT FK_Fact_DimCustomer FOREIGN KEY (customer_id) REFERENCES Gold.DimCustomer (customer_id);

ALTER TABLE Gold.FactTransaction
	ADD CONSTRAINT FK_Fact_DimMerchant FOREIGN KEY (merchant_id) REFERENCES Gold.DimMerchant (merchant_id);

------INDEX --------

CREATE INDEX IX_FactTransaction_Customer
ON Gold.FactTransaction(customer_id);

CREATE INDEX IX_FactTransaction_Merchant
ON Gold.FactTransaction(merchant_id);

CREATE INDEX IX_FactTransaction_Date
ON Gold.FactTransaction(datekey);
