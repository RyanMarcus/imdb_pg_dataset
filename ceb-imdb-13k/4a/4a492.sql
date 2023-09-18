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
AND (n.name_pcode_nf in ('A262','A5252','B3241','B616','D1314','D5451','J4314','K1535','K16','L5141','L5152','M2321','M252','N2421','N3541','P3616','P4215','R3265','Y5215'))
AND (ci.note in ('(creator)','(executive producer)','(location manager)','(novel)','(original idea)','(producer)','(producer: ORF)','(production accountant)','(production assistant)','(script assistant)','(story editor) (as Li-an Poloyapoy)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('composer','costume designer','director','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('32'))
