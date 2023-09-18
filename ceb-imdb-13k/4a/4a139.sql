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
AND (n.name_pcode_nf in ('B6536','C2525','D2623','D535','E5425','E652','F632','G5242','H6323','H6326','K6465','L2621','N2561','O6424','R5654','S142'))
AND (ci.note in ('(executive producer)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','producer','writer'))
AND (it1.id in ('37'))
