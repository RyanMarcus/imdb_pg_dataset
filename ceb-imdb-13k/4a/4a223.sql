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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('D1315','D5231','E3635','J52','M6213','P4264','P6154'))
AND (ci.note in ('(co-executive producer)','(producer) (as Edward J. Montagne)','(producer)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','producer'))
AND (it1.id in ('34'))
