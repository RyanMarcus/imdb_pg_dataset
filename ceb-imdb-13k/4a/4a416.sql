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
AND (n.name_pcode_nf in ('A3562','A5361','C6231','C6235','D5243','D5423','J2161','M2431','R256','R263','R5235','S3151','Y5252'))
AND (ci.note in ('(executive producer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer','writer'))
AND (it1.id in ('19'))
