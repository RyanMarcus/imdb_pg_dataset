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
AND (n.name_pcode_nf in ('A4364','A6362','B2142','C1352','C4316','D5425','G2323','J5351','J5425','L565','L621','N3515','R1636','R3212','R3215','R432','R5432','T532','T5651','W4515','W4526'))
AND (ci.note in ('(executive producer)','(producer)','(uncredited)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','cinematographer','director','editor','producer','writer'))
AND (it1.id in ('34'))
