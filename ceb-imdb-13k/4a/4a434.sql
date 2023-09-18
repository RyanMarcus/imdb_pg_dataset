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
AND (n.name_pcode_nf in ('B5254','B6516','C5651','C6231','C6253','E4213','J1415','K6425','L216','M6232','M6243','P4265','S3151','T4626','T525','V5256'))
AND (ci.note in ('(co-executive producer)','(creator)','(medical advisor)','(producer)','(story)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('25'))
