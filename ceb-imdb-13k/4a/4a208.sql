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
AND (n.name_pcode_nf in ('A3652','A4215','B4525','B5163','B525','B6514','C4323','C6431','E6232','G1623','J2452','J4214','J426','J5262','J5356','K3652','M2516','O4162','P2524','R1635','R5162','T512','T5631'))
AND (ci.note in ('(assistant producer)','(associate executive producer)','(associate producer) (as Jocelyn Mangilit-Tarce)','(associate producer)','(ccm in-house director)','(director of photography)','(executive producer)','(producer) (as Jules Levy)','(producer)','(production assistant)','(story)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('32'))
