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
AND (n.name_pcode_nf in ('A623','B4246','B5325','D5654','G2526','J2561','J52','L2124','M3632','M6212','N1453','N2423','O4165','O4652','Q5253','T5246','V4356','W2423'))
AND (ci.note in ('(as Cruz y Raya)','(as Jason Robards)','(producer)','(switcher director)','(uncredited)','(voice)','(voice: English version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
