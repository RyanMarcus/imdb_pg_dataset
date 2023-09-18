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
AND (n.name_pcode_nf in ('B5252','B6234','D2152','F6234','J2451','L6241','M3532','M421','M6525','M6562','N6516','O4252','R1453','R5415','S2125','S2624','V3656','W6564','Z25'))
AND (ci.note in ('(actors director)','(developed for television by)','(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
