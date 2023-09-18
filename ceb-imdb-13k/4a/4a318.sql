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
AND (n.name_pcode_nf in ('A452','A5352','A6532','B326','C6236','E3636','G6212','H6153','J2163','J512','J5232','J5236','M2352','M2423','M4245','M6351','M6523','R1542','R1631','S61','T3563'))
AND (ci.note in ('(creator)','(director of photography)','(executive producer)','(head of production administration)','(producer) (outdoors)','(producer)','(production accountant)','(production coordinator) (as Joanne Oboyski-Battelene)','(series director)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('31'))
