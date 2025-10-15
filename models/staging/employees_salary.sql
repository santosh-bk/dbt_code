{{ config(materialized='table') }}
WITH tb1 as(
select
id,name,salary,tax_amount,
({{calculate_amount('salary','tax_amount')}}) as total_amount
from {{source('datafeed_shared_schema','emp_salary')}})
select * from tb1