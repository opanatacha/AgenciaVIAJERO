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

        <!--CARD GRANDE-->        
            <div class="card mb-4" style="margin-bottom: 60px;">
            <img class="card-img-top"
                src="img/Undredal-Noruega.jpg"
                alt="Cidade da Noruega - Undredal">
            <div class="card-body">
                <h5 class="card-title">Undredal - Noruega</h5>

                <p class="card-text pacote-descricao"> Hotel
                    ⭐⭐⭐⭐ - <strong>Das model Hotel</strong></p>
                <p class="card-text pacote-descricao">2 adultos 👥</p>
                <p class="card-text pacote-descricao"> 5 dias e 4
                    noites ⏳</p>
                <p class="card-text pacote-descricao"><strong>Detalhes do
                        pacote:</strong></p>
                <ul class="card-text pacote-descricao">
                    <dl><i class="fas fa-plane-departure"></i> Passagens aéreas
                        ida e volta</dl>
                    <dl><i class="fas fa-utensils"></i> Café da manhã</dl>
                    <dl><i class="fas fa-wifi"></i> Wi-Fi gratuito</dl>
                    <dl><i class="fas fa-swimming-pool"></i> Piscina aquecida</dl>
                    <dl><i class="fas fa-id-card-alt"></i> Guia de turismo</dl>
                    <dl><i class="fas fa-bed"></i> Acomodações: Quarto, Sala de
                        estar, TV a cabo, Ar condicionado </dl>
                </ul>
                <hr>
                <p class="card-text pacote-descricao"><strong>Não incluso:</strong></p>
                <ul class="card-text pacote-descricao">
                    <dl><i class="fas fa-parking"></i> Estacionamento </dl>
                    <dl><i class="fas fa-utensils"></i> Almoço, lanches, jantar</dl>
                    <dl><i class="fas fa-glass-martini-alt"></i> Bar </dl>
                    <dl><i class="fas fa-concierge-bell"></i> Demais serviços
                        além dos descritos acima </dl>
                </ul>
                <hr>
                <p class="card-text pacote-descricao"><strong>Sobre o destino</strong></p>
                <p class="card-text pacote-descricao">A Noruega é um país rico
                    em diversidade natural. Undredal é uma pequena vila no
                    município
                    de Aurland, no condado de Vestland, na Noruega. O
                    popular destino turístico de Undredal está localizado ao
                    longo do Aurlandsfjorden, que é uma ramificação do maciço
                    Sognefjorden no "país do fiorde" da Noruega. Você e sua
                    companhia poderão desfrutar de um maravilhoso hotel 4
                    estrelas, descansar com uma belissima vista,
                    dar passeios incríveis com o guia local licenciado
                    além de curtir as atrações culturais do local.
                </p>

                <hr>
                <p class="card-text pacote-descricao">Valor anterior:</p>
                <p class="pacote-preco-antigo">R$ 10.759,00</p>
                <p><strong>Valor atual</strong></p>
                <p class="pacote-preco-atual">R$ 8.226,00</p>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button class="btn btn-success me-md-2" type="button">
                        <a href="contato.jsp" class="text-light">Reservar
                            pacote</a></button>
                </div>
            </div>
            <p class="card-text pacote-descricao"><strong>*Página teste</strong></p>
        </div>

        <!-- PEQUENOS CARDS -->
         <section id="cards_pequenos" style="margin-bottom: 60px;">
            <h1 class="galeria">Galeria de fotos 📸</h1>
            <p class="p-galeria">Clique na imagem para ampliar e clique
                novamente para retornar a galeria.</p>
            <div class="centralizar">
                <div class="card">
                    <div class="card-body">
                        <img
                            src="img/conferiroferta/undredal (1).jfif"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (6).jfif"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (7).jfif"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>

            </div>
            <div class="centralizar">
                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (8).jfif"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (9).jfif"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>
            </div>

            <div class="centralizar">
                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (1).jpg"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (2).jpg"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>

                <div class="card">
                    <div class="card-body">
                        <img src="img/conferiroferta/undredal (3).jpg"
                            class="card-img-top imagem-ampliavel"
                            alt="Cidade da Noruega - Undredal">
                    </div>
                </div>
            </div>
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