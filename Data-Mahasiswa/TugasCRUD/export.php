<?php
// Memanggil atau membutuhkan file function.php
require 'function.php';

// Menampilkan semua data dari table Mahasiswa berdasarkan nim secara Descending
$siswa = query("SELECT * FROM mahasiswa ORDER BY nim DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Mahasiswa</title>
</head>
<body>
    <h1>Data Mahasiswa</h1>
    <table class="text-center" border="1">
        <thead class="text-center">
            <tr>
                <th>No.</th>
                <th>Nama</th>
                <th>NIM</th>
                <th>Kelas</th>
                <th>Jurusan</th>
                <th>Semester</th>
            </tr>
        </thead>
        <tbody class="text-center">
            <?php $no = 1; ?>
            <?php foreach ($siswa as $row) : ?>
                <tr>
                    <td><?= $no++; ?></td>
                    <td><?= $row['nama']; ?></td>
                    <td><?= $row['nim']; ?></td>
                    <td><?= $row['kelas']; ?></td>
                    <td><?= $row['jurusan']; ?></td>
                    <td><?= $row['semester']; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <!-- Form untuk export ke PDF -->
    <form action="export_pdf.php" method="post">
        <button type="submit">Export to PDF</button>
    </form>

    <!-- Form untuk export ke Excel -->
    <form action="export_excel.php" method="post">
        <button type="submit">Export to Excel</button>
    </form>
</body>
</html>
