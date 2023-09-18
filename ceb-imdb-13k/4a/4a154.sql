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
AND (n.name_pcode_nf in ('C4346','C4535','E3635','E625','G1546','J2124','J2362','J2526','J516','K1514','K2542','L6214','M2163','M3156','O4265','R21','R4136','S2523','S5212'))
AND (ci.note in ('(co-executive producer)','(executive producer)','(executive producer: TV3)','(exteriors)','(producer)','(screenplay)','(segment producer)','(technical advisor: Los Angeles Police Department) (as Chief Edward M. Davis)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('32'))
