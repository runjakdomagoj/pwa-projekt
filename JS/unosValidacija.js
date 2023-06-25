document.getElementById("slanje").onclick = (e) => {
  let slanjeForme = true;

  let poljeTitle = document.getElementById("title");
  let title = document.getElementById("title").value;
  if (title.length < 5 || title.length > 30) {
    slanjeForme = false;
    poljeTitle.style.border = "1px solid red";
    document.getElementById("porukaTitle").innerHTML =
      "Naslov vijesti mora imati između 5 i 30 znakova!<br>";
  } else {
    poljeTitle.style.border = "1px solid #ccc";
    document.getElementById("porukaTitle").innerHTML = "";
  }
  // Kratki sadržaj (10-100 znakova)
  let poljeAbout = document.getElementById("about");
  let about = document.getElementById("about").value;
  if (about.length < 10 || about.length > 100) {
    slanjeForme = false;
    poljeAbout.style.border = "1px solid red";
    document.getElementById("porukaAbout").innerHTML =
      "Kratki sadržaj mora imati između 10 i 100 znakova!<br>";
  } else {
    poljeAbout.style.border = "1px solid #ccc";
    document.getElementById("porukaAbout").innerHTML = "";
  }
  // Sadržaj mora biti unesen
  let poljeContent = document.getElementById("content");
  let content = document.getElementById("content").value;
  if (content.length == 0) {
    slanjeForme = false;
    poljeContent.style.border = "1px solid red";
    document.getElementById("porukaContent").innerHTML =
      "Sadržaj mora biti unesen!<br>";
  } else {
    poljeContent.style.border = "1px solid #ccc";
    10;
    document.getElementById("porukaContent").innerHTML = "";
  }
  // Slika mora biti unesena
  let poljeSlika = document.getElementById("pphoto");
  let pphoto = document.getElementById("pphoto").value;
  if (pphoto.length == 0) {
    slanjeForme = false;
    poljeSlika.style.border = "1px solid red";
    document.getElementById("porukaSlika").innerHTML =
      "Slika mora biti unesena!<br>";
  } else {
    poljeSlika.style.border = "1px solid #ccc";
    document.getElementById("porukaSlika").innerHTML = "";
  }
  // Kategorija mora biti odabrana
  let poljeCategory = document.getElementById("category");
  if (document.getElementById("category").selectedIndex == 0) {
    slanjeForme = false;
    poljeCategory.style.border = "1px solid red";
    document.getElementById("porukaKategorija").innerHTML =
      "Kategorija mora biti odabrana!<br>";
  } else {
    poljeCategory.style.border = "1px solid #ccc";
    document.getElementById("porukaKategorija").innerHTML = "";
  }
  if (slanjeForme != true) {
    e.preventDefault();
  }
};
