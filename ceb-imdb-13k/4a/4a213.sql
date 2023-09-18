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
AND (n.name_pcode_nf in ('A562','C4641','D5212','G6262','G6316','G6352','I5216','J2126','L2416','L4513','M3245','P3245','P415','P4253','R23','S2135','Y1534'))
AND (ci.note in ('(co-producer)','(location manager)','(post-production producer)','(production assistance)','(production assistant) (as Donna Joy A. Pasion)','(researcher)','(script editor)','(script)','(story)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
