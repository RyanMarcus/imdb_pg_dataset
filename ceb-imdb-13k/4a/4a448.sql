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
AND (n.gender in ('m'))
AND (n.name_pcode_nf in ('B4521','B6535','C24','C6425','I2163','I5263','J252','K3615','L2363','R3264','S4152','T2563','T5252'))
AND (ci.note in ('(dialogue) (uncredited)','(producer)','(uncredited)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','producer','writer'))
AND (it1.id in ('22'))
