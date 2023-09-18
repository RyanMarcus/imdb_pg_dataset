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
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('C6524','D1313','H6145','J4562','M362','M6263','P3625','S4512','T3512','W434','W45'))
AND (ci.note in ('(co-executive producer)','(head writer)','(producer)','(production accountant)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('actor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
