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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('B6526','C6165','D56','F6341','J2','M4342','M5612','S3126','T6545'))
AND (ci.note in ('(additional story material)','(creator)','(original concept: ABS-CBN Content, Research and Development) (as Manny Buising)','(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
