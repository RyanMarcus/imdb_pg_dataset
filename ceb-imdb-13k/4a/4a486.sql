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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A4253','G636','J6252','P23','P4152','S5361'))
AND (ci.note in ('(archive librarian)','(location manager)','(producer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
