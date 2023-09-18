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
AND (n.name_pcode_nf in ('A4525','B5614','B6516','C451','D562','F6312','F6526','G6252','H6434','J253','J3153','J4653','K6413','L652','M2425','M6352','O3245','P3624','R25','S1325','S4356','S5212','W3525','W4523','X1654'))
AND (ci.note in ('(archive footage)','(co-producer)','(consulting producer)','(creator)','(producer)','(screenplay)','(uncredited)','(voice)','(voice: Japanese version)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','editor','producer','production designer','writer'))
AND (it1.id in ('26'))
