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
AND (n.name_pcode_nf in ('B3241','B6314','D14','D56','G12','G6','G6363','H62','J2163','J5215','J5234','K4265','K6235','L2514','L625','M23','M2462','M3253','M4263','M6142','M6362','R5314','S5351'))
AND (ci.note in ('(creator)','(director of photography)','(executive producer)','(floor manager)','(multicam director)','(producer)','(production assistant)','(production coordinator)','(production secretary)','(screenplay)','(script supervisor)','(studio manager)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
