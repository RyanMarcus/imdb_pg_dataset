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
AND (n.name_pcode_nf in ('B6516','D2651','D5452','G6356','H524','J6121','J614','K35','L5235','O42','P4124','P5452','R2456','R3126','R362','R5124','S6562','T25','T52','V5232','W4364','Z3521'))
AND (ci.note in ('(co-producer)','(executive producer)','(producer)','(uncredited)','(video)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
