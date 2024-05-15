<?php
require 'vendor/autoload.php';
require 'function.php';

use Picqer\Barcode\BarcodeGeneratorPNG;

if (isset($_GET['text'])) {
    $text = $_GET['text'];

    $generator = new BarcodeGeneratorPNG();
    try {
        $barcode = $generator->getBarcode($text, $generator::TYPE_CODE_128);

        header('Content-Type: image/png');
        echo $barcode;
    } catch (Exception $e) {
        error_log("Barcode Eror: " . $e->getMessage());
        echo 'Barcode Eror';
    }
} else {
    echo 'Tidak ada data';
}
?>
