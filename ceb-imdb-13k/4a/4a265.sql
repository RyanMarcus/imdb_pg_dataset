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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A452','B6356','C4652','C6526','D125','D1625','D2635','D5216','D5431','E3632','G2','H2362','H6323','J1516','J512','K6542','M2416','M2453','M6243','P1616','R1425','S3152','S6261','T256','T5325'))
AND (ci.note in ('(credit only)','(executive producer)','(key set production assistant)','(location manager)','(producer)','(production assistant)','(screenplay)','(script supervisor)','(technical coordinator)','(technical director) (as Doms Paragas)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
