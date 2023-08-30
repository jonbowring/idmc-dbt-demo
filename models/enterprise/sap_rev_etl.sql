with fraud_report as (
    select
    *
    from 
    {{ ref('sap_bank_fraud') }}
)

select
'100' || lifnr as lfa1_pk,
'100' || lifnr || banks || bankl || bankn as lfbk_pk,
lifnr,
bkvid,
banks,
'999999999' as bankl,
'999999' as bankn
from
fraud_report