window.addEventListener('load', function () {
    let formulario = document.querySelector("form.register")
    let fullName = document.querySelector("input.fullName")
    formulario.addEventListener("submit", (evento) => {
        console.log("dentro del evento submit")
        console.log(evento)
        evento.preventDefault();
        
        
        if(fullName.value == "") {
            alert("el campo no debe estar vacio")
        }
        else{
            alert("hola")
        }
    })
});














