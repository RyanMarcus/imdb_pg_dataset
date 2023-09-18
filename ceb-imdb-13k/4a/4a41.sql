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
AND (n.name_pcode_nf in ('A6364','B4236','C3453','C532','D1353','D5425','G526','J2351','J2354','J2532','M21','M4252','O4142','P4262','R5342','R5625','T2653','U4623','V4356'))
AND (ci.note in ('(as Gov. Mike Huckabee)','(producer)','(uncredited)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','costume designer','director','editor','producer','writer'))
AND (it1.id in ('31'))
