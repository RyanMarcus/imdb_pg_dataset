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
AND (n.name_pcode_nf in ('A5624','B6353','E235','E3214','E6252','H4263','I1561','J3616','J6562','K6523','L5342','L6365','P4524','P512','S1531','S2323','S2525','S5254','S6142','T3145','V216','Z3236'))
AND (ci.note in ('(adprom head) (as Eric Salut)','(assistant producer)','(clearance supervisor)','(creator)','(executive producer)','(producer)','(production coordinator)','(script supervisor)','(story)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('34'))
