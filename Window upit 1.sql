SELECT
  poslovnica_id,
  mesec,
  ukupno_uplaceno,
  LAG(ukupno_uplaceno) OVER (
    PARTITION BY poslovnica_id
    ORDER BY mesec
  ) AS prethodni_mesec_uplaceno,
  (ukupno_uplaceno - LAG(ukupno_uplaceno) OVER (
    PARTITION BY poslovnica_id
    ORDER BY mesec
  )) AS rast_uplaceno
FROM KS55324_MV_MESECNO_POSLOVNICA
ORDER BY poslovnica_id, mesec;