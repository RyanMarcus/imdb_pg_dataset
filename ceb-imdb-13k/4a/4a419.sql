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
AND (n.name_pcode_nf in ('A4236','A5254','D1362','H6435','I3541','J26','J4365','J52','L2162','M2425','S3126','S3152','S3212','T5214','T5251'))
AND (ci.note in ('(as Idonnah Villarico)','(associate producer)','(audience coordinator)','(executive producer)','(producer)','(production assistant)','(technical consultant)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','editor','miscellaneous crew','producer'))
AND (it1.id in ('19'))
