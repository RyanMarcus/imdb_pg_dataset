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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('A425','B415','D1324','D1616','D5415','D5425','H432','J254','J5125','J5232','J5253','J562','L245','L253','L6236','M23','M253','N2426','P4523','R2621','S2626','S3542','S6562'))
AND (ci.note in ('(as Shyra Joaquin)','(associate head writer)','(creator)','(executive producer)','(key craft service) (uncredited)','(producer)','(production assistant)','(production coordinator)','(series producer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('25'))
