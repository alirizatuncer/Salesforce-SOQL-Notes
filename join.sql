SELECT  a.CUSTOMER_ID, a.muid, a.sku_mus_eoq, a.mus_end_date, a.camp_code_eoq, b.EMAIL_ADDRESS, b.LANGUAGE_COUNTRY
FROM   SUBDATABASE  a
join MAINDATA b on a.customer_id = b.customer_id
