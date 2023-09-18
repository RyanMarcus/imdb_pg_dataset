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
AND (n.gender in ('f') OR n.gender IS NULL)
AND (n.name_pcode_nf in ('C6451','E4213','E6254','H5326','H6214','H6524','J653','K5126','K56','L6521','M23','M252','M265','M6232','P4123','S4512','T5256','T561','V5316'))
AND (ci.note in ('(co-executive producer)','(credit only)','(director of photography)','(executive producer)','(mcr production assistant)','(producer)','(production coordinator)','(stage manager)','(unspecified crew member)','(voice)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('31'))
