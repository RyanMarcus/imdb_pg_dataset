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
AND (n.name_pcode_nf in ('A241','A5364','A5654','B3242','B4235','C532','C6431','D514','D5253','D5452','D6525','G5432','G6451','G6534','J2136','J314','K245','K5263','L2146','M3415','R353','S3126','S6253'))
AND (ci.note in ('(executive producer)','(producer)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','producer','production designer','writer'))
AND (it1.id in ('26'))
