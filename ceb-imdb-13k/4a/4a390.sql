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
AND (n.name_pcode_nf in ('A4252','B165','B4136','B5316','D1253','D1316','H2153','H6356','L3','M3626','M5356','N35','N5326','R1352','S5135','T6215'))
AND (ci.note in ('(producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','producer'))
AND (it1.id in ('25'))
