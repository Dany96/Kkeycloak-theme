function selected(value) {
    if (value==1) {
        document.getElementById("interna").style.display="none";
        document.getElementById("externa").style.display="block";
    } else {
        document.getElementById("interna").style.display="block";
        document.getElementById("externa").style.display="none";
    }
}
e.onchange = selected;
selected();

function setValue(){
    console.log(document.getElementById("username").value);
    document.getElementById("username").value="dan96";
}