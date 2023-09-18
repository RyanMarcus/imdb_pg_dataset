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
AND (n.name_pcode_nf in ('A6145','B6541','D5','D5435','J5234','K5362','K6423','L6125','M3152','M62','M6456','R5165','S6326','W4364','W5323'))
AND (ci.note in ('(as Tito Fernández)','(associate producer)','(executive producer)','(producer)','(production coordinator)','(supervising producer)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
