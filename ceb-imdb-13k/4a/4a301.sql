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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A5264','A6323','B6535','D1363','H256','H5265','J2141','J2356','J512','K364','L2152','L62','L623','M6321','M6515','N253','R625','S4151','W4514','W4521'))
AND (ci.note in ('(assistant producer)','(character design)','(director of photography)','(production accountant)','(production assistant)','(production coordinator)','(scenario)','(senior supervising producer)','(series producer)','(story editor)','(supervising producer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('32'))
