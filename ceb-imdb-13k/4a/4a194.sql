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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A425','A5352','A5365','C6231','D1324','D1326','D1362','D5216','D6431','E3631','G6263','K3252','R1635','S252','S2652','S3154'))
AND (ci.note in ('(associate producer)','(copying & shipping)','(executive producer)','(first assistant accountant) (uncredited)','(producer)','(production assistant)','(production staff)','(script supervisor)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('director','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('37'))
