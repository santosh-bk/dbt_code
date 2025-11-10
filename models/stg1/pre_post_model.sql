{{ config(
materialized="table",
pre_hook="TRUNCATE TABLE {{ this }}",
post_hook="TRUNCATE TABLE {{ref('cust')}}"
) }}
WITH tb1 as(
select
*
from {{ref('cust')}})
select * from tb1