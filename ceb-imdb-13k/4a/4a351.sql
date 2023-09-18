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
AND (n.name_pcode_nf in ('A4251','B323','B6164','C345','D6426','E1321','E5346','F4253','G5635','I26','I3435','K6526','L4231','L5343','M2153','M5635','M6241','P35','R154','S1263','S2316','S3251','S4213','T5424','Y3625'))
AND (ci.note in ('(as Barbara Luna)','(assistant: Rodrigo Garcia)','(executive producer)','(senior vice president)') OR ci.note IS NULL)
AND (rt.role in ('actress','editor','miscellaneous crew','producer'))
AND (it1.id in ('34'))
