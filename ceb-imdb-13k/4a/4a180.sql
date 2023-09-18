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
AND (n.name_pcode_nf in ('A232','A2424','A5361','D1325','D1353','F4125','G654','L6142','M2452','M52','M6312','R5362','R5425','S6153','V1541'))
AND (ci.note in ('(assistant to producers)','(associate producer) (as Roy Nelson Rojas Vargas)','(associate producer)','(segment director)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
