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
AND (n.name_pcode_nf in ('A4265','A4516','A6362','A6523','B41','B6213','B6252','I2521','J243','J265','J4262','J5165','J5243','K3656','K4153','L215','M6532','N2423','N623','P3621','V5326'))
AND (ci.note in ('(as Lecy Goranson)','(assistant script editor)','(associate producer)','(co-producer)','(producer)','(production assistant)','(production coordinator)','(series producer)','(supervising director)','(uncredited)','(voice)') OR ci.note IS NULL)
AND (rt.role in ('actress','costume designer','director','editor','miscellaneous crew','producer','production designer','writer'))
AND (it1.id in ('37'))
