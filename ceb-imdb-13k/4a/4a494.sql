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
AND (n.name_pcode_nf in ('A2363','C26','C3262','D1534','D464','D5262','E2642','I1352','J12','J6525','K5125','K6545','M4314','R1632','U3412','W5343'))
AND (ci.note in ('(as Divine)','(as Jurnee Smollett)','(nucleus director)','(production manager officer) (as Karen Almeida-Pedrealba)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','director','miscellaneous crew'))
AND (it1.id in ('37'))
