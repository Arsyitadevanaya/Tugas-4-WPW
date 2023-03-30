<?php 
// koneksi database
    include 'koneksi.php';
 
// menangkap data id yang di kirim dari url
    $id = $_GET['id'];
 
 
// menghapus data dari database
    mysqli_query($conn,"DELETE FROM mahasiswa where nrp='$id'");
 
// mengalihkan halaman kembali ke index.php
    header("location:tampilan.php");
 
?>