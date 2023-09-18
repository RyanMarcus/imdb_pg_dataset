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
AND (n.name_pcode_nf in ('A5215','C6353','G4162','J65','L6561','M25','R2631','Z535'))
AND (ci.note in ('(assistant production coordinator)','(head writer) (uncredited)','(screenplay)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','miscellaneous crew','writer'))
AND (it1.id in ('32'))
