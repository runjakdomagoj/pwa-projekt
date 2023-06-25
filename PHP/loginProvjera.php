<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../styles/styleUnos.css">

    <script src="../JS/nav.js"></script>

    <title>Log In Provjera</title>
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

            $username = $_POST['username'];
            $lozinka = $_POST['pass'];
            $hashed_password = password_hash($lozinka, CRYPT_BLOWFISH);

            $query = "SELECT * FROM korisnik WHERE korisnicko_ime='$username'";
            $result = mysqli_query($dbc, $query);
            $row = mysqli_fetch_array($result);

            if (mysqli_num_rows($result) > 0) {
                if (password_verify($lozinka, $row['lozinka'])) {
                    #echo ('Uspjesan login');
                    if ($row['razina'] == 1) {
                        echo '<a style="padding:14px 16px; text-decoration: none; color: white; background-color: #064B71; margin-top: 25px;" href="administrator.php">ADMINISTRACIJA</a>';
                    } else {
                        echo '<p style="padding:25px;">' . $username . ', nemate dovoljna prava za pristup ovoj stranici.' . '</p>';
                    }
                } else {
                    #echo ('Neuspjesan login');
                    echo '<a style="padding:14px 16px; text-decoration: none; color: white; background-color: #064B71; margin-top: 25px;" href="../HTML/registracija.html">REGISTRIRAJ SE</a>';
                }
            } else {
                #echo ('Neuspjesan login');
                echo '<a style="padding:14px 16px; text-decoration: none; color: white; background-color: #064B71; margin-top: 25px;" href="../HTML/registracija.html">REGISTRIRAJ SE</a>';
            }
            ?>
        </section>
    </main>
    <footer>
        <img src="../images/welt_logo.png" alt="" width="110" style="padding: 30px;">
    </footer>
</body>

</html>