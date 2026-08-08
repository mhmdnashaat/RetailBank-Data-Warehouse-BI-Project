
-------- Customers Table ----------------

SELECT 
  TRY_CAST(customer_id AS INT)            AS customer_id,
  TRY_CAST(city_pop AS INT)               AS city_pop,
  TRY_CAST(lat AS DECIMAL(9,4))           AS lat,
  TRY_CAST(long AS DECIMAL(9,4))          AS long,
  TRY_CAST(dob AS DATE)                   AS dob,
  ISNULL(LTRIM(RTRIM(job)) , '')          AS job,
  ISNULL(LTRIM(RTRIM(zip)) , '' )         AS zip,
  ISNULL(LTRIM(RTRIM(loyalty_tier)) , '') AS loyalty_tier,
  LTRIM(RTRIM(first_name))                AS first_name,
  LTRIM(RTRIM(last_name))                 AS last_name,
  LTRIM(RTRIM(gender))                    AS gender,
  LTRIM(RTRIM(street))                    AS street,
  LTRIM(RTRIM(city))                      AS city,
  LTRIM(RTRIM([state]))                   AS [state],
  LTRIM(RTRIM(cc_num))                    AS cc_num
INTO Silver.Customers
FROM Bronze.Customers;

ALTER TABLE Silver.Customers ALTER COLUMN customer_id INT NOT NULL;

ALTER TABLE Silver.Customers  ADD CONSTRAINT PK_Silver_Customers PRIMARY KEY (customer_id);


SELECT *
FROM Silver.Customers;


SELECT COUNT(*)
FROM Silver.Customers;

-------- Merchants Table ----------------

SELECT 
   TRY_CAST(merchant_id AS INT)                        AS merchant_id,
   TRY_CAST(merchant_lat AS DECIMAL(9,4))              AS merchant_lat,
   TRY_CAST(merchant_long AS DECIMAL(9,4))             AS merchant_long,
   TRY_CAST(merchant_since AS DATE)                    AS merchant_since,
   LTRIM(RTRIM(merchant_name))                         AS merchant_name,
   LTRIM(RTRIM(dominant_category))                     AS dominant_category,
   ISNULL(LTRIM(RTRIM(merchant_city)) , '')            AS merchant_city,
   LTRIM(RTRIM(merchant_state))                        AS merchant_state,
   LTRIM(RTRIM(is_active))                             AS is_active

INTO Silver.Merchants
FROM Bronze.Merchants;


ALTER TABLE Silver.Merchants ALTER COLUMN merchant_id INT NOT NULL;

ALTER TABLE Silver.Merchants  ADD CONSTRAINT PK_Silver_Merchants PRIMARY KEY (merchant_id);


SELECT *
FROM Silver.Merchants;



SELECT merchant_city , *
FROM Silver.Merchants
WHERE merchant_city  = '';

-------- Transactions Table ----------------

SELECT
  TRY_CAST( transaction_id AS INT)                    AS transaction_id,
  TRY_CAST(customer_id AS INT)                        AS customer_id,
  TRY_CAST(merchant_id AS INT)                        AS merchant_id,
  TRY_CAST(unix_time AS BIGINT)                       AS unix_time,
  TRY_CAST(amt AS DECIMAL(9,4))                       AS amt,
  TRY_CAST(discount_amt AS DECIMAL(9,4))              AS discount_amt,
  TRY_CAST(tax_amt AS DECIMAL(9,4))                   AS tax_amt,
  TRY_CAST(trans_date_trans_time AS datetime2 )       AS trans_date_time,
  ISNULL(LTRIM(RTRIM([session_id])) , '')             AS [session_id],
  LTRIM(RTRIM(category))                              AS category,
  LTRIM(RTRIM(currency))                              AS currency,
  LTRIM(RTRIM(payment_method))                        AS payment_method,
  LTRIM(RTRIM(channel))                               AS channel,
  LTRIM(RTRIM(entry_mode))                            AS entry_mode,
  LTRIM(RTRIM(device_type))                           AS device_type,
  LTRIM(RTRIM(transaction_status))                    AS transaction_status,
  LTRIM(RTRIM(trans_num))                             AS trans_num,
  LTRIM(RTRIM(is_fraud))                              AS is_fraud
INTO Silver.Transactions
FROM Bronze.Transactions;


ALTER TABLE Silver.Transactions ALTER COLUMN transaction_id INT NOT NULL;

ALTER TABLE Silver.Transactions  ADD CONSTRAINT PK_Silver_Transactions PRIMARY KEY (transaction_id);


SELECT  *
FROM Silver.Transactions;