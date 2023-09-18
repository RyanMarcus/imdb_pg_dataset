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
AND (n.name_pcode_nf in ('A5313','A5325','C2524','C6256','E4236','F6525','G6253','H3635','J4232','J5234','L5252','M4261','M5265','M5325','M625','M652','N4316','P3625','S3216','S6262','T6263','T6525','V212'))
AND (ci.note in ('(assistant producer)','(creative consultant)','(deko operator)','(director of photography)','(executive producer)','(location manager)','(main title design)','(producer)','(production administrator)','(production coordinator)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','costume designer','editor','miscellaneous crew','producer','production designer'))
AND (it1.id in ('34'))
