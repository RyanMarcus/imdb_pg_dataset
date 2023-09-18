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
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('B124','B5346','B6346','C262','C4163','C6431','F4145','J413','L512','L5341','M1526','M6562','S6156','T2625','Y6253','Z52'))
AND (ci.note in ('(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','writer'))
AND (it1.id in ('31'))
