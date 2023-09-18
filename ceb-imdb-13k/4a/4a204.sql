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
AND (n.name_pcode_nf in ('B3462','C6312','D6316','E4262','G1643','G262','I2141','I5252','J5352','L5265','M6314','R5162','S3256','S4262','S616','S6162','V2535','V4652','Y2562'))
AND (ci.note in ('(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','writer'))
AND (it1.id in ('34'))
