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
AND (n.name_pcode_nf in ('D3625','J152','J1621','M2452','O6254','P4135','S3452','S352','S353','S5262','Y2525'))
AND (ci.note in ('(as Sid Hickox)','(executive producer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','producer'))
AND (it1.id in ('19'))
