document.getElementById("slanje").onclick = (e) => {
  let slanjeForme = true;

  // Korisničko ime mora biti uneseno
  let poljeUsername = document.getElementById("username");
  let username = document.getElementById("username").value;
  if (username.length == 0) {
    slanjeForme = false;
    poljeUsername.style.border = "1px solid red";
    document.getElementById("porukaUsername").innerHTML =
      "<br>Unesite korisničko ime!<br>";
  } else {
    poljeUsername.style.border = "1px solid #ccc";
    document.getElementById("porukaUsername").innerHTML = "";
  }
  // Provjera podudaranja lozinki
  let poljePass = document.getElementById("pass");
  let pass = document.getElementById("pass").value;

  if (pass.length < 8) {
    slanjeForme = false;
    poljePass.style.border = "1px solid red";
    document.getElementById("porukaPass").innerHTML =
      "<br>Lozinka mora imati barem 8 znakova!<br>";
  } else {
    poljePass.style.border = "1px solid #ccc";
    document.getElementById("porukaPass").innerHTML = "";
  }
  if (slanjeForme != true) {
    e.preventDefault();
  }
};
