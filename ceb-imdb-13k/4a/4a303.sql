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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5434','B4264','C6252','C6452','E6252','G2632','J2526','K652','L323','R14','S1435'))
AND (ci.note in ('(as Anna Little)','(assistant to executive producer)','(field producer)','(senior producer)','(stage manager)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','costume designer','director','miscellaneous crew','producer'))
AND (it1.id in ('37'))
