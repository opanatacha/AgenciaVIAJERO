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
    <script src="javascript/contatos.js" defer></script>
    <script>
        function exibirAlertaExclusao() {
            if (confirm("Tem certeza que deseja excluir sua conta?")) {
                alert("Que pena :( sentiremos sua falta. Obrigada por utilizar a Agência VIAJERO!");
            }
        }
    </script>
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

<br><br>

<!--FORMULÁRIO-->
<div class="container container-form formulario col-md-5" >
    <form id="contactForm" class="needs-validation border-primary p-4">
        <h1 class="destaque text-center">Perfil</h1>
        <div class="form-group">
            <label for="nome">Nome:</label> <input type="text"
                                                 class="form-control" id="nome" name="nome" value="${usuario.nome}" readonly>
        </div>
        <div class="form-group">
            <label for="cpf">CPF:</label> <input type="text"
                                                   class="form-control" id="cpf" name="cpf" value="${usuario.cpf}" readonly>
        </div>
        <div class="form-group">
            <label for="dataNascimento">Data de Nascimento:</label> <input type="date"
                                                     class="form-control" id="dataNascimento" name="dataNascimento"
                                                                           value="${usuario.dataNascimento}" readonly>
        </div>
        <div class="form-group">
            <label for="telefone">Telefone:</label> <input type="text"
                                                     class="form-control" id="telefone" name="telefone"
                                                           value="${usuario.telefone}" readonly>
        </div>
        <div class="form-group">
            <label for="email">E-mail:</label> <input
                type="text" value="${usuario.email}" class="form-control" id="email"
                name="email" readonly>
        </div>
        <div class="form-group">
            <label for="senha">Senha:</label> <input type="password"
                                                     class="form-control" id="senha" name="senha"
                                                     value="${usuario.senha}" readonly>
            <br>
        </div>
<%--        <button type="submit" class="btn btn-success text-light" href="UpdateController?id=${usuario.id}">Atualizar</button>--%>
<%--        <button type="submit" class="btn btn-danger text-light" href="DeleteController?id=${usuario.id}">Excluir</button>--%>
            <a href="UpdateController?id=${usuario.id}" class="btn btn-success">Editar</a>
            <a href="DeleteController?id=${usuario.id}" onclick="javascript:exibirAlertaExclusao()"
               class="btn btn-danger">Excluir</a>
    </form>
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