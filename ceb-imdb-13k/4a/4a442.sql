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
AND (n.name_pcode_nf in ('A526','B6535','D162','F545','H4123','J1235','J524','J5616','K543','L2425','L2525','L3142','L4526','M4241','M426','M6216','N215','P4263','P5232','S3632','T45','T625','T64','V4651'))
AND (ci.note in ('(credit only)','(executive producer)','(producer)','(production assistant)','(production coordinator)','(promo producer)','(script supervisor)','(talent coordinator)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
