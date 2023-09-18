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
AND (n.name_pcode_nf in ('A5361','B6161','C3656','C6525','D525','E1452','J2452','J3261','K3625','L5321','M626','R2565','R5316','S2524'))
AND (ci.note in ('(supervising producer)') OR ci.note IS NULL)
AND (rt.role in ('actress','producer'))
AND (it1.id in ('37'))
