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
AND (n.gender in ('m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A3651','A5352','C4514','E256','G6215','K6423','L65','P6125','P636','R2452','S1326','S2524'))
AND (ci.note in ('(as Audrey Bansmer)','(executive producer)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','costume designer','director','editor','producer','writer'))
AND (it1.id in ('37'))
