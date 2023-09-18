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
AND (n.name_pcode_nf in ('A1654','A2362','A4252','A5263','B6462','D235','D5464','E6246','H2425','J2432','K6523','K6532','L16','L5342','M415','N5236','P4125','P6545','S35','S6235','W53','Z4261'))
AND (ci.note in ('(as Linda Lacoste)','(credit only)','(dancer: title sequence)','(script supervisor)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew'))
AND (it1.id in ('22'))
