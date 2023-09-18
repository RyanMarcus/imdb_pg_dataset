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
AND (n.name_pcode_nf in ('B3252','C414','D262','E52','E6523','G253','J1232','J2352','J656','L2614','R2631','S316','Z252'))
AND (ci.note in ('(head writer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','writer'))
AND (it1.id in ('26'))
