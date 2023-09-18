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
AND (n.name_pcode_nf in ('A2413','B4251','D4316','D52','D5214','D5265','F6526','H412','J3152','K526','K6216','L2425','M6125','N313','N3231','N3562','R4136','T5216'))
AND (ci.note in ('(producer)','(uncredited)','(vault manager)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
