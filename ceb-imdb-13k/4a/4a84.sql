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
AND (n.name_pcode_nf in ('A2565','A354','A5163','C5256','E5425','E6523','H5623','L2415','L5652','R26','S154','S3154','S516','T5316','T6153','T625','W5352','Z2'))
AND (ci.note in ('(assistant)','(executive producer)','(marketing)','(producer)','(production assistant)','(production coordinator) (as Erin E. Stewart)','(production coordinator)','(set teacher)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('32'))
