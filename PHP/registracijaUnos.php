<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../styles/styleUnos.css">

    <script src="../JS/nav.js"></script>

    <title>Registracija</title>
</head>

<body>

    <header>
        <div class="logo">
            <img src="../images/welt_logo.png" alt="" width="110" style="padding: 10px;">
        </div>
        <nav id="myTopnav">
            <a href="../PHP/index.php">HOME</a>
            <a href="../PHP/kategorija.php?id=kultura">KULTURA</a>
            <a href="../PHP/kategorija.php?id=sport">SPORT</a>
            <a href="../HTML/login.html" class="active">ADMINISTRACIJA</a>
            <a href="../HTML/unos.html">UNOS</a>
            <a href="#" class="icon" onclick="mobileNavigationHandler()">
                <i class="fa fa-bars"></i>
            </a>
        </nav>
    </header>
    <main>
        <section>
            <?php

            $dbc = mysqli_connect("localhost", "root", "", "projekt");
            mysqli_set_charset($dbc, "utf8");
            if ($dbc) {
                #echo "Connected successfully";
            }

            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $username = $_POST['username'];
            $lozinka = $_POST['pass'];
            $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);
            $razina = 0;
            $registriranKorisnik = '';

            $sql = "SELECT korisnicko_ime FROM korisnik WHERE korisnicko_ime = ?";
            $stmt = mysqli_stmt_init($dbc);
            if (mysqli_stmt_prepare($stmt, $sql)) {
                mysqli_stmt_bind_param($stmt, 's', $username);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);
            }
            if (mysqli_stmt_num_rows($stmt) > 0) {
                $msg = 'Korisničko ime već postoji!';
                echo '<p style="padding:25px;">' . $msg . '</p>';
            } else {

                $sql = "INSERT INTO korisnik (ime, prezime,korisnicko_ime, lozinka,
        razina)VALUES (?, ?, ?, ?, ?)";
                $stmt = mysqli_stmt_init($dbc);
                if (mysqli_stmt_prepare($stmt, $sql)) {
                    mysqli_stmt_bind_param(
                        $stmt,
                        'ssssd',
                        $ime,
                        $prezime,
                        $username,
                        $hashed_password,
                        $razina
                    );
                    mysqli_stmt_execute($stmt);
                    $registriranKorisnik = true;
                    echo '<p style="padding:25px;">' . 'Uspješno registriran korisnik!' . '</p>';
                }
            }
            mysqli_close($dbc);
            ?>
        </section>
    </main>
    <footer>
        <img src="../images/welt_logo.png" alt="" width="110" style="padding: 30px;">
    </footer>
</body>

</html>