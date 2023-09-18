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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A3262','B5365','C3253','D1616','K23','K3263','K6526','L2656','M2652','N5163','S2351','U6541','X5252'))
AND (ci.note in ('(assistant: Rodrigo Garcia)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','miscellaneous crew','writer'))
AND (it1.id in ('26'))
