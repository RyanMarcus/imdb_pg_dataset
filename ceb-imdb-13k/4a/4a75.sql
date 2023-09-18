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
AND (n.name_pcode_nf in ('A5343','B6162','C6456','D5265','E426','F6525','H3162','J356','J3652','J463','J5232','J5346','J6351','K6252','L5632','M2123','M6361','P5463','R342','S1216','S146','S616','T3524'))
AND (ci.note in ('(child acting coach)','(unit publicist) (uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew'))
AND (it1.id in ('25'))
