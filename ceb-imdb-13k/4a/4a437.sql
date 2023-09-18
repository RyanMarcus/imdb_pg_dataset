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
AND (n.name_pcode_nf in ('A5315','D6436','G6312','J124','M6351','O262','P3265','P3625','P4143','W4536'))
AND (ci.note in ('(executive producer)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','producer','writer'))
AND (it1.id in ('26'))
