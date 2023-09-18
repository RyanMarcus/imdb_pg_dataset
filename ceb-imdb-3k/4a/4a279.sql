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
AND (n.name_pcode_nf in ('A3525','A6361','C4562','D6424','F6535','G5356','G6212','I2652','J1435','J164','J5365','J6354','K3261','K6434','M253','M6216','M6252','P3626','P4126','P4546','R1424','R146','T252','T5414') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(executive producer)','(executive producer: Williams Street)','(supervising producer)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','producer'))
AND (it1.id in ('37'))
