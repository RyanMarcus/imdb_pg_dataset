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
AND (n.name_pcode_nf in ('A5243','A5364','B6162','C452','D5165','D5246','D5351','G623','J2126','J5135','J5354','K6231','K6232','L6245','L6263','M2416','M6541','N2425','P3623','R5132','T352','T5212','T6212','Y2'))
AND (ci.note in ('(assistant to executive producer)','(co-producer)','(coordinating producer)','(director of photography) (as Romy Vitug)','(executive producer)','(producer)','(production coordinator)','(program associate)','(story editor)','(technical director)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('37'))
