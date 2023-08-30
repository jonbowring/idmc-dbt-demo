with sap_suppliers as (
    select
    *
    from
    APAC_CDP_DEMO_DB.PUBLIC."0VENDOR_ATTR"
    where
    ktokk = 'SUPL'
)

select * from sap_suppliers