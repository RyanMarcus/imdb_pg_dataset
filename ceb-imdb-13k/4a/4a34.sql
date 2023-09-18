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
AND (n.name_pcode_nf in ('A2352','A3432','B6341','E621','F6362','G2342','I12','J16','J562','K1541','P6125','S3162','S52'))
AND (ci.note in ('(actors director)','(archive footage)','(creative manager)','(director of photography)','(planning)','(producer)','(series producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
