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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5242','B6231','B6316','E1356','E2345','E4215','E5425','G6352','H6532','J5136','J5165','K6526','L2143','L6365','P3246','P3621','S4564','S5262','T5242'))
AND (ci.note in ('(contributing writer)','(director of photography)','(production assistant)','(supervising producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
