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
AND (n.name_pcode_nf in ('K525','L2513','L6521','M3462','P3635','S6262','T134'))
AND (ci.note in ('(audience page)','(office production assistant)','(production coordinator)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','miscellaneous crew','production designer'))
AND (it1.id in ('32'))
