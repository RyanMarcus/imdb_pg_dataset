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
AND (n.name_pcode_nf in ('C62','G1636','G4514','G6215','J1245','J5253','K1565','K652','L6521','M32','M3416','N2526','O4562','P1452','P625','R1262','R265','R4163','S2351','S3632','T5143','T52','V2363','V5253'))
AND (ci.note in ('(as Vincent San Antonio)','(producer)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actor','composer','editor','producer'))
AND (it1.id in ('37'))
