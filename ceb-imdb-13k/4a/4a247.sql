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
AND (n.name_pcode_nf in ('A3434','D1314','D1642','E25','F6262','G1623','G6263','H325','K4342','K6426','L262','M1426','P3624','P4','S5346'))
AND (ci.note in ('(celebrity producer)','(creator)','(director of photography)','(location manager)','(story)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
