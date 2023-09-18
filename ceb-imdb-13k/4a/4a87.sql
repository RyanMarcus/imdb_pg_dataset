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
AND (n.name_pcode_nf in ('A3252','C3652','C6425','E2312','F4251','G6316','I2623','J2142','L6162','M2414','M3252','M6252','P1252','P4526','P6152','R1236','R3621','S2625','S3541','S6142','T2616','T6263','V2532','X56'))
AND (ci.note in ('(armorer) (uncredited)','(assistant location manager) (as Feliciano Frias Jr.)','(assistant producer)','(associate producer)','(co-executive producer)','(executive producer)','(location manager)','(opening montage)','(producer)','(story coordinator)','(writer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','composer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('37'))
