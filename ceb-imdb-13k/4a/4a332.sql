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
AND (n.name_pcode_nf in ('A6512','B6532','D5312','E5423','F3212','G6316','I2121','J2125','M2352','M2451','M4125','N3565','O5631','P4261','P4652','P645','R3145','R4126','W6352'))
AND (ci.note in ('(developer)','(production assistant)','(production team)','(story producer)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('22'))
