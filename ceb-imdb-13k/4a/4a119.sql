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
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A3654','A6532','D5313','D5424','F4652','G2152','J2535','J4516','J5435','K6535','L5265','L6162','N2621','P3624','R5125','R5356','S1235','S3152'))
AND (ci.note in ('(actors director)','(co-producer)','(executive producer)','(producer: ORF)','(production assistant)','(script supervisor)','(supervising producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('32'))
