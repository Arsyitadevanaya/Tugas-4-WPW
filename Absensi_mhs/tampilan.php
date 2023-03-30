<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Data Mahasiswa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js" integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <br/>
	        <h2 align="center">DATA MAHASISWA PENS</h2>
	        <br/>

            <a class="btn btn-primary" href="inputan.php" role="button">+TAMBAH MAHASISWA</a>
	        <br/>
	        <br/>
            
        </div>
            <div class="table-responsive container">
                
                <table class="table table-primary table-striped">
                    <tr align="center">
                        <th >#</th>
                        <th>NRP</th>
                        <th>Nama Lengkap</th>
                        <th>Jenis Kelamin</th>
                        <th>Jurusan</th>
                        <th>Email Student</th>
                        <th>Alamat Rumah</th>
                        <th>Nomor HP</th>
                        <th>Sekolah SMA</th>
                        <th>Mata Kuliah Favorit</th>
                        <th>Keterangan</th>
                    </tr>
                    <?php 
                        include 'koneksi.php';
                        $no = 1;
            
                        $data= "SELECT * FROM mahasiswa  ";
                        $result=mysqli_query($conn, $data);
                        while($row= mysqli_fetch_assoc($result)){
                    ?>
                    <tr>
                        <td ><?php echo $no++; ?></td>
                        <td><?php echo $row["nrp"]; ?></td>
                        <td><?php echo $row["nama"]; ?></td>
                        <td><?php echo $row["jenis_kelamin"]; ?></td>
                        <td><?php echo $row["jurusan"]; ?></td>
                        <td><?php echo $row["email"]; ?></td>
                        <td><?php echo $row["alamat"]; ?></td>
                        <td><?php echo $row["no_hp"]; ?></td>
                        <td><?php echo $row["asal_sma"]; ?></td>
                        <td><?php echo $row["matkul"]; ?></td>
                        <td>
                            <a style="text-decoration:none" href="update.php?id=<?php echo $row['nrp']; ?>" role="button">Edit</a>
                            <a style="text-decoration:none" class="text-danger" href="delete.php?id=<?php echo $row['nrp']; ?>" role="button">Hapus</a>
                        </td>
                    </tr>
                    <?php 
                    }
                    ?>
                </table>
            </div>
    </body>
</html>



