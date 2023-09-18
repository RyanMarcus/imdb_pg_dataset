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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A6561','B5326','D1326','D1523','D2453','D5245','D546','J2426','J2523','J561','K1624','L6216','L6536','M2431','M2525','M262','P3625','R2412','R2424','R5652','S5632','T532','T6132','W4526'))
AND (ci.note in ('(assistant producer)','(associate producer)','(co-producer)','(director of photography) (as William Jurgensen)','(executive producer) (as Rosselle Soldao)','(executive producer)','(producer)','(production coordinator)','(publicist)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
