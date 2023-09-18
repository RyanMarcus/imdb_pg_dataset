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
AND (n.name_pcode_nf in ('A542','B3143','B3626','B5325','B6215','B6234','C2164','J5432','L1235','M2156','M636','N1236','N45','R5252','S3562','S5324','Z2513'))
AND (ci.note in ('(producer)','(production assistant)','(switcher)','(uncredited)','(voice: English version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('31'))
