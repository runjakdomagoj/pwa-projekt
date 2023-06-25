<?php

$db = mysqli_connect("localhost", "root", "", "projekt");
mysqli_set_charset($db, "utf8");
if ($db) {
    #echo "Connected successfully";
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../styles/style.css">
    <script src="../JS/nav.js"></script>

</head>

<body>
    <header>
        <div class="logo">
            <img src="../images/welt_logo.png" alt="" width="110" style="padding: 10px;">
        </div>
        <nav id="myTopnav">
            <a href="../PHP/index.php" class="active">HOME</a>
            <a href="../PHP/kategorija.php?id=kultura">KULTURA</a>
            <a href="../PHP/kategorija.php?id=sport">SPORT</a>
            <a href="../HTML/login.html">ADMINISTRACIJA</a>
            <a href="../HTML/unos.html">UNOS</a>
            <a href="#" class="icon" onclick="mobileNavigationHandler()">
                <i class="fa fa-bars"></i>
            </a>
        </nav>
    </header>


    <main>
        <h2>SPORT</h2>

        <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='Sport' LIMIT 3";
        $result = mysqli_query($db, $query);
        $i = 0;
        echo '<section>';
        while ($row = mysqli_fetch_array($result)) {

            echo '<article style="min-width: 30%;" class="donjaCrta">';
            echo "<a style='text-decoration: none; color: black;' href='clanak.php?id=" . $row['id'] . "'>";
            echo '<img src="' . '../images/' . $row['filename'] . '"';
            echo '</a>';
            echo '<h3>';
            echo $row['naslov'];
            echo '</h3>';
            echo '<p>';
            echo $row['sazetak'];
            echo '<p>';
            echo "<p style='font-size: 14px;'>" . $row['datum'] . "</p>";
            echo '</article>';

        }
        echo '</section>';
        ?>

        <h2>KULTURA</h2>

        <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='kultura' LIMIT 3";
        $result = mysqli_query($db, $query);
        $i = 0;
        echo '<section>';
        while ($row = mysqli_fetch_array($result)) {

            echo '<article style="min-width: 30%;">';
            echo "<a style='text-decoration: none; color: black;' href='clanak.php?id=" . $row['id'] . "'>";
            echo '<img src="' . '../images/' . $row['filename'] . '"';
            echo "</a>";
            echo '<h3>';
            echo $row['naslov'];
            echo '</h3>';
            echo '<p>';
            echo $row['sazetak'];
            echo '<p>';
            echo "<p style='font-size: 14px;'>" . $row['datum'] . "</p>";
            echo '</article>';

        }
        echo '</section>';
        ?>
    </main>


    <footer>
        <img src="../images/welt_logo.png" alt="" width="110" style="padding: 30px;">
    </footer>

</body>

</html>