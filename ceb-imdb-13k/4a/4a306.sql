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
AND (n.name_pcode_nf in ('B6526','C4532','C4621','C6465','D5414','D6312','E3546','F6523','J142','J232','J316','J5253','K1526','L5245','M3641','M5315','P3536','R2426','R2612','S232','S3165','S3526','S3542'))
AND (ci.note in ('(as Duarte Vítor)','(as Johan)','(assistant to directors)','(associate producer)','(co-executive producer)','(consulting producer)','(created by)','(executive producer)','(producer)','(production assistant)','(production coordinator)','(script supervisor)','(supervising producer)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
