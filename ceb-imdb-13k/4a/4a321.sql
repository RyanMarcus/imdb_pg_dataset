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
AND (n.name_pcode_nf in ('A4252','C5435','D1262','D1352','D526','E6241','G5263','J412','J4524','J5235','J5351','L4521','M4535','M4542','M6145','M6541','N3412','N3516','P4521','R2356','R25','R2632','S2516','S2625','Y252'))
AND (ci.note in ('(executive producer)','(office coordinator)','(producer)','(production assistant)','(script supervisor)','(senior series producer)','(story)','(supervising producer)','(talent coordinator)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('26'))
