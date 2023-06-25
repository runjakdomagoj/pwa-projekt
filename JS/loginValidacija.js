document.getElementById("slanje").onclick = (e) => {
   let slanjeForme = true;
   let poljeUsername = document.getElementById("username");
   let username = document.getElementById("username").value;
   let poljePass = document.getElementById("pass");
   let pass = document.getElementById("pass").value;

   if (username.length == 0) {
      slanjeForme = false;
      poljeUsername.style.border = "1px solid red";
      document.getElementById("porukaUsername").innerHTML =
         "<br>Morate unijeti korisničko ime!<br>";
   } else {
      poljeUsername.style.border = "1px solid #ccc";
      document.getElementById("porukaUsername").innerHTML = "";
   }

   if (pass.length < 8) {
      slanjeForme = false;
      poljePass.style.border = "1px solid red";
      document.getElementById("porukaPass").innerHTML =
         "<br>Morate unijeti lozinku!<br>";
   } else {
      poljePass.style.border = "1px solid #ccc";
      document.getElementById("porukaPass").innerHTML = "";
   }
   if (slanjeForme != true) {
      e.preventDefault();
   }
};
