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
AND (n.name_pcode_nf in ('A3525','A4212','C2616','E3623','G16','H2536','H6353','K523','M2436','M3523','M4524','R2162','S3535','S3632','S526','T5625','W525','X1653'))
AND (ci.note in ('(director of photography)','(producer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','producer','writer'))
AND (it1.id in ('32'))
