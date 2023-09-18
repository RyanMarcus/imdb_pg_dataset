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
AND (n.name_pcode_nf in ('D6236','E2524','J6316','M6241','M6245','P3452','R5364','S3265'))
AND (ci.note in ('(story)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','writer'))
AND (it1.id in ('19'))
