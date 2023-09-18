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
AND (n.name_pcode_nf in ('A5352','B6563','D1312','D1352','E4213','J5163','J5253','J5426','L252','M6235','M6352','R2636','S3151'))
AND (ci.note in ('(assistant location manager)','(executive producer)','(medical consultant)','(production assistant)','(production coordinator)','(production secretary)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('26'))
