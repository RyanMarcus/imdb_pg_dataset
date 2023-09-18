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
AND (n.name_pcode_nf in ('C6215','C6426','D1314','H626','K314','M452','M526','P2415','S1254'))
AND (ci.note in ('(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','producer'))
AND (it1.id in ('31'))
