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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('D5612','E141','E3565','J3623','S3145','T1365','T6234','Y2545','Y5216'))
AND (ci.note in ('(storyliner)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','writer'))
AND (it1.id in ('19'))
