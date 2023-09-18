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
AND (n.gender IS NULL)
AND (n.name_pcode_nf in ('C6432','D3635','D5416','D5463','E2525','G2312','G6532','J1625','J236','J4536','J6265','J6526','K5252','K5362','K6235','L2364','L2452','M4532','M6235','M625','P3656','S3151','S53','U6241','W5352'))
AND (ci.note in ('(assistant producer)','(coordinating producer)','(designer)','(executive producer)','(line producer)','(location manager)','(mcr production assistant)','(other crew)','(producer)','(producer: Sotsû Agency)','(production accountant)','(production assistant)','(script supervisor) (as Les Hoyle)','(script supervisor)','(stage manager)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','director','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('26'))
