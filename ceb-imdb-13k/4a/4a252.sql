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
AND (n.name_pcode_nf in ('B6534','G6265','J263','K153','K6516','L6262','M2351','N3421','R2634','R5354'))
AND (ci.note in ('(as Karen J. Braverman)','(as Richard Lemieuvre)','(associate producer)','(co-producer)','(producer)','(program associate)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','costume designer','miscellaneous crew','producer','writer'))
AND (it1.id in ('22'))
