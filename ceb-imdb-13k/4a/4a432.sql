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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A23','B4236','B4246','D2525','E4525','E6515','F4216','G342','H3246','J3615','J513','L2165','L3264','L5256','O3165','S3','S6454','W54'))
AND (ci.note in ('(idea) (uncredited)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','writer'))
AND (it1.id in ('25'))
