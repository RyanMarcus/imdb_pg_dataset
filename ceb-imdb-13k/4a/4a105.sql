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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A6525','B5212','B523','B6535','C6424','D4532','E3452','G1641','G6263','H614','I4256','J45','J524','K3514','L6514','L6521','M2652','S325','S52','V2514'))
AND (ci.note in ('(uncredited)','(voice)','(voice: English version)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director'))
AND (it1.id in ('22'))
