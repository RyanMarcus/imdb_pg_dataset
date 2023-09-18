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
AND (n.name_pcode_nf in ('A3425','B2562','B32','C3454','C4626','D526','D5656','E125','E1265','E4535','F4652','G64','M4525','M6362','M6452','N5316','R2416','S536','V4535','V5256','Y2365'))
AND (ci.note in ('(dialogue coach)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actress','director','miscellaneous crew'))
AND (it1.id in ('19'))
