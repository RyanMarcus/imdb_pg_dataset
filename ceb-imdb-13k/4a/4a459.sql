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
AND (n.name_pcode_nf in ('A1245','B5156','D265','D5426','E6456','F5362','F6525','J2426','J25','J262','J5124','J52','J56','J6251','L1615','L2426','L3162','M3243','P1652','P3625','S6216','T3153','W4231'))
AND (ci.note in ('(as Pat Neely)','(as Welkett)','(co-executive producer)','(creator)','(executive story consultant) (as Earl Hamner)','(producer)','(technical supervisor)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('37'))
