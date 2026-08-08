Use [RetailBank];
GO


--============== Customers===========
select * 
from Bronze.Customers


-- 1-Check Nulls-------


Select 
sum(case when customer_id is null or customer_id = '' then 1 else 0 end) as customer_id_nulls ,
sum(case when cc_num is null or cc_num = '' then 1 else 0 end) as ss_num_nulls,
sum(case when zip is null or zip = '' then 1 else 0 end) as zip_nulls,
sum(case when lat is null  or lat = '' then 1 else 0 end) as lat_nulls,
sum(case when long is null  or long = '' then 1 else 0 end) as long_nulls,
sum(case when first_name is null  or first_name = '' then 1 else 0 end )as first_name_nulls,
sum(case when last_name is null  or last_name = '' then 1 else 0 end )as last_name_nulls,
sum(case when gender is null  or gender  = '' then 1 else 0 end )as gender_nulls,
sum(case when street is null  or street = '' then 1 else 0 end )as street_nulls,
sum(case when city is null  or city = '' then 1 else 0 end )as city_nulls,
sum(case when [state]  is null  or [state] = '' then 1 else 0 end )as state_nulls,
sum(case when job is null  or job = '' then 1 else 0 end )as job_nulls,
sum(case when loyalty_tier is null  or loyalty_tier = '' then 1 else 0 end )as loyalty_nulls,
sum(case when email_domain is null  or email_domain = '' then 1 else 0 end )as email_nulls,
sum(case when city_pop is null or city_pop = '' then 1 else 0 end) as city_pop_nulls,
sum(case when dob is null or dob = '' then 1 else 0 end) as dob_nulls,
sum(case when signup_date is null or signup_date = '' then 1 else 0 end) as signup_date_nulls

From Bronze.Customers;


------ 2-  conversion -----

select * 
from Bronze.Customers
where TRY_CAST(customer_id as int) is null;


select * 
from Bronze.Customers
where TRY_CAST(city_pop as int) is null;

select * 
from Bronze.Customers
where TRY_CAST(lat as  float) is null;


select * 
from Bronze.Customers
where TRY_CAST(zip as int) is null;

select * 
from Bronze.Customers
where TRY_CAST(dob as date) is null;


-------- 3- Innconsistent categorical values -------


select distinct gender 
from Bronze.Customers;


select distinct gender ,COUNT(*) as CNT
from Bronze.Customers
group by gender;


select distinct loyalty_tier 
from Bronze.Customers;


select distinct [state] 
from Bronze.Customers;


select distinct job 
from Bronze.Customers;


----4- Duplicate Check--

select 
customer_id , 
count(*) as count_duplicate
from Bronze.Customers
group by customer_id
having COUNT(*) > 1;


------- 5- total rows ----------

select COUNT(*) as total_rows
from Bronze.Customers;




-----============2- Merchants table -------------------

-- 1- Check Nulls =======


select 
sum(case when merchant_id is null or merchant_id = '' then 1 else 0 end) as id_nulls,
sum(case when merchant_lat is null or merchant_lat='' then 1 else 0 end)as lat_nulls,
sum(case when merchant_long is null or merchant_long = '' then 1 else 0 end)as long_nulls,
sum(case when merchant_since is null or merchant_since = '' then 1 else 0 end)as since_nulls,
sum(case when merchant_name is null or merchant_name = '' then 1 else 0 end) as name_nulls,
sum(case when dominant_category is null or dominant_category = '' then 1 else 0 end) as category_nulls,
sum(case when merchant_city is null or merchant_city = '' then 1 else 0 end) as city_nulls,
sum(case when merchant_state is null or merchant_state = '' then 1 else 0 end) as state_nulls,
sum(case when is_active is null or is_active = '' then 1 else 0 end) as isactive_nulls
from Bronze.Merchants



------ 2- conversion -----


select * 
from Bronze.Merchants
where TRY_CAST(merchant_id as int) is null;

select * 
from Bronze.Merchants
where TRY_CAST(merchant_since as date) is null;



-------- 3- Innconsistent categorical values -------

select  distinct dominant_category
from Bronze.Merchants;

select distinct merchant_state
from Bronze.Merchants;

select distinct is_active
from Bronze.Merchants;



----4- Duplicate Check--

