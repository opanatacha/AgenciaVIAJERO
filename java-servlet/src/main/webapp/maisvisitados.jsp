<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>O melhor site de viagens do Brasil | VIAJERO</title>
        <link rel="shortcut icon" href="img/logoteste.png">
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="./css/style2.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
            crossorigin="anonymous">
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
        <script src="javascript/conferiroferta.js" defer></script>
    </head>

    <body class="body-estilo">

    <!--NAVBAR-->
    <nav class="navbar navbar-expand-lg text-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp"><img width="60px"
                                                          src="img/logoteste.png"
                                                          alt="Logotipo com um viajante de mochila nas costas"></a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse"
                 id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active link-light"
                           aria-current="page" href="index.jsp">Início</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link-light" href="promocoes.jsp">Promoções</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle link-light"
                           href="destinos.jsp" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Destinos
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item"
                                   href="destinos.jsp#mais-visitados">Mais
                                Visitados</a></li>
                            <li><a class="dropdown-item"
                                   href="destinos.jsp#excursoes">Excursões</a></li>
                            <li><a class="dropdown-item"
                                   href="destinos.jsp#internacionais">Internacionais</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link link-light" href="contato.jsp">Contato</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle link-light "
                           href="destinos.jsp"
                           role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            Login
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="login.jsp">
                                Entrar</a></li>
                            <li><a class="dropdown-item" href="cadastro.jsp">Cadastrar-se</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

        <div class="navbar-brand navbar-sticky-top">
                <span class="navbar-text">
                    <h1 class="link-light nome-marca"> VIAJERO </h1>
                </span>
        </div>
    </nav>


        <!--CARROSSEL-->
        <div id="carouselExampleIndicators" class="carousel slide"
            data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/maisvisitados/resort (1).jpg"
                        class="d-block w-100 img-fluid"
                        alt="RESORT ÁREA PÍSCINA" style="object-fit: cover;">
                </div>
                <div class="carousel-item">
                    <img src="img/maisvisitados/resort (2).jpg"
                        class="d-block w-100 img-fluid"
                        alt="RESORT ÁREA PÍSCINA" style="object-fit: cover;">
                </div>
                <div class="carousel-item">
                    <img src="img/maisvisitados/resort (3).jpg"
                        class="d-block w-100 img-fluid"
                        alt="RESORT ÁREA EXTERNA PRAIA"
                        style="object-fit: cover;">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators"
                role="button" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators"
                role="button" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Próximo</span>
            </a>
        </div>

        <!--CARD GRANDE-->
        <div class="card mb-4">
            <div class="card-body ">

                <h1 class="titulo-estilo">Venha viajar com a VIAJERO ✈</h1>
                <p class="card-text">A Agência VIAJERO é muito mais do que uma
                    agência de viagens online comum. Somos a escolha ideal para
                    tornar a sua experiência de viagem excepcional, sem
                    preocupações e esforços desnecessários. Nossa missão é
                    proporcionar a você, nosso valioso cliente, uma jornada
                    memorável, desde o momento em que você sonha com seu destino
                    até o momento em que volta para casa com lembranças
                    incríveis. Na VIAJERO, não vendemos apenas pacotes de
                    viagens;
                    entregamos sonhos, experiências e a oportunidade de
                    descobrir o mundo com conforto, confiança e tranquilidade.
                    Deixe-nos fazer parte da sua próxima aventura e transformar
                    seus planos em realidade. Viaje com a VIAJERO e descubra o
                    significado de uma viagem sem preocupações e cheia de
                    lembranças incríveis.</p>

                <div class="row">
                    <div class="col-sm-6">
                        <div class="card mb-4">
                            <p class="titulo-estilo"><strong>Beneficios que a
                                    VIAJERO oferece</strong></p>
                            <ul>
                                <dl><i class="far fa-check-circle"></i>
                                    Experiência sem esforço</dl>
                                <dl><i class="far fa-check-circle"></i> Pacotes
                                    personalizados</dl>
                                <dl><i class="far fa-check-circle"></i>
                                    Expertise em destinos</dl>
                                <dl><i class="far fa-check-circle"></i> Economia
                                    e vantagem </dl>
                                <dl><i class="far fa-check-circle"></i>
                                    Assistência 24/7</dl>
                                <dl><i class="far fa-check-circle"></i>
                                    Atendimento personalizado</dl>
                                <dl><i class="far fa-check-circle"></i> Sorrisos
                                    no rosto</dl>
                                <dl><i class="far fa-check-circle"></i> Momentos
                                    inesquecíveis </dl>

                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="card mb-4">
                            <p class="titulo-estilo"><strong>Beneficios dos
                                    pacotes:</strong></p>
                            <ul>
                                <dl><i class="fas fa-plane-departure"></i>
                                    Passagens aéreas ida e volta</dl>
                                <dl><i class="fas fa-utensils"></i> Café da
                                    manhã</dl>
                                <dl><i class="fas fa-wifi"></i> Internet</dl>
                                <dl><i class="fas fa-swimming-pool"></i> Piscina
                                </dl>
                                <dl><i class="fas fa-id-card-alt"></i> Guia de
                                    turismo</dl>
                                <dl><i class="fas fa-bed"></i> Acomodações
                                    confortáveis</dl>
                                <dl><i class="fas fa-ticket-alt"></i> Cupom de
                                    desconto </dl>
                                <dl><i class="fas fa-concierge-bell"></i>
                                    Serviços disponíveis de acordo com o pacote
                                    adquirido</dl>
                            </ul>
                        </div>
                    </div>
                </div>

                <h3 class="titulo-estilo">Destinos mais visitados atualmente</h3>

                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Araruama.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Araruama - RJ</h5>
                                <p class="card-text pacote-descricao">5 dias e 4
                                    noites</p>
                                <p class="card-text pacote-descricao">Hotel ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 499,00</p>
                                <p class="pacote-preco-atual">R$ 283,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/jericoacoara-CE.png"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Jericoacoara - CE</h5>
                                <p class="card-text pacote-descricao"> 4 dias e
                                    3 noites </p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 2.499,00</p>
                                <p class="pacote-preco-atual">R$ 2.083,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Fortaleza-CE.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Fortaleza - CE</h5>
                                <p class="card-text pacote-descricao">5 dias e 4
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 1.799,00</p>
                                <p class="pacote-preco-atual">R$ 1.283,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>
                </div>

                <br>

                <h3 class="titulo-estilo">O que os nossos clientes dizem?</h3>

                <!--CARROSSEL-->
                <div id="carouselExampleCaptions" class="carousel slide">
                    <div class="carousel-indicators">
                        <button type="button"
                            data-bs-target="#carouselExampleCaptions"
                            data-bs-slide-to="0" class="active"
                            aria-current="true" aria-label="Slide 1"></button>
                        <button type="button"
                            data-bs-target="#carouselExampleCaptions"
                            data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button"
                            data-bs-target="#carouselExampleCaptions"
                            data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="img/maisvisitados/clienteRicardo.png"
                                class="d-block w-100"
                                alt="Cliente satisfeito elogiando os serviços da VIAJERO"
                                style="object-fit: contain;">
                        </div>
                        <div class="carousel-item">
                            <img src="img/maisvisitados/clienteAna.png"
                                class="d-block w-100"
                                alt="Cliente satisfeito elogiando os serviços da VIAJERO"
                                style="object-fit: contain;">
                        </div>
                        <div class="carousel-item">
                            <img src="img/maisvisitados/casalPontes.png"
                                class="d-block w-100"
                                alt="Cliente satisfeito elogiando os serviços da VIAJERO"
                                style="object-fit: contain;">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button"
                        data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"
                            aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button"
                        data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon "
                            aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>

         <!--FOOTER-->
         <footer class="ftco-footer ">
            <div class="container">
                <div class="row mb-5">                    
                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Pagamento</h2>
                            <ul class="list-unstyled"><img width="300px" src="./img/promo/asformasdepagamento.png">    
                            </ul>
                        </div>
                    </div>

                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4 ml-md-5">
                            <h2 class="ftco-heading-2">Informações</h2>
                            <ul class="list-unstyled">
                                <li><a href="destinos.jsp#mais-visitados"
                                        class="py-2 d-block text-black">Mais
                                        visitados</a></li>
                                <li><a href="destinos.jsp#excursoes"
                                        class="py-2 d-block text-black">Excursões</a></li>
                                <li><a href="destinos.jsp#internacionais"
                                        class="py-2 d-block text-black">Viagens
                                        Internacionais</a></li>
                            </ul>
                        </div>
                    </div>                   

                    <div class="col-md">
                        <div class="ftco-footer-widget mb-4">
                            <h2 class="ftco-heading-2">Fale Conosco</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <dl><i class="fas fa-map-marker-alt"></i>
                                        Rua Não Existente,
                                        2023, Rio de Janeiro, RJ, Brasil</dl>
                                    <dl><i class="fas fa-phone-alt"></i> +55 21
                                        1234 5678</dl>
                                    <dl><i class="far fa-envelope"></i>
                                        queroviajar@viajero.com</dl>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row col-md-12 text-center text-black">
                    <p><img width="40px" src="img/logoteste.png"
                            alt="Logotipo com um viajante de mochila nas costas">
                        <b>VIAJERO</b> | Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        Todos os direitos reservados | Feito por <a
                            href="https://github.com/eu1natacha"
                            style="color: black;"> <strong>Natacha Carvalho</strong></a></p>
                </div>
            </div>
        </footer>
    </body>
</html>
