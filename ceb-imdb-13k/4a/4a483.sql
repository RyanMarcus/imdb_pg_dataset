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
AND (n.name_pcode_nf in ('C4342','C545','D162','E1625','E3215','E4216','G5362','J1612','J5151','J5164','J565','K1532','L143','L4316','M3162','M6232','P3625','S521','T4165','Y232','Z6526'))
AND (ci.note in ('(executive producer: RTL)','(linguistics consultant)','(producer)','(production assistant)','(production estimator)','(publicist)','(segment producer)','(story)','(uncredited)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('19'))
