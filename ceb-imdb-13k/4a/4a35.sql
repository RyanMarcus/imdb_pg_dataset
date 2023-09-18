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
AND (n.name_pcode_nf in ('A5351','C6452','G3236','K26','K6512','M4352','M5236','M6326','M6541','M6543','N345','W5325'))
AND (ci.note in ('(script editor)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','writer'))
AND (it1.id in ('31'))
