<?php
// Mendefinisikan data dalam array secara langsung
$data_seg = array(
    array(10, 5),  // segitiga 1: alas=10, tinggi=5
    array(7, 4),   // segitiga 2: alas=7, tinggi=4
    array(8, 6),   // segitiga 3: alas=8, tinggi=6
    array(9, 3),   // segitiga 4: alas=9, tinggi=3
    array(12, 8)   // segitiga 5: alas=12, tinggi=8
);

// Fungsi untuk menghitung luas segitiga
function luas_segitiga($alas, $tinggi) {
    return 0.5 * $alas * $tinggi;
}

// Menghitung luas segitiga untuk setiap data dalam array
foreach ($data_seg as $i => $seg) {
    $alas = $seg[0];
    $tinggi = $seg[1];
    $luas = luas_segitiga($alas, $tinggi);
    echo "Luas segitiga " . ($i+1) . ": " . $luas . "\n" . "<br>";
}
?>