window.onload= function(){
    let isLogged = document.getElementById("isLogged") 
    let logout = document.querySelector(".logout")

    if (locals.isLogged){
        isLogged.classList.add("isLogged")

        isLogged.classList.remove("cart-register-login-breackpoint")
    } else{
        isLogged.classList.remove("isLogged")

        isLogged.classList.add("cart-register-login-breackpoint")
    }

    logout.addEventListener("mouseover", ()=>{
        this.style.color = "red"
    });
    logout.addEventListener("mouseleave", ()=>{
        this.style.color = ""
    })

}
