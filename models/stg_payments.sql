select
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status,
    round(amount / 100, 2) as amount

from {{ source('stripe', 'payments') }}
