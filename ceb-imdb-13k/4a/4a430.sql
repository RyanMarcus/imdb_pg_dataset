SELECT COUNT(*)
FROM
name as n,
aka_name as an,
info_type as it1,
person_info as pi1,
cast_info as ci,
role_type as rt
WHERE
n.id = ci.person_id
AND ci.person_id = pi1.person_id
AND it1.id = pi1.info_type_id
AND n.id = pi1.person_id
AND n.id = an.person_id
AND ci.person_id = an.person_id
AND an.person_id = pi1.person_id
AND rt.id = ci.role_id
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A4253','B1425','C6236','C6414','D132','D2562','D5416','E2365','E3632','F6523','I2623','J523','J5253','K625','K6265','L6162','M5431','M6262','P3523','R2636','R512','T6326','V2534'))
AND (ci.note in ('(IT specialist)','(executive producer)','(executive script consultant)','(line producer)','(location manager)','(producer)','(production coordinator)','(studio manager)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
