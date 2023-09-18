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
AND (n.name_pcode_nf in ('A4526','B5452','C6462','D2416','E3243','E325','G6215','J2562','J5151','J5164','J526','J5326','J624','J6352','J6561','L2414','M2563','M5461','P4141','P4636','R56','S3154','S4253','W4626','W5342'))
AND (ci.note in ('(producer)','(uncredited)','(voice: English version)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','producer'))
AND (it1.id in ('19'))
