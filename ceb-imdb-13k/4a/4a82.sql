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
AND (n.name_pcode_nf in ('A5353','B6534','C625','D1315','D5452','E6216','E6253','J5416','M2454','M6241','P3625','P3632','S3125','W4562'))
AND (ci.note IS NULL)
AND (rt.role in ('actor'))
AND (it1.id in ('19'))
