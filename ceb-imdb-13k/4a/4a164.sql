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
AND (n.name_pcode_nf in ('A2623','D1352','D5436','D6215','F6524','I2523','K2562','L2615','M3526','R2632','S3145','T5212','W4536'))
AND (ci.note in ('(executive producer)','(producer)','(production assistant)') OR ci.note IS NULL)
AND (rt.role in ('actor','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
