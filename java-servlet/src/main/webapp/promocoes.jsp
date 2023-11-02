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
        <link rel="stylesheet" href="./css/style2.css">
        <link rel="stylesheet" href="./css/style.css">
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
                        <a class="nav-link link-light" href="promocoes.html">Promoções</a>
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

        <br><br><br>

        <!--CARDS-->
        <section class="ftco-section ftco-no-pt">
            <div class="container">
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

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/UdaIpur-India.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Uda Ipur - Índia</h5>
                                <p class="card-text pacote-descricao">7 dias e 6
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 7.999,00</p>
                                <p class="pacote-preco-atual">R$ 6.283,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Toledo - Espanha.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"> Toledo - Espanha </h5>
                                <p class="card-text pacote-descricao">8 dias e 7
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 10.499,00</p>
                                <p class="pacote-preco-atual">R$ 8.583,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Pelourinho-BA.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Salvador - BA</h5>
                                <p class="card-text pacote-descricao"> 15 dias e
                                    14 noites</p>
                                <p class="card-text pacote-descricao"> Pousada
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 3.929,00</p>
                                <p class="pacote-preco-atual">R$ 2.130,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Jalapao-TO.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Jalapão - TO</h5>
                                <p class="card-text pacote-descricao">3 dias e 2
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 5.450,00</p>
                                <p class="pacote-preco-atual">R$ 3.980,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/lençoismaranhenses-MA.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Lençóis Maranhenses - MA</h5>
                                <p class="card-text pacote-descricao"> 6 dias e
                                    5 noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos
                                    e 2 crianças</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 7.999,00</p>
                                <p class="pacote-preco-atual">R$ 6.515,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Maldivas-Malé.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Ilhas Maldivas - Malé</h5>
                                <p class="card-text pacote-descricao">5 dias e 4
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 15.699,00</p>
                                <p class="pacote-preco-atual">R$ 10.380,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Pequim-China.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Pequim - China</h5>
                                <p class="card-text pacote-descricao">10 dias e
                                    9 noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 12.765,00</p>
                                <p class="pacote-preco-atual">R$ 9.840,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/Tokyo-Japão.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Tokyo - Japão</h5>
                                <p class="card-text pacote-descricao">6 dias e 5
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 14.999,00</p>
                                <p class="pacote-preco-atual">R$ 12.835,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6 col-lg-4">
                        <div class="card mb-4">
                            <img class="card-img-top"
                                src="img/promo/ponta-da-piedade-em-portugal.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Lagos - Portugal</h5>
                                <p class="card-text pacote-descricao">5 dias e 4
                                    noites</p>
                                <p class="card-text pacote-descricao"> Hotel
                                    ⭐⭐⭐⭐</p>
                                <p class="card-text pacote-descricao">2 adultos</p>
                                <hr>
                                <p class="pacote-preco-antigo">R$ 1.699,00</p>
                                <p class="pacote-preco-atual">R$ 1.255,00</p>
                                <a href="conferiroferta.jsp"
                                    class="input btn btn-primary">Conferir</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- PAGINATION -->
        <section class="centralizar-pag">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </section>

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
