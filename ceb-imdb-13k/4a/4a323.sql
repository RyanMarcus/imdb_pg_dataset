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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('C5312','C6424','C6431','D1353','D2525','D51','D5414','E2525','E6212','F6323','G6531','I6152','J256','L5265','M6214','M6262','P2425','R2162','R4126','R5636','S2341','S2532','T32') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(associate producer)','(co-producer)','(creator)','(line producer)','(location manager)','(mcr production assistant)','(producer)','(script coordinator)','(staff)','(story editor)','(story producer)') OR ci.note IS NULL)
AND (rt.role in ('composer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('19'))
