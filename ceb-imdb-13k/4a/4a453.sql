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
AND (n.name_pcode_nf in ('A4264','A5351','B6252','C6231','C6234','C6532','D1315','D5243','D6532','J253','J5234','J5352','M2415','M6452','R3414','S342','S3632','T1431','Y524'))
AND (ci.note in ('(adaptation)','(executive producer)','(helicopter pilot)','(producer)','(production staff)','(researcher)','(staging services)','(utility)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
