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
AND (n.gender in ('f','m') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A4524','A531','C2421','D5235','D5425','D5431','D545','E145','E2565','E425','E6536','H5624','J3165','J4215','J651','L41','M2615','M6314','N3516','R1216','R1563','R2326','S252','Y2321') OR n.name_pcode_nf IS NULL)
AND (ci.note in ('(credit only)','(executive producer)','(producer)','(production assistant)','(script supervisor)','(voice) (uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','cinematographer','director','miscellaneous crew','producer'))
AND (it1.id in ('25'))
