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
AND (n.name_pcode_nf in ('A5361','A6146','B6342','C5426','D2','D5146','D5262','E5356','F352','H4241','J362','K3123','L3123','L316','R2425','S1342','S5364','S5425','V12','V5323'))
AND (ci.note in ('(head writer)','(nucleus director)','(producer)','(production coordinator)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('26'))
