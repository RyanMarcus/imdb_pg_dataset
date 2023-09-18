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
AND (n.name_pcode_nf in ('D1324','D5423','F6524','G2316','J2421','J5626','J6265','L5252','P6262','R1634','R3415','R4531','R4532','T6252'))
AND (ci.note in ('(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer'))
AND (it1.id in ('25'))
