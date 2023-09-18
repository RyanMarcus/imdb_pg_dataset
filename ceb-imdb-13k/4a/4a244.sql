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
AND (n.name_pcode_nf in ('A1341','F3536','I5253','J2165','J3252','L6214','L6532','N6216','R1461','R6526','S3412','T5351','W63'))
AND (ci.note in ('(as Larry Blake)','(creator)','(voice: English version) (as Judson L. Jones)','(written by)') OR ci.note IS NULL)
AND (rt.role in ('actor','actress','composer','director','editor','writer'))
AND (it1.id in ('22'))
