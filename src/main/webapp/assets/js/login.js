document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector('form');
  
    form.addEventListener('submit', function(event) {
      event.preventDefault(); //no permite enviar el formulario
  
      const email = document.getElementById('email').value;
      const password = document.getElementById('password').value;

      let userLogin = "user@email.com";
      let correctPassword = "12345";
  
      if (email === userLogin && password === correctPassword) {
        window.location.href = "../../menu.html";
      } else {
        alert("Usuario o contraseña incorrectos. Por favor, inténtalo de nuevo.");
      }
    });
});

