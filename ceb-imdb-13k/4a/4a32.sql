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
AND (n.name_pcode_nf in ('C2526','D4524','D5241','E2536','E5262','H4162','K6526','M2414','M2425','M2462','R2635','S3123','T616','V2652','V5214','W4532'))
AND (ci.note in ('(producer)','(voice)','(voice: English version)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','editor','producer','writer'))
AND (it1.id in ('19'))
