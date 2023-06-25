<?php
error_reporting(0);

$title = $_POST['title'];
$about = $_POST['about'];
$content = $_POST['content'];
#$image=$_POST['pphoto'];
$category = $_POST['category'];
$date = date('d.m.Y.');

$filename = $_FILES["uploadfile"]["name"];
$tempname = $_FILES["uploadfile"]["tmp_name"];
$folder = "../images/" . $filename;

echo $filename;
echo $tempname;

if (isset($_POST['archive'])) {
    $archive = 1;
} else {
    $archive = 0;
}

$dbc = mysqli_connect("localhost", "root", "", "projekt");
mysqli_set_charset($dbc, "utf8");
if ($dbc) {
    #echo "Connected successfully";
}

$sql = "INSERT INTO vijesti (datum, naslov, sazetak, tekst, kategorija, arhiva, filename ) values (?, ?, ?, ?, ?, ?, ?)";
/* Inicijalizira statement objekt nad konekcijom */
$stmt = mysqli_stmt_init($dbc);
/* Povezuje parametre statement objekt s upitom */
if (mysqli_stmt_prepare($stmt, $sql)) {
    /* Povezuje parametre i njihove tipove s statement objektom */
    mysqli_stmt_bind_param($stmt, 'sssssis', $date, $title, $about, $content, $category, $archive, $filename);
    /* Izvršava pripremljeni upit */
    mysqli_stmt_execute($stmt);
}

move_uploaded_file($tempname, $folder);
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>
        <?php echo $title ?>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../styles/styleClanak.css">
    <script src="../JS/nav.js"></script>

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
            <a href="../HTML/login.html">ADMINISTRACIJA</a>
            <a href="../HTML/unos.html" class="active">UNOS</a>
            <a href="#" class="icon" onclick="mobileNavigationHandler()">
                <i class="fa fa-bars"></i>
            </a>
        </nav>
    </header>

    <main>
        <h2 style="padding-left: 25px; text-transform: uppercase; border-bottom: 1px solid #d7d7d7;">
            <?php echo $category; ?>
        </h2>
        <section>
            <article>
                <h2 style="padding: 0;">
                    <?php echo $title; ?>
                </h2>
                <p>Stand:
                    <?php echo $date; ?>
                </p>
                <?php echo '<img src="' . '../images/' . $filename . '"'; ?>
                <br>
                <p>
                    <?php echo $content ?>
                </p>
                <br>

            </article>
        </section>
    </main>

    <footer>
        <img src="../images/welt_logo.png" alt="" width="110" style="padding: 30px;">
    </footer>



</body>

</html>