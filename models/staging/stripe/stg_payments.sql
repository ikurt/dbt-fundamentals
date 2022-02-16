
    select
        *
   -- from dbt-tutorial.stripe.payment
    from {{ source('stripe', 'payment') }}

