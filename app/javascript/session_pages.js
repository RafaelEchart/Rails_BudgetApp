const submitLogIn = () => {
    document.getElementById("new_user").submit()
}

const submitSignUp = () => {
   
    document.getElementById("new_user").submit()
}


const submitNewCategory = () => {
    document.getElementById("new_category").submit()
}

const goToCategory = (id) => {
    window.location.href = `/categories/${id}/transactions`
}