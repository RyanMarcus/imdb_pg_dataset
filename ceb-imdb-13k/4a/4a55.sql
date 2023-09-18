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
AND (n.name_pcode_nf in ('A5352','C6256','D1351','H626','J16','J5616','L52','M2526','P3641','R1425'))
AND (ci.note in ('(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','director'))
AND (it1.id in ('31'))
