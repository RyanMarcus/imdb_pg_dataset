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
AND (n.name_pcode_nf in ('A32','B6561','C3165','C6231','D6562','E5621','F6532','H4532','H6425','R2424','S3123','S3153','T256','W4513','Y5242'))
AND (ci.note in ('(as Stephen Gustafson)','(uncredited)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','writer'))
AND (it1.id in ('19'))
