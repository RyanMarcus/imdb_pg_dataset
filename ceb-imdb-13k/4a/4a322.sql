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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('B16','B5325','D1314','D2425','D6515','E1365','G2316','G6352','J2416','J3262','J5216','J5352','K5214','L1561','L623','M2416','M364','N3656','N6546','P3613','P3625','P46','S3154','S6545','T12'))
AND (ci.note in ('(co-executive producer)','(developed by)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','producer','writer'))
AND (it1.id in ('25'))
