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
AND (n.name_pcode_nf in ('A5342','B34','B431','C6425','E2623','J1656','J2352','J4656','J5','J6325','K353','L134','M2165','M2532','P3615','P423','T5252','W4536'))
AND (ci.note in ('(assistant producer)','(executive producer)','(production accountant)','(researcher)','(staff writer)','(voice)','(voice: English version)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('25'))
