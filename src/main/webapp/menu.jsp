<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Wallet - Menú Principal</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/menu.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <!-- MENU -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="<%= request.getContextPath() %>/index.jsp">
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
            <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/menu.jsp">Inicio</a>
            <a class="nav-link" href="<%= request.getContextPath() %>/deposit.jsp">Depositos</a>
            <a class="nav-link" href="<%= request.getContextPath() %>/sendmoney.jsp">Envios</a>
            <a class="nav-link" href="<%= request.getContextPath() %>/transactions.jsp">Últimos Movimientos</a>
          </div>
        </div>
      </div>
    </nav>
    <!-- CUERPO -->
    <div class="container w-100 border p-4">
      <h2 class="d-flex justify-content-center mb-3 mt-3">Menú Principal</h2>
      <div class="d-flex flex-row align-items-center flex-wrap">
        <div class="card border-0 w-50">
          <div
            class="form-group d-flex flex-row flex-wrap d-flex justify-content-between align-items-center p-3"
          >
            <label for="balance" class="mr-6">Dinero en cuenta:</label>
            <h3 class="m-auto" id="depositoFormulario">$60000</h3>
          </div>
        </div>
        <div class="card border-0 w-50"></div>
        <div class="card border-0 w-50">
          <div class="d-flex flex-column">
            <div class="d-flex w-100">
              <a href="<%= request.getContextPath() %>/deposit.jsp" class="w-100 btn btn-primary m-3 p-3"
                >Depositar</a>
              <a href="<%= request.getContextPath() %>/sendmoney.jsp" class="w-100 btn btn-primary m-3 p-3"
                >Enviar Dinero</a>
            </div>
            <div class="d-flex w-100">
              <a href="<%= request.getContextPath() %>/transactions.jsp" class="w-100 btn btn-primary m-3 p-3"
                >Últimos Movimientos</a>
            </div>
          </div>
        </div>
        <div class="card border-0 w-50">
          <div class="form-group w-100 d-flex flex-row flex-wrap">
            <img
              class="w-100 p-3"
              src="https://images.pexels.com/photos/6289026/pexels-photo-6289026.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
              alt=""
            />
          </div>
        </div>
      </div>
    </div>
    <!-- FOTTER -->
    <footer class="footer bg-light py-3">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <p class="mb-0 text-dark">illancapan - 2024</p>
          </div>
          <div class="col-md-6">
            <ul class="list-inline text-md-end mb-0">
              <li class="list-inline-item">
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#"><i class="fa-brands fa-twitter"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#"><i class="fa-brands fa-youtube"></i></a>
              </li>
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
    <script
      src="https://kit.fontawesome.com/9a3d9b5726.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
