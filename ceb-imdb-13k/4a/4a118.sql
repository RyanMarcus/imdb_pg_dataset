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
AND (n.name_pcode_nf in ('B6325','C2145','D5245','D5626','G6561','I2161','J5142','L24','M6535','O3432','R356','R5625','S2325','S5246','S5265','T2'))
AND (ci.note in ('(creator)','(credit only)','(producer) (uncredited)','(producer)','(production assistant)','(script supervisor)','(voice: Japanese version)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
