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
AND (n.name_pcode_nf in ('A4632','A65','B6412','B6542','D242','E3123','E62','F2325','G4563','J5341','J5365','K4325','K656','L3616','M2152','P3162','P412','P4126','S3151','S3162','S63','T5264','W4512'))
AND (ci.note in ('(co-director)','(creator) (as Michael Evans)','(creator)','(executive producer)','(uncredited)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','director','editor','producer','production designer','writer'))
AND (it1.id in ('31'))
