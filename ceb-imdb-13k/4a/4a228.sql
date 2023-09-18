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
AND (n.name_pcode_nf in ('B2632','B6164','B626','C3162','C4362','C6425','C6426','G6265','H6435','J51','K2321','K4','K6235','L561','L6512','M2536','M4564','M6262','P4134','S21','S3165','S5425','V4356') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(as Mary Grace Ligon-Payumo)','(co-executive producer)','(comic strip)','(developer)','(director of photography) (as John C. Newby)','(executive producer)','(presenter)','(producer)','(production coordinator)','(script coordinator)','(supervising producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
