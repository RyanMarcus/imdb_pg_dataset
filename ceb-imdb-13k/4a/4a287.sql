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
AND (n.name_pcode_nf in ('A2315','A4515','B6153','B6242','C252','C2536','D1325','E6416','G4163','G6534','I524','J5235','J6512','K1524','K253','L5216','N4525','R4135','S2352','S5265','T3621','T4','V5253'))
AND (ci.note in ('(co-executive producer)','(credit only)','(producer)','(supervising producer)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer','writer'))
AND (it1.id in ('32'))
