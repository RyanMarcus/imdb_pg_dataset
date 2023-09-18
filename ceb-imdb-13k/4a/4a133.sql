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
AND (n.name_pcode_nf in ('A4526','A5362','B6524','B6535','C6426','G6212','R1632'))
AND (ci.note in ('(producer)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('director','miscellaneous crew','producer'))
AND (it1.id in ('22'))
