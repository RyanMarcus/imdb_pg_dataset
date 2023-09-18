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
AND (n.name_pcode_nf in ('A1643','A4253','A546','B4521','C3651','C5','C6531','E3142','F5414','I1525','I2145','K1463','K3435','K6235','L2325','L4316','L5426','M2415','M636','M6414','N652','P4216','S2615','Y2'))
AND (ci.note in ('(actors director)','(executive producer)','(head animal trainer)','(producer)','(supervising executive)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer'))
AND (it1.id in ('32'))
