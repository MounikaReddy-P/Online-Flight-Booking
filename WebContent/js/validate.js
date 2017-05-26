
function validatePassword(){
	var password = document.getElementById("password"), confirm_password = document.getElementById("password_confirmation");

  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;
}



window.onload = function() {
	   document.getElementById("register").onclick = validatePassword;
	}