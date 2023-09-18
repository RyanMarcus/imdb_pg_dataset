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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A3462','A5462','C6252','D524','E2364','E3523','K5342','M5325','P3623','P4162','P4234','R236','S1625','S3135','Y2'))
AND (ci.note in ('(co-producer)','(coordinating producer) (as Kendall E. Canner)','(creator)','(original picture)','(series producer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
