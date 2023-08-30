with sap_employees as (
    select
    *
    from
    APAC_CDP_DEMO_DB.PUBLIC."0VENDOR_ATTR"
    where
    ktokk = 'EMPL'
)

select * from sap_employees