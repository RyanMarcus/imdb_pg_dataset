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
AND (n.name_pcode_nf in ('A4314','B2624','C4163','E4565','E6542','F4231','F6345','G4136','G65','I152','J425','L5414','M2451','M2521','N2164','N425','O6545','S3154','S462','T5626','W4316','W46'))
AND (ci.note in ('(as Lemuelle Pelayo)','(clearance coordinator)','(co-producer)','(executive producer) (as Gail Patrick Jackson)','(executive producer)','(producer)','(uncredited)','(voice)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
