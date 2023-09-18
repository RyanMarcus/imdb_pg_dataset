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
AND (n.name_pcode_nf in ('A45','B1264','B6514','D2142','D2531','E6245','F216','J2342','M6236','R5352','T6535','V2365'))
AND (ci.note in ('(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','writer'))
AND (it1.id in ('34'))
