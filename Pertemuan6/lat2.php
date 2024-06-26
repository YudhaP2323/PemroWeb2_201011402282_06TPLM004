<!DOCTYPE html>
<html>
<head>
    <title>Hitung Luas Segitiga</title>
</head>
<body>
    <h2>Input Data Segitiga</h2>
    <form method="post" action="">
        <?php for ($i=0; $i<5; $i++) { ?>
            <label>Segitiga ke-<?php echo $i+1; ?>:</label><br>
            Alas: <input type="text" name="alas<?php echo $i; ?>"><br>
            Tinggi: <input type="text" name="tinggi<?php echo $i; ?>"><br><br>
        <?php } ?>
        <input type="submit" name="submit" value="Hitung">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        echo "<h2>Hasil Perhitungan Luas Segitiga</h2>";
        for ($i=0; $i<5; $i++) {
            $alas = $_POST["alas$i"];
            $tinggi = $_POST["tinggi$i"];
            $luas = luas_segitiga($alas, $tinggi);
            echo "Luas segitiga ke-" . ($i+1) . ": " . $luas . "<br>";
        }
    }
    ?>
</body>
</html>