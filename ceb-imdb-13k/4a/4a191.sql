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
AND (n.name_pcode_nf in ('B1252','E6214','G2326','G4541','J253','J5245','K2623','M6236','S565','T2523'))
AND (ci.note in ('(co-executive producer)','(director of photography)','(story editor)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer'))
AND (it1.id in ('19'))
