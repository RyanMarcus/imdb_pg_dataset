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
AND (n.name_pcode_nf in ('B6563','D1321','D1323','D134','D6242','J5265','P3621','P453','R1635','S2613','T6363'))
AND (ci.note in ('(producer)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','producer','production designer','writer'))
AND (it1.id in ('31'))
