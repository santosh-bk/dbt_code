{{ config(materialized="table") }}
WITH tb1 as(
select
id,spent
from {{ref('customer_data')}})
select * from tb1