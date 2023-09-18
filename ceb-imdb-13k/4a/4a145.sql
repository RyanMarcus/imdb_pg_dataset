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
AND (n.name_pcode_nf in ('B6516','C6265','E4525','G2136','H4136','H6436','I245','J2516','K6235','M2432','M2624','N3532','P3252','P4265','P6414','T532','V6253'))
AND (ci.note in ('(characters)','(consulting producer)','(field producer)','(producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','director','editor','producer','writer'))
AND (it1.id in ('26'))
