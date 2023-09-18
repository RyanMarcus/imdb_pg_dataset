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
AND (n.name_pcode_nf in ('A53','A5345','C6352','C6452','D1352','G6253','I641','J2165','J2516','J5353','P2651','R2563','S2312','S3154','T32','T5325','T56'))
AND (ci.note in ('(associate producer)','(co-creator)','(executive producer)','(line producer)','(producer)','(producer: Fuji TV)','(production accountant)','(production assistant)','(script supervisor)','(supervising producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('director','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('22'))
