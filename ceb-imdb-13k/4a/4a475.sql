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
AND (n.name_pcode_nf in ('A5462','B4262','B5452','C4524','C5353','C6423','D162','H6432','J4525','J5424','R52','S325'))
AND (ci.note in ('(producer)','(supervising producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','costume designer','editor','producer','production designer','writer'))
AND (it1.id in ('22'))
