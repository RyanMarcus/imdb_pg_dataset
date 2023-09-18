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
AND (n.name_pcode_nf in ('A25','A4264','A5132','E1215','H5634','H6252','L5636','M4525','N542','P4153','V5256','Y5253'))
AND (ci.note in ('(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('25'))
