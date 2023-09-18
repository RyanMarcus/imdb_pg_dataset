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
AND (n.name_pcode_nf in ('A4214','A5142','A5162','A6521','C6432','E6262','J2452','K315','K4242','L4362','M153','S2324','S2632'))
AND (ci.note in ('(as Sigrid M. Schnückel)','(executive producer)','(location manager)','(producer)','(production assistant) (as Keila Marie Celso)','(script writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
