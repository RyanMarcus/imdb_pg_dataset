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
AND (n.gender in ('f','m'))
AND (n.name_pcode_nf in ('A1343','A5364','B1652','E3534','F6362','J4215','K5425','L2525','L4216','L432','M654','N2424','R5265','S3125','S3214','S6216','S6525','V4264'))
AND (ci.note in ('(producer)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','producer'))
AND (it1.id in ('26'))
