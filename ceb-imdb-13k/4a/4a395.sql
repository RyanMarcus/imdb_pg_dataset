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
AND (n.name_pcode_nf in ('A352','A3632','A6145','E5626','G6263','H6325','J1236','J1326','J51','J5212','J525','K2416','K3252','M2425','M2632','M6562','N265','T6252'))
AND (ci.note in ('(adprom associate)','(assistant floor manager)','(associate producer)','(developer)','(director of photography)','(executive producer)','(producer)','(story editor)','(voice)','(voice: Japanese version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
