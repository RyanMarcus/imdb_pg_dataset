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
AND (n.name_pcode_nf in ('A4532','B4251','B5253','D1321','F4562','G1642','J5251','J6343','M234','M2524','M4261','M6325','P1454','P4162','P452','P4562','R2153','S3152','S5635','V3653'))
AND (ci.note in ('(assistant location manager)','(associate producer)','(co-producer)','(producer)','(production assistant)','(script supervisor)','(uncredited)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
