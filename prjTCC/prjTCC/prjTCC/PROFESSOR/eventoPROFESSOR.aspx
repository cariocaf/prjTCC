<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eventoPROFESSOR.aspx.cs" Inherits="TCCacademia.PROFESSOR.eventoPROFESSOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/evento.css">
    <title>Calendário</title>
</head>
<body>
    <form id="form1" runat="server">
        <header class="cabecalho">
            <div class="caixaLogo">
                <img src="../images/menu-aberto.png" alt="Logo" class="menu" />
                <img src="images/logo.png" alt="Logo" class="logo" />
            </div>
            <div class="entrada">
                <span>Que bom ter você conosco, Willian</span>
                <img src="images/users/user.png" alt="Ícone de Usuário" class="iconeUsuarios">
            </div>
        </header>
        <div class="container">
            <nav class="barra-lateral">
                <ul>
                    <li>
                        <img src="images/icones/agenda.png" class="icone"><a href="calendarioProfessor.aspx">Calendário</a></li>
                    <li>
                        <img src="images/icones/escreva.png" class="icone"><a href="frequenciaProfessor.aspx">Frequência</a></li>
                    <li>
                        <img src="images/icones/coin.png" class="icone"><a href="dadosMensaisProfessor.aspx">Fatura</a></li>
                    <li>
                        <img src="images/icones/user.png" class="icone"><a href="dadosEmpresariaisProfessor.aspx">Dados Pessoais</a></li>
                    <li>
                        <img src="images/icones/people-together.png" class="icone"><a href="turmaProfessor.aspx">Turma</a></li>
                    <!-- <li><img src="images/icones/tablet.png" class="icone"><a href="#">Controle</a></li>
                <li><img src="images/icones/receipt.png" class="icone"><a href="#">Despesas Mensais</a></li>
                <li><img src="images/icones/cadastro.png" class="icone"><a href="#">Cadastrar</a></li>  -->
                    <li>
                        <img src="images/icones/exit.png" class="icone"><a href="../index.aspx">Sair</a></li>
                </ul>
            </nav>
        </div>
    </form>
</body>
</html>
