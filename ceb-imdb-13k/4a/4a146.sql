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
AND (n.name_pcode_nf in ('A52','A525','B434','C6165','D1323','D6254','E4652','J2625','J6251','L546','S312','S3252','S6264'))
AND (ci.note in ('(field producer)','(producer)') OR ci.note IS NULL)
AND (rt.role in ('actress','cinematographer','director','producer'))
AND (it1.id in ('31'))
