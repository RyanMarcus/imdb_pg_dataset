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
AND (n.name_pcode_nf in ('A5362','B1536','B6216','D25','D5253','I5652','J5136','J5162','M2456','M5462','M6252','P364','R4143','R5626','T3263','T53'))
AND (ci.note in ('(executive producer)','(script producer)','(uncredited)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','producer','writer'))
AND (it1.id in ('34'))
