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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('B2142','B6515','C3263','D1324','E1326','E5214','I5252','J6142','K354','L1564','M252','M5153','S521','W4525'))
AND (ci.note in ('(executive producer)','(uncredited)','(voice: English version)','(voice: Japanese version)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','producer','production designer'))
AND (it1.id in ('37'))
