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
AND (n.name_pcode_nf in ('A5325','B1236','B41','C6425','D236','F6516','I5231','J2356','M262','S3125'))
AND (ci.note in ('(associate producer)','(creative consultant) (as Atty. Annette Gozon-Abrogar)','(producer)','(production assistant)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','miscellaneous crew','producer'))
AND (it1.id in ('22'))
