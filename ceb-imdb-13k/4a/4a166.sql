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
AND (n.name_pcode_nf in ('A4263','B6535','D53','F6525','G4526','G625','G6532','L2526','M252','P6362','R1416','R1635','R2165','V3656'))
AND (ci.note in ('(producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','producer'))
AND (it1.id in ('37'))
