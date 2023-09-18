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
AND (n.name_pcode_nf in ('A2431','A5325','B4216','B6265','C4254','D1515','E1425','E1542','E1631','E3424','E4213','J3451','J4524','K2452','K2652','L2364','N1216','N5345','N6253','R1513','R5416','S2514','S2631'))
AND (ci.note in ('(as Brooke Harmon)','(assistant: segment producers) (uncredited)','(production coordinator)','(production secretary)','(voice director)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew'))
AND (it1.id in ('22'))
