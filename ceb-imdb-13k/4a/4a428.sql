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
AND (n.name_pcode_nf in ('C6354','D1326','E2362','J215','J6163','K262','K6516','L6262','M6232','M625','M6263','M6265','M6341','R1265','S3142','S5625','S6452','V5256'))
AND (ci.note in ('(co-executive producer)','(creator)','(executive producer)','(producer)','(production assistant)','(production coordinator)','(researcher)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('19'))
