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
AND (n.name_pcode_nf in ('A5625','B6321','C4325','C6251','D5436','E6242','G1642','G6214','G6236','G6256','H4532','J2156','J341','J452','J5252','J6351','M2545','M6264','N4214','R1632','R2452','R5345','S5125','W5352'))
AND (ci.note in ('(creative manager)','(creator)','(director of photography)','(executive producer)','(line producer)','(original concept)','(producer)','(production assistant)','(production coordinator)','(sales representative)','(scenario)','(shipping coordinator)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