select merchant_id,COUNT(*) as count_dup
from Bronze.Merchants
group by merchant_id
having COUNT(*)>1;



------- 5- total rows ----------

select COUNT(*) as total_rows
from Bronze.Customers;


-------=============== 3- Transactions table --==========


-- 1- Check Nulls =======




select 
sum(case when Transaction_id is null or transaction_id = '' then 1 else 0 end) as id_nulls,
sum(case when trans_date_trans_time is null or trans_date_trans_time = '' then 1 else 0 end)as trans_date_trans_time_nulls,
sum(case when customer_id is null or customer_id = '' then 1 else 0 end)as customer_id_nulls,
sum(case when merchant_id is null or merchant_id = '' then 1 else 0 end)as merchant_id_nulls,
sum(case when amt is null or amt ='' then 1 else 0 end)as amt_nulls,
sum(case when tax_amt is null or tax_amt='' then 1 else 0 end)as tax_amt_nulls,
sum(case when discount_amt is null or discount_amt = '' then 1 else 0 end)as discount_amt_nulls,
sum(case when unix_time is null or unix_time = '' then 1 else 0 end)as unix_time_nulls,
sum(case when category is null or category = '' then 1 else 0 end) as category_nulls,
sum(case when currency is null or currency = '' then 1 else 0 end) as currency_nulls,
sum(case when payment_method is null or payment_method = '' then 1 else 0 end) as payment_method_nulls,
sum(case when channel is null or channel = '' then 1 else 0 end) as channel_nulls,
sum(case when entry_mode is null or entry_mode = '' then 1 else 0 end) as entry_mode_nulls,
sum(case when device_type is null or device_type = '' then 1 else 0 end) as device_type_nulls,
sum(case when transaction_status is null or transaction_status = '' then 1 else 0 end) as transaction_status_nulls,
sum(case when trans_num is null or trans_num = '' then 1 else 0 end) as trans_num_nulls,
sum(case when [session_id] is null or [session_id] = '' then 1 else 0 end) as session_id_nulls,
sum(case when is_fraud is null or is_fraud = '' then 1 else 0 end) as is_fraud_nulls
from Bronze.Transactions


-------2- conversion ------------


select *
from Bronze.Transactions;




select *
from Bronze.Transactions
where TRY_CAST(transaction_id as int) is null;



select *
from Bronze.Transactions
where TRY_CAST(customer_id as int) is null;


select *
from Bronze.Transactions
where TRY_CAST(merchant_id as int) is null;



select *
from Bronze.Transactions
where TRY_CAST(amt as decimal(12,2)) is null;

select *
from Bronze.Transactions
where TRY_CAST(discount_amt as decimal(12,2)) is null;


select *
from Bronze.Transactions
where TRY_CAST(tax_amt as decimal(12,2)) is null;

select *
from Bronze.Transactions
where TRY_CAST(unix_time as float) is null;

select *
from Bronze.Transactions
where TRY_CAST(trans_date_trans_time as datetime) is null;



-------- 3- Innconsistent categorical values -------


select distinct category 
from Bronze.Transactions;


select distinct category ,COUNT(*) as cat
from Bronze.Transactions
group by category;

select distinct currency 
from Bronze.Transactions;

select distinct payment_method
from Bronze.Transactions;

select distinct channel 
from Bronze.Transactions;

select distinct entry_mode 
from Bronze.Transactions;

select distinct device_type 
from Bronze.Transactions;

select distinct transaction_status
from Bronze.Transactions;

select distinct is_fraud 
from Bronze.Transactions;


---------------4- Duplicate Check----------------

select transaction_id,
COUNT(*) as t_cnt
from Bronze.Transactions
group by transaction_id
having COUNT(*) > 1;


------- 5- total rows ----------

select COUNT(*) as total 
from Bronze.Transactions;

---------6- Orphan Records check ----------

select t.*
from Bronze.Transactions AS t
left join Bronze.Customers as c
  on TRY_CAST(t.customer_id as int ) = TRY_CAST(c.customer_id as int )
 where c.customer_id is null ;


select t.*
from Bronze.Transactions AS t
left join Bronze.Merchants as m
  on TRY_CAST(t.merchant_id as int ) = TRY_CAST(m.merchant_id as int )
 where m.merchant_id is null ;



------------------------------------------------