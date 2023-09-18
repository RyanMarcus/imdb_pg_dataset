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
AND (n.name_pcode_nf in ('A6512','C246','D1323','F216','F6316','I1516','I5625','J2156','J262','J43','J5251','L42','M2413','N2436','P2426','R5153','R5452','S3632','S5361','T235','V5213'))
AND (ci.note in ('(acting director)','(executive producer)','(producer)','(uncredited)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
