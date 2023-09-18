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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('A5165','C6234','E4562','F6525','G6325','L25','M5326','M6243','M6252','M652','R2562','S2525','V2362','V4535'))
AND (ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('19'))
