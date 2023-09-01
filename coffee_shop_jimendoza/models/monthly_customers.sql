select

    date_trunc(first_order_at, month) as date_month,
    count(*) as new_customers

from {{ ref('customers')}}

-- Instead of `aec-students.dbt_jimendoza.customers`, this model references the customers table we created earlier

group by 1