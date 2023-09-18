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
AND (n.name_pcode_nf in ('A5365','F6524','G656','P4263','R4141','S2515','S5362','T262'))
AND (ci.note in ('(assistant production coordinator)','(producer)','(supervising producer)') OR ci.note IS NULL)
AND (rt.role in ('composer','miscellaneous crew','producer'))
AND (it1.id in ('37'))
