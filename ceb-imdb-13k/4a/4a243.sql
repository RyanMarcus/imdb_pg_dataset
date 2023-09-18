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
AND (n.name_pcode_nf in ('A2356','A4546','A5352','D1326','H5265','M3152','M325','R1315'))
AND (ci.note in ('(consulting producer)','(director of production technology)','(producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('32'))
