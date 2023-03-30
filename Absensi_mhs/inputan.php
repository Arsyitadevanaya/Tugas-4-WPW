<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Form Data Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js" integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i" crossorigin="anonymous"></script>
    
    </head>
    <body>
        <div class="container">
        <br/>
        <h2 align="center">FORM MAHASISWA PENS</h2>
            <form  method="post">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nama</label>
                    <input type="text" class="form-control" name="nama" >
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">NRP</label>
                    <input type="text" class="form-control" name="nrp">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Jenis Kelamin</label>
                    <input type="text" class="form-control" name="jenis_kelamin">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Jurusan</label>
                    <input type="text" class="form-control" name="jurusan">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Alamat Email</label>
                    <input type="email" class="form-control" name="email">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Alamat Rumah</label>
                    <input type="text" class="form-control" name="alamat">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nomor HP</label>
                    <input type="text" class="form-control" name="nomor_hp">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Asal SMA</label>
                    <input type="text" class="form-control" name="asal_sma">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Mata Kuliah Favorit</label>
                    <input type="text" class="form-control" name="matkulfav">
                </div>
                <input class="btn btn-primary" type="submit" name="submit" value="Submit">
                <a class="btn btn-primary" href="tampilan.php" role="button">Kembali</a>
                <br/><br/>
            </form>
        
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
            
        <?php
        include 'koneksi.php';

        if(isset($_POST['submit'])){


            $nama=$_POST['nama'];
            $nrp=$_POST['nrp'];
            $jenis_kelamin=$_POST['jenis_kelamin'];
            $jurusan=$_POST['jurusan'];
            $email=$_POST['email'];
            $alamat=$_POST['alamat'];
            $nomor_hp=$_POST['nomor_hp'];
            $asal_sma=$_POST['asal_sma'];
            $matkulfav=$_POST['matkulfav'];
            if(strlen($nama)==0||strlen($nrp)==0||strlen($jenis_kelamin)==0||strlen($jurusan)==0||strlen($email)==0||strlen($alamat)==0||strlen($nomor_hp)==0||strlen($asal_sma)==0
            ||strlen($matkulfav)==0){
                echo "<p style='color:red'>Terdapat Bagian yang Belum Diisi!";
                return 0;
            }
         
            if(is_numeric($nrp)==false){
                echo "<p style='color:red'>NRP Harus Berupa Angka!";
                return 0;
            }
            if(is_numeric($nomor_hp)==false){
                echo "<p style='color:red'>Nomor HP Harus Berupa Angka!";
                return 0;
            }
            
            $sql= "INSERT INTO `mahasiswa` ( `nrp`, `nama`, `jenis_kelamin`, `jurusan`, `email`, `alamat`, `no_hp`, `asal_sma`, `matkul`) VALUES ('$nrp', '$nama', '$jenis_kelamin', '$jurusan', '$email', '$alamat', '$nomor_hp','$asal_sma', '$matkulfav')";

            if (mysqli_query($conn, $sql)) {
                header('location:tampilan.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
               mysqli_close($conn);
        }
        ?>
        </div>
    </body>
</html>


