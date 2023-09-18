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
AND (n.name_pcode_nf in ('A4546','B1453','D145','I1616','J5245','K52','K53','K5345','M2512','R3261'))
AND (ci.note in ('(voice)','(voice: English version) (as Ken Gates)') OR ci.note IS NULL)
AND (rt.role in ('actor'))
AND (it1.id in ('37'))
