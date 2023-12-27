function password_show_hide() {
  var novaSenha = document.getElementById("password");
  var show_eye = document.getElementById("show_eye");
  var hide_eye = document.getElementById("hide_eye");
  hide_eye.classList.remove("d-none");
  if (novaSenha.type === "password") {
    novaSenha.type = "text";
    show_eye.style.display = "none";
    hide_eye.style.display = "block";
  } else {
    novaSenha.type = "password";
    show_eye.style.display = "block";
    hide_eye.style.display = "none";
  }
}

function confirm_password_show_hide() {
  var novaSenhaConfirmacao = document.getElementById("comfirm-password");
  var show_eye = document.getElementById("comfirm_show_eye");
  var hide_eye = document.getElementById("comfirm_hide_eye");
  hide_eye.classList.remove("d-none");
  if (novaSenhaConfirmacao.type === "password") {
    novaSenhaConfirmacao.type = "text";
    show_eye.style.display = "none";
    hide_eye.style.display = "block";
  } else {
    novaSenhaConfirmacao.type = "password";
    show_eye.style.display = "block";
    hide_eye.style.display = "none";
  }
}



