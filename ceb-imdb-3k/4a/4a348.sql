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
AND (n.name_pcode_nf in ('B4521','C435','C6245','D5241','D535','E5161','E5165','H32','I6515','K2526','K3161','K6515','L6263','L6414','L6541','M6236','P5414','S3625','S4521','T261','V1524'))
AND (ci.note IS NULL)
AND (rt.role in ('actress'))
AND (it1.id in ('26'))
