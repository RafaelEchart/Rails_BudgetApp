const submitLogIn = () => {
    document.getElementById("new_user").submit()
}

const submitSignUp = () => {

    let photo = document.getElementById("upload_photo")
    

    if(!photo.value.length){


        photo.value = "https://www.w3schools.com/howto/img_avatar.png"


    }


    document.getElementById("new_user").submit()
}

const uploadButtonInfo = () => {
    alert("You can paste the URL of your image or the system will generate a image for you")
}


