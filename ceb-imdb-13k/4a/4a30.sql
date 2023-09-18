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
AND (n.name_pcode_nf in ('A3514','A4163','A5215','A5326','B6252','B6524','C6256','D6532','G1513','G4326','H1612','J1316','K1565','L242','M5216','M6216','M6323','N2614','N5321','R1232','R5352','S1524','S3242','S536','T5316'))
AND (ci.note in ('(co-executive producer)','(creator)','(executive producer)','(producer)','(script supervisor)','(supervising producer) (as Albert B. Almaden)','(voice)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','composer','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('22'))
