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
AND (n.name_pcode_nf in ('B2652','E3246','E3263','G6316','H2453','H4561','H5321','J1362','J362','J5362','K5146','N2162','O4165','P4216','R2656','R3213','S3156','T5125','U4136','W1236','Y252','Y5216'))
AND (ci.note in ('(as Land Vieira)','(director of photography)','(executive producer)','(location manager) (as Egay del Rosario)','(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
