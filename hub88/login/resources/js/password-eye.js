document.addEventListener('DOMContentLoaded', function(event) {

  const password = document.getElementById('password');
  const eye =  document.getElementById('kc-password-eye');
  if(password && eye) {
    eye.addEventListener('click', () => {
      if(password.type === "password") {
        password.type = "text";
      } else {
        password.type = "password";
      }
      password.focus();
    });
  }

});

