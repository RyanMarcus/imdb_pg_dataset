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
AND (n.name_pcode_nf in ('A4524','E3632','G1641','G6212','J236','J265','J5213','J5215','J5254','J5635','M6265','N2421','N2423','P3632','W4524'))
AND (ci.note IS NULL)
AND (rt.role in ('actor'))
AND (it1.id in ('31'))
