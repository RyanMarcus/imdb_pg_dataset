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
AND (n.name_pcode_nf in ('A2436','B3534','B6563','C6231','D2125','D5435','H4124','L12','N5634','P5624','R3142','R3562','S316','T4516','V4236'))
AND (ci.note in ('(news editor)','(voice: English version) (as Christopher R. Sabat)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','director','miscellaneous crew'))
AND (it1.id in ('32'))
