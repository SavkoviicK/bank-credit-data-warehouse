SELECT
  poslovnica_id,
  AVG(avg_kasnjenje) AS prosecno_kasnjenje,
  SUM(broj_uplata) AS broj_uplata
FROM KS55324_MV_MESECNO_POSLOVNICA
GROUP BY poslovnica_id
ORDER BY prosecno_kasnjenje DESC;