with employees_bank as (
    select
    *
    from 
    {{ ref('sap_employees_bank') }}
),

suppliers_bank as (
    select
    *,
    'Y' as fraud_flag
    from 
    {{ ref('sap_employees_bank') }}
)

select
a.*,
b.fraud_flag
from 
employees_bank a
inner join suppliers_bank b
on (a.BANKS = b.BANKS and a.BANKL = b.BANKL and a.BANKN = b.BANKN)