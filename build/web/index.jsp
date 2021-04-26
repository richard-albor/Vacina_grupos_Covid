<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Richard Albor" />
        <title>Duendes Flow</title>        
        <link rel="icon" type="image/x-icon" href="assets/img/duendeIco.png" />       
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>        
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="index.jsp">Duendes Flow</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="grupo.jsp">Grupo</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="prof-enfermagem.jsp">Prof. Enfermagem</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="vacina.jsp">Vacina</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="paciente.jsp">Paciente</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container">
                <div class="row">
                    <div class="container col-md-4 col-sm-12">
                        <!-- Masthead Avatar Image-->
                        <img class="masthead-avatar mb-5" src="assets/img/duendeLogo.png" alt="" />

                    </div>
                    <div class="container col-md-6 col-sm-12">
                            <!-- Masthead Heading-->
                        <h1 class="masthead-heading text-uppercase mb-0">Duendes Flow</h1>
                        <!-- Icon Divider-->
                        <div class="divider-custom divider-light">
                            <div class="divider-custom-line"></div>
                            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                            <div class="divider-custom-line"></div>
                        </div>
                        <!-- Masthead Subheading-->
                        <p class="masthead-subheading font-weight-light mb-0">Classificação - Profissionais - Vacinações</p>

                     </div>
               
            </div>
            </div>
        </header>


        <!-- Serviços Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
               
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Serviços Grid Items-->
                <div class="row justify-content-center">
                    <!-- Gripo Item 1-->
                    <div class="col-md-6 col-lg-4 mb-5 text-center">
                        <h5>Grupo</h5>
                       <a href="grupo.jsp">
                           <div class="portfolio-item mx-auto" >
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                               <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="assets/img/grupo.png" alt="" />
                          </div>
                        </a> 
                    </div>
                    <!-- Prof Enfermagem Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5 text-center">
                        <h5>Prof Enfermagem</h5>
                       <a href="prof-enfermagem.jsp"> 
                           <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                               <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div> 
                            </div>
                            <img class="img-fluid" src="assets/img/enfermeiro.png" alt="" />
                           </div>
                        </a>
                    </div>
                     <!-- Paciente Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5 text-center">
                        <h5>Paciente</h5>
                        <a href="paciente.jsp">
                            <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="assets/img/paciente.png" alt="" />
                            </div>
                        </a>
                    </div>
                    <!-- Vacina Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5 text-center">
                        <h5>Vacina</h5>
                        <a href="vacina.jsp">
                            <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="assets/img/vacina.png" alt="" />
                            </div>
                        </a>
                    </div>
                   
                </div>
            </div>
        </section>

   
     
      
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright © Richard Ferreira Albor 2021</small></div>
        </div>
      
        
        <!-- Bootstrap core JS-->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="js/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

