with employees as (
    select
    LIFNR,
    NAME1
    from 
    {{ ref('sap_suppliers') }}
),

bank as (
    select
    PARTNER,
    BKVID,
    BANKS,
    BANKL,
    BANKN
    from 
    {{ ref('sap_bank') }}
)

select 
a.LIFNR,
a.NAME1,
b.BKVID,
b.BANKS,
b.BANKL,
b.BANKN
from
employees a
inner join bank b
on (a.LIFNR = b.PARTNER)