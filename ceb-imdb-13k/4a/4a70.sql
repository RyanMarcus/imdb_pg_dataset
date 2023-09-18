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
AND (n.name_pcode_nf in ('A2363','B6563','G6142','G6352','H2416','L1625','M231','M2452','M2564','M6513','R5612','S4216','S4615'))
AND (ci.note in ('(associate producer) (as Hazel Bolisay Parfan)','(associate producer)','(creative supervision)','(creator)','(executive producer)','(master editor)') OR ci.note IS NULL)
AND (rt.role in ('actor','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('22'))
