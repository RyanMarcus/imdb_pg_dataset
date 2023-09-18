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
AND (n.name_pcode_nf in ('A53','A6234','A6354','D52','G4642','H4356','H463','J4165','K4124','L16','L4313','M3243','M5363','M6421','M6525','P36','R5251','S5252','S6563'))
AND (ci.note in ('(as Ann Todd)','(creative consultant)','(pre-production coordinator)','(producer)','(researcher)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','miscellaneous crew','producer'))
AND (it1.id in ('19'))
