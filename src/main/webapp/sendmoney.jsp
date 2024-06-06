<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Wallet - Últimos Movimientos</title>

    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="assets/css/sendMoney.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- MENU -->
    <!-- MENU -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 512 512"
            width="30"
            height="30"
          >
            <rect width="512" height="512" rx="15%" fill="#001F3F" />
            <path
              fill="#FFF"
              d="M256 32C141.12 32 48 125.12 48 240s93.12 208 208 208 208-93.12 208-208S370.88 32 256 32zm56 232a16 16 0 0 1-16 16H172a16 16 0 0 1-16-16v-40h160v40zM192 160a16 16 0 0 1 16-16h96a16 16 0 0 1 16 16v64a16 16 0 0 1-16 16h-96a16 16 0 0 1-16-16zm144 160H176a16 16 0 0 1-16-16v-32h160v32a16 16 0 0 1-16 16z"
            />
          </svg>
        </a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNavAltMarkup"
          aria-controls="navbarNavAltMarkup"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link active" aria-current="page" href="menu.jsp">Inicio</a>
            <a class="nav-link" href="./deposit.html">Depositos</a>
            <a class="nav-link" href="./sendmoney.html">Envios</a>
            <a class="nav-link" href="./transactions.html">Últimos Movimientos</a>
            <!-- <a
              class="nav-link disabled"
              href="#"
              tabindex="-1"
              aria-disabled="true"
              ></a
            > -->
          </div>
        </div>
      </div>
    </nav>
  <div class="container">
    <h2>Enviar Dinero</h2>
    <form class="d-flex flex-column">
      <div class="form-group">
        <label class="mb-3" for="searchContact">Buscar en la agenda de transferencias:</label>
        <input type="text" class="form-control mb-3" id="searchContact" placeholder="Buscar contacto">
      </div>
      <button type="submit" class="btn btn-primary mb-3">Agregar nuevo contacto</button>
 <h3>Contactos</h3>
  <ul id="contactList" class="list-group mb-3 d-flex flex-column">
    <li class="list-group-item">
      <div class="contact-info d-flex flex-column">
        <span class="contact-name">John Doe</span>
        <span class="contact-details">CBU: 123456789</span>
        <span class="contact-details">Alias: john.doe</span>
        <span class="contact-details"> Banco: ABC Bank</span>
      </div>
    </li>
    <li class="list-group-item mb-3">
      <div class="contact-info d-flex flex-column"">
        <span class="contact-name">Jane Smith</span>
        <span class="contact-details">CBU: 987654321</span>
        <span class="contact-details">Alias: jane.smith</span>
        <span class="contact-details">Banco: XYZ Bank</span>
      </div>
    </li>
      <button type="submit" class="btn btn-primary mb-3">Enviar dinero</button>
    </form>
    <a href="menu.jsp" class="btn btn-secondary">Volver al Menú Principal</a>
  </div>
  <footer class="footer bg-light py-3">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-6">
          <p class="mb-0 text-dark">illancapan - 2024</p>
        </div>
        <div class="col-md-6">
          <ul class="list-inline text-md-end mb-0">
            <li class="list-inline-item"><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"
  ></script>
  <script src="https://kit.fontawesome.com/9a3d9b5726.js" crossorigin="anonymous"></script>
</body>
</html>
