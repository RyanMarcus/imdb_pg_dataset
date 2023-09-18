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
AND (n.name_pcode_nf in ('C4563','D6215','D624','J524','J6523','K346','M3236','P4532','T5253','W4542'))
AND (ci.note in ('(executive producer: BBC)','(producer)','(production assistant)','(stage manager)') OR ci.note IS NULL)
AND (rt.role in ('actress','editor','miscellaneous crew','producer','production designer'))
AND (it1.id in ('26'))
