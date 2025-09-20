function subscribe(){
alert("Inscrição registrada (demo). Integração real virá depois.");
}


// year
document.addEventListener("DOMContentLoaded",()=>{
const y = document.getElementById("year");
if(y){ y.textContent = new Date().getFullYear(); }
});
