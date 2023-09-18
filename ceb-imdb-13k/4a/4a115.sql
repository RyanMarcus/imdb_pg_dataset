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
AND (n.name_pcode_nf in ('A4562','A5214','D5624','J61','M4261','O3432','P5216','R4162','S2316','S314'))
AND (ci.note in ('(associate producer)','(production assistant)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
