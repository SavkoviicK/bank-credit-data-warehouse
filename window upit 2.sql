SELECT
    poslovnica_id,
    ukupno,
    RANK() OVER (ORDER BY ukupno DESC) AS rang
FROM (
    SELECT
        poslovnica_id,
        SUM(ukupno_uplaceno) AS ukupno
    FROM KS55324_MV_MESECNO_POSLOVNICA
    GROUP BY poslovnica_id
)
ORDER BY rang;