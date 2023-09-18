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
AND (n.name_pcode_nf in ('A5351','B6525','F6362','I235','K6216','O2431','Q5252','S1235','T5452','V2361'))
AND (ci.note in ('(executive producer)','(producer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','cinematographer','composer','editor','producer','writer'))
AND (it1.id in ('19'))
