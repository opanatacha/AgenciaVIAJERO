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

       
        <!--CARDS-->
        <section class="ftco-section ftco-no-pt">
            <div class="container">
                <div class="row">

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/Paris-Franca.jpg"
                                alt="Cidade da França - Paris">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Paris - França</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/peru-machu-picchu.jpg"
                                alt="Cidade do Peru - Machu Picchu">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Machu Picchu - Peru</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/Maldivas-Malé.jpg"
                                alt="Ilhas Maldivas">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Ilhas Maldiva - Malé</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/Tokyo-Japão.jpg"
                                alt="Cidade do Japão - Tokyo">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Tokyo - Japão</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/Pequim-China.jpg"
                                alt="Cidade da China - Pequim">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Pequim - China</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/ponta-da-piedade-em-portugal.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Ponta da Piedade - Portugal</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/UdaIpur-India.jpg"
                                alt="Cidade da India - UdaIpur">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">UdaIpur - India                                                                 
                                </h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/Toledo - Espanha.jpg"
                                alt="Cidade da Espanha - Toledo">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Toledo - Espanha</h5>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-4">
                        <div class="card mb-4">
                            <img class="card-img-top imagem-ampliavel"
                                src="img/promo/undredal (1).jfif"
                                alt="Cidade da Noruega">
                            <div class="card-body">
                                <h5 class="card-title titulo-estilo">Undredal - Noruega</h5>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!--CARD GRANDE-->
        <div class="card mb-4">            
            <div class="card-body ">
                <h1 class="titulo-estilo">Viagens Internacionais com a VIAJERO ✈</h1>  
                <p class="card-text">A Agência VIAJERO é muito mais do que uma agência de viagens online comum. 
                    Somos a escolha ideal para tornar a sua experiência de viagem excepcional, sem preocupações 
                    e esforços desnecessários. Nossa missão é proporcionar a você, nosso valioso cliente, 
                    uma jornada memorável, desde o momento em que você sonha com seu destino até o momento 
                    em que volta para casa com lembranças incríveis.
                </p>

               <div class="row">
                   <div class="col-sm-6">
                       <div class="card mb-4">
                           <p class="titulo-estilo"><strong>Beneficios que a VIAJERO oferece</strong></p>
                           <ul>
                               <dl><i class="far fa-check-circle"></i> Experiência sem esforço</dl>
                               <dl><i class="far fa-check-circle"></i> Pacotes personalizados</dl>
                               <dl><i class="far fa-check-circle"></i> Expertise em destinos</dl>
                               <dl><i class="far fa-check-circle"></i> Economia e vantagem </dl>
                               <dl><i class="far fa-check-circle"></i> Assistência 24/7</dl>
                               <dl><i class="far fa-check-circle"></i> Atendimento personalizado</dl>
                               <dl><i class="far fa-check-circle"></i> Sorrisos no rosto</dl>
                               <dl><i class="far fa-check-circle"></i> Momentos inesquecíveis </dl>
                               
                           </ul>
                       </div>
                   </div>
               
                   <div class="col-sm-6">
                       <div class="card mb-4">
                           <p class="titulo-estilo"><strong>Beneficios dos pacotes:</strong></p>
                           <ul>
                               <dl><i class="fas fa-plane-departure"></i> Passagens aéreas ida e volta</dl>
                               <dl><i class="fas fa-utensils"></i> Café da manhã</dl>
                               <dl><i class="fas fa-wifi"></i> Internet</dl>
                               <dl><i class="fas fa-swimming-pool"></i> Piscina </dl>
                               <dl><i class="fas fa-id-card-alt"></i> Guia de turismo</dl>
                               <dl><i class="fas fa-bed"></i> Acomodações confortáveis</dl>  
                               <dl><i class="fas fa-ticket-alt"></i> Cupom de desconto </dl>                             
                               <dl><i class="fas fa-concierge-bell"></i> Serviços disponíveis de acordo com o pacote adquirido</dl>
                           </ul>
                       </div>
                   </div>                  
                             
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button class="btn btn-primary me-md-2" type="button">
                        <a href="contato.jsp" class="text-light">Faça uma cotação conosco</a></button>
                </div>
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
