{{ config(materialized='table') }}

WITH tb1 as(
    select
    custid ,
    first_name,
    last_name
    from {{ref('customers1')}})
select * from tb1