SELECT
  poslovnica_id,
  mesec,
  ukupno_uplaceno,
  SUM(ukupno_uplaceno) OVER (
    PARTITION BY poslovnica_id
    ORDER BY mesec
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS kumulativno_uplaceno
FROM KS55324_MV_MESECNO_POSLOVNICA
ORDER BY poslovnica_id, mesec;