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
AND (n.name_pcode_nf in ('A5152','A5362','C612','C6235','D1626','D5162','F4256','G6316','I6526','K4523','L2545','L3263','L5165','M646','N6212'))
AND (ci.note in ('(Animax Asia dub)','(archive footage)') OR ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('31'))
