document.getElementById("slanje").onclick = (e) => {
  
  let slanjeForme = true;
  // Ime korisnika mora biti uneseno
  let poljeIme = document.getElementById("ime");
  let ime = document.getElementById("ime").value;
  if (ime.length == 0) {
    slanjeForme = false;
    poljeIme.style.border = "1px solid red";
    document.getElementById("porukaIme").innerHTML = "<br>Unesite ime!<br>";
  } else {
    poljeIme.style.border = "1px solid green";
    document.getElementById("porukaIme").innerHTML = "";
  }
  // Prezime korisnika mora biti uneseno
  let poljePrezime = document.getElementById("prezime");
  let prezime = document.getElementById("prezime").value;
  if (prezime.length == 0) {
    slanjeForme = false;
    13;
    poljePrezime.style.border = "1px solid red";
    document.getElementById("porukaPrezime").innerHTML =
      "<br>Unesite Prezime!<br>";
  } else {
    poljePrezime.style.border = "1px solid green";
    document.getElementById("porukaPrezime").innerHTML = "";
  }
  // Korisničko ime mora biti uneseno
  let poljeUsername = document.getElementById("username");
  let username = document.getElementById("username").value;
  if (username.length == 0) {
    slanjeForme = false;
    poljeUsername.style.border = "1px solid red";
    document.getElementById("porukaUsername").innerHTML =
      "<br>Unesite korisničko ime!<br>";
  } else {
    poljeUsername.style.border = "1px solid green";
    document.getElementById("porukaUsername").innerHTML = "";
  }
  // Provjera podudaranja lozinki
  let poljePass = document.getElementById("pass");
  let pass = document.getElementById("pass").value;
  let poljePassRep = document.getElementById("passRep");
  let passRep = document.getElementById("passRep").value;
  if (pass.length == 0 || passRep.length == 0 || pass != passRep) {
    slanjeForme = false;
    poljePass.style.border = "1px solid red";
    poljePassRep.style.border = "1px solid red";
    document.getElementById("porukaPass").innerHTML =
      "<br>Lozinke nisu iste!<br>";
    document.getElementById("porukaPassRep").innerHTML =
      "<br>Lozinke nisu iste!<br>";
  } else {
    poljePass.style.border = "1px solid green";
    poljePassRep.style.border = "1px solid green";
    document.getElementById("porukaPass").innerHTML = "";
    document.getElementById("porukaPassRep").innerHTML = "";
  }
  if (slanjeForme != true) {
    e.preventDefault();
  }
};
