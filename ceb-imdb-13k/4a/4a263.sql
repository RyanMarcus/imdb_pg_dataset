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
AND (n.name_pcode_nf in ('A26','F253','J23','J5262','K36','K3654','L2','L2136','L6232','M2532','O26','P4612','R525','S3146','W4163'))
AND (ci.note in ('(as Lori Eskowitz)','(executive producer)','(president: Tyler Perry Studios)','(producer)','(production accountant)','(talent coordinator)','(technical account head)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','costume designer','director','miscellaneous crew','producer'))
AND (it1.id in ('19'))
