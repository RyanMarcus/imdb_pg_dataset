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
AND (n.name_pcode_nf in ('A6241','C6423','C6426','J25','N56','P4656','T6236','W4525','W5252','Z6516'))
AND (ci.note in ('(executive producer)','(producer)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer'))
AND (it1.id in ('22'))
