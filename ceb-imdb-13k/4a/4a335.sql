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
AND (n.name_pcode_nf in ('A2356','A452','D5351','E3632','I6562','J5245','J6354','K3232','K5313','M2421','M2456','M5432','M625','R2625','S3256','S5313','T253','T5165','T6245'))
AND (ci.note in ('(associate producer)','(co-executive producer)','(director of photography)','(executive producer)','(field producer)','(producer)','(senior producer)','(series director)','(supervising producer)','(technical director)','(tutor)','(uncredited)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
