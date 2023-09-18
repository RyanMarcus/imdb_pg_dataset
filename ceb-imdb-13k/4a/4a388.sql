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
AND (n.name_pcode_nf in ('A4253','C25','C4323','C5456','C6423','C6424','D132','H42','J4562','J5241','J6315','K5164','K53','N526','N562','O4134','R2626','R5432','S51'))
AND (ci.note in ('(line producer)','(producer)','(vice president of development)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
