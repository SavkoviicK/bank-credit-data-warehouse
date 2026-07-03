SELECT
  mesec,
  SUM(ukupno_uplaceno) AS ukupno_uplaceno_sve_poslovnice
FROM KS55324_MV_MESECNO_POSLOVNICA
GROUP BY mesec
ORDER BY ukupno_uplaceno_sve_poslovnice DESC
FETCH FIRST 12 ROWS ONLY;