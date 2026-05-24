SELECT kode_mk, AVG(nilai_angka) AS rata_rata_nilai
FROM (
    SELECT *
    FROM nilai
    WHERE kode_mk IN ('MK01','MK02')
) AS data_nilai
GROUP BY kode_mk;