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
AND (n.name_pcode_nf in ('B4262','D4616','H2653','H5236','H6562','J6316','M262'))
AND (ci.note in ('(as BJ Karganilla)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','editor'))
AND (it1.id in ('37'))
