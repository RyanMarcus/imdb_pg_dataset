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
AND (n.name_pcode_nf in ('H6126','H6163','K2452','L6236','L6531','M5242','M6234','M6242','O2512','R2424','S5256','T5231','V5253'))
AND (ci.note in ('(as Herb Sargent)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','writer'))
AND (it1.id in ('37'))
