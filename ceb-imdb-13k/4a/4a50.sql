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
AND (n.name_pcode_nf in ('A2426','A4163','A525','A5263','A5324','C252','C6256','H216','H25','J1362','J1621','J2124','J2526','J5262','J543','K4262','L5652','R5251','S2562','S3132','S6212','Z254'))
AND (ci.note in ('(consulting producer)','(creative head: tv dramatic series, CBC)','(lighting director) (as Alfredo Hernando)','(producer)','(production assistant)','(production intern)','(production staff)','(public relations)','(set teacher)','(supervising producer)','(writer)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('22'))
