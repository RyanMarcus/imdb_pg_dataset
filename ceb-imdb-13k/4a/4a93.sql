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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4354','D5654','G6345','J6316','J6524','M1536','M241','M32','S2316','V2412'))
AND (ci.note in ('(creator)','(executive producer)','(technical manager)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('25'))
