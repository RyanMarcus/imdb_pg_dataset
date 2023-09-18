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
AND (n.name_pcode_nf in ('A5265','B6215','B6531','D5425','D6342','E3246','F6524','J3435','J5421','J6245','L621','N6563','U6265'))
AND (ci.note in ('(archive footage) (as Franklin Delano Roosevelt)','(archive footage) (as Sen. Barack Obama)','(horse wrangler)','(uncredited)','(voice: English version)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','costume designer','miscellaneous crew','writer'))
AND (it1.id in ('37'))
