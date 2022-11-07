window.onload= function(){
    let isLogged = document.getElementById("isLogged") 
    let logout = document.querySelector(".logout")

    logout.addEventListener("mouseover", ()=>{
        logout.style.color = "red"
    });
    logout.addEventListener("mouseleave", ()=>{
        logout.style.color = ""
    })
    const iconoMenu = document.querySelector("#icono-menu")
    const menu = document.querySelector("#menu-burger")

    iconoMenu.addEventListener("click", (e)=>{
        menu.classList.toggle("active");
        document.body.classList.toggle("opacity")
    })

    

    if (locals.isLogged){
        isLogged.classList.add("isLogged")

        isLogged.classList.remove("cart-register-login-breackpoint")
    } else{
        isLogged.classList.remove("isLogged")

        isLogged.classList.add("cart-register-login-breackpoint")
    }



}
