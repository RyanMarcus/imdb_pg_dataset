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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('A5326','B6523','C432','C6454','E1356','E2524','E4543','H4534','H4565','H6431','J5136','J5163','J5256','J6516','K3252','K4562','L6245','M6263','P3625','P5261','S3125','S542','T5635','T6421'))
AND (ci.note in ('(assistant armorer) (uncredited)','(co-executive producer)','(producer)','(production assistant)','(public relations)','(script typist)','(story editor)','(voice actor)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('25'))
