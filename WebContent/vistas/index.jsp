<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Proyecto Integrador</title>
        <link
            rel="shortcut icon"
            href="img/codoacodo.png"
            type="image/x-icon"
        />
        <link rel="stylesheet" href="css/styles.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>
    <body>
        <header class="header">
            <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img
                            src="img/codoacodo.png"
                            alt="Logo"
                            width="100"
                            class="d-inline-block"
                        />
                        Conf Bs As
                    </a>
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNav"
                        aria-controls="navbarNav"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div
                        class="collapse navbar-collapse justify-content-md-end"
                        id="navbarNav"
                    >
                        <ul
                            class="navbar-nav align-items-end align-items-md-center"
                        >
                            <li class="nav-item">
                                <a
                                    class="nav-link"
                                    aria-current="page"
                                    href="#conferencia"
                                    >La conferencia</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#oradores"
                                    >Oradores</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#lugar_fecha"
                                    >Lugar y fecha</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#ser_orador"
                                    >Conviertete en orador</a
                                >
                            </li>
                            <li class="nav-item">
                                <a
                                    class="nav-link comprar_ticket"
                                    href="FrontController?accion=comprar"
                                    >Comprar ticket</a
                                >
                            </li>
                            <li class="nav-item">
                                <a
                                    class="btn btn-outline-warning"
                                    href="FrontController?accion=administrar"
                                    >Admin</a
                                >
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <section id="conferencia">
                <div
                    class="conferencia container text-light text-center py-5 text-md-end"
                >
                    <h1 class="display-1 fw-semibold">Conf Bs As</h1>
                    <p class="desc px-3 px-md-0 conferencia_desc">
                        Bs As llega por primera vez a Argentina. Un evento para
                        compartir con nuestra comunidad el conocimiento y la
                        experiencia de los expertos que estan creando el futuro
                        de Internet. Ven a conocer a miembros del evento, a
                        otros estudiantes de Codo a Codo y a los oradores de
                        primer nivel que tenemos para ti. Te esperamos!
                    </p>
                    <div>
                        <a
                            href="#ser_orador"
                            class="btn btn-outline-light text-decoration-none"
                            >Quiero ser orador</a
                        >

                        <a href="FrontController?accion=comprar" class="btn btn-success"
                            >Comprar tickets</a
                        >
                    </div>
                </div>
            </section>
            <section id="oradores">
                <div class="container py-4">
                    <p class="text-center mb-0">CONOC� A LOS</p>
                    <h2 class="fw-semibold display-2 text-center">ORADORES</h2>
                    <div
                        class="contenedor d-flex flex-column flex-md-row align-items-center justify-content-md-center gap-3"
                    >
                        <div class="tarjeta card">
                            <img
                                src="./img/ada.jpeg"
                                class="card-img-top img-fluid"
                                alt="Ada"
                            />
                            <div class="card-body">
                                <div>
                                    <span class="badge text-bg-secondary"
                                        >Negocios</span
                                    >
                                    <span class="badge text-bg-danger"
                                        >Startups</span
                                    >
                                </div>
                                <span class="display-5 fw-semibold">Ada</span>
                                <p class="desc">
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipisicing elit. Quasi, corporis
                                    dignissimos. Aliquid, eaque corrupti,
                                    repudiandae laudantium quo sunt cum
                                    cupiditate optio sit ut illum, consequatur
                                    molestiae illo repellendus possimus
                                    sapiente!
                                </p>
                            </div>
                        </div>
                        <div class="tarjeta card">
                            <img
                                src="./img/bill.jpg"
                                class="card-img-top img-fluid"
                                alt="Bill"
                            />
                            <div class="card-body">
                                <div>
                                    <span class="badge text-bg-primary"
                                        >React</span
                                    >
                                    <span class="badge text-bg-warning"
                                        >Javascript</span
                                    >
                                </div>
                                <span class="display-5 fw-semibold">Bill</span>
                                <p class="desc">
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipisicing elit. Quasi, corporis
                                    dignissimos. Aliquid, eaque corrupti,
                                    repudiandae laudantium quo sunt cum
                                    cupiditate optio sit ut illum, consequatur
                                    molestiae illo repellendus possimus
                                    sapiente!
                                </p>
                            </div>
                        </div>
                        <div class="tarjeta card">
                            <img
                                src="./img/steve.jpg"
                                class="card-img-top img-fluid"
                                alt="Steve"
                            />
                            <div class="card-body">
                                <div>
                                    <span class="badge text-bg-primary"
                                        >React</span
                                    >
                                    <span class="badge text-bg-warning"
                                        >Javascript</span
                                    >
                                </div>
                                <span class="display-5 fw-semibold">Steve</span>
                                <p class="desc">
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipisicing elit. Quasi, corporis
                                    dignissimos. Aliquid, eaque corrupti,
                                    repudiandae laudantium quo sunt cum
                                    cupiditate optio sit ut illum, consequatur
                                    molestiae illo repellendus possimus
                                    sapiente!
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="lugar_fecha">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-md-6 px-0">
                            <img src="./img/ba3.jpg" alt="" class="img" />
                        </div>
                        <div
                            class="col-12 col-md-6 bg-dark text-light py-4 py-md-3"
                        >
                            <h3>Bs As - Octubre</h3>
                            <p class="desc">
                                Buenos Aires es la gran capital cosmopolita de Argentina. Su centro es la Plaza de Mayo, rodeada de imponentes edificios del siglo XIX, incluida la Casa Rosada, el ic�nico palacio presidencial que tiene varios balcones. Entre otras atracciones importantes, se incluyen el Teatro Col�n, un lujoso teatro de �pera de 1908 con cerca de 2,500 asientos, y el moderno museo MALBA, que exhibe arte latinoamericano.
                            </p>
                            <button class="btn btn-outline-light">
                                Conoc� mas
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <section id="ser_orador">
                <div class="container py-5">
                    <div class="orador_desc text-center">
                        <span>CONVIERTETE EN UN</span>
                        <h2 class="display-2 fw-semibold">ORADOR</h2>
                        <p class="px-3">
                            An�tate como orador para dar una
                            <span class="dotted">charla ignite</span>. Cuentanos
                            de que quieres hablar?
                        </p>
                    </div>
                    <form
                        class="row justify-content-center align-items-center gap-3 container_max-width m-md-auto"
                        action="FrontController?accion=agregarOrador"
                        method="post"
                    >
                        <div class="row gap-3 gap-md-0">
                            <div class="col-12 col-md-6">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Nombre"
                                    name="nombre"
                                    minlength="3"
                                    maxlength="20"
                                    required
                                />
                            </div>
                            <div class="col-12 col-md-6">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="Apellido"
                                    name="apellido"
                                    minlength="3"
                                    maxlength="20"
                                    required
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <textarea
                                    name="tematica"
                                    id="tematica"
                                    placeholder="Sobre que quieres hablar?"
                                    class="form-control"
                                    minlength="3"
                                    maxlength="200"
                                    required
                                ></textarea>
                                <span class="smaller">
                                    Recuerda incluir un titulo para tu charla
                                </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <button
                                	type="sumbit"
                                    class="btn btn-success w-100 fw-medium py-2"
                                >
                                    ENVIAR
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </main>
        <footer class="footer text-light">
            <div class="container py-3">
                <ul
                    class="d-flex flex-column flex-md-row justify-content-center align-items-center gap-3 gap-lg-5 list-unstyled py-4 mb-0 text-center"
                >
                    <li>
                        Preguntas <br />
                        frecuentes
                    </li>
                    <li>Contactanos</li>
                    <li>Prensa</li>
                    <li>Conferencias</li>
                    <li>Terminos y<br />condiciones</li>
                    <li>Privacidad</li>
                    <li>Estudiantes</li>
                </ul>
            </div>
        </footer>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </body>
</html>