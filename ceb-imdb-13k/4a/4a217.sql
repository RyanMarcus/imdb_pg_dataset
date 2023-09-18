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
AND (n.name_pcode_nf in ('A41','A4256','A5236','E345','G4','G6431','J5216','K5165','K563','L4352','N2414','S415','S6212','X1632','Z4352'))
AND (ci.note in ('(adprom account head) (as Ivan Cruz)','(executive producer)','(head writer script)','(international marketing and distribution)','(production assistant)','(voice: Japanese version)','(written by) (as Janice Ferri Esser)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','director','miscellaneous crew','producer','writer'))
AND (it1.id in ('34'))
