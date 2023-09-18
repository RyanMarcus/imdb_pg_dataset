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
AND (n.name_pcode_nf in ('A453','A5246','B4365','C6261','D25','E4213','F4254','F6353','G6251','G6312','I3435','K4236','K5256','K6325','M6525','M6532','P2312','S6165','T621','X2365'))
AND (ci.note in ('(co-executive producer)','(consulting producer)','(executive producer)','(horse wrangler)','(producer)','(technical advisor)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','cinematographer','costume designer','director','editor','miscellaneous crew','producer','writer'))
AND (it1.id in ('26'))
