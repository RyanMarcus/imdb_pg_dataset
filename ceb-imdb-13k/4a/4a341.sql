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
AND (n.name_pcode_nf in ('A4251','A5353','B6353','C6212','C6245','C6453','E5425','F6523','G6216','J2352','J262','K6452','M6232','M6265','P4126','R516','T5234','T5242'))
AND (ci.note in ('(coordinating producer)','(creative consultant)','(executive producer)','(producer)','(producer: FUNimation)','(production coordinator)','(production team)','(technical director)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
