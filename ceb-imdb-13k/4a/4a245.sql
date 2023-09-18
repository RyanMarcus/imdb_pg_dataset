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
AND (n.name_pcode_nf in ('B6365','B6512','C454','D1546','D5254','E5462','G1643','J2152','L52','M2434','M2462','M2524','N4546','P3615','P3652','P4265','S5324','T542','T656','W4524','Y6253'))
AND (ci.note in ('(executive producer)','(financial)','(producer)','(uncredited)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','costume designer','director','editor','miscellaneous crew','producer'))
AND (it1.id in ('25'))
