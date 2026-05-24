SELECT kode_mk, nama_mk
FROM Mata_Kuliah
WHERE kode_mk IN (
    SELECT kode_mk
    FROM KRS
    WHERE nim = (
        SELECT nim
        FROM Mahasiswa
        WHERE nama = 'Budi Santoso'
    )
);