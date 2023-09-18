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
AND (n.name_pcode_nf in ('A1631','B6161','B6365','D1364','D1451','G424','G6262','H1432','I5216','J6256','K1536','K525','L2363','L6361','M2346','M5626','P4616','R2126','R5212','S3156','T5256','T5636','T6214','T6451','V535'))
AND (ci.note in ('(administrator)','(adprom officer)','(as Westlife)','(business and legal affairs)','(creative consultant)','(director of photography)','(executive producer)','(line producer)','(producer)','(publicity manager)','(script coordinator)','(supervising editor)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','costume designer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
