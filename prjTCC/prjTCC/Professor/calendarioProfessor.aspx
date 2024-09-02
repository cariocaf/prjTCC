<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendarioProfessor.aspx.cs" Inherits="prjTCC.Professor.calendarioProfessor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/calendarioProfessor.css">
    <title>Calendário</title>
</head>
<body>
    <form id="form1" runat="server">
<header class="cabecalho">
        <div class="caixaLogo">
            <img src="images/logo.png" alt="Logo" class="logo">
        </div>
        <div class="entrada">
            <span>Que bom ter você conosco, Willian</span>
            <img src="images/users/user.png" alt="Ícone de Usuário" class="iconeUsuarios">
        </div>
    </header>
    <div class="container">
        <nav class="barra-lateral">
            <ul>
                <li><img src="images/icones/agenda.png" class="icone"><a href="#">Calendário</a></li>
                <li><img src="images/icones/escreva.png" class="icone"><a href="#">Frequência</a></li>
                <li><img src="images/icones/coin.png" class="icone"><a href="#">Fatura</a></li>
                <li><img src="images/icones/user.png" class="icone"><a href="#">Dados Pessoais</a></li>
                <li><img src="images/icones/people-together.png" class="icone"><a href="#">Turma</a></li>
                <li><img src="images/icones/tablet.png" class="icone"><a href="#">Controle</a></li>
                <li><img src="images/icones/receipt.png" class="icone"><a href="#">Despesas Mensais</a></li>
                <li><img src="images/icones/cadastro.png" class="icone"><a href="#">Cadastrar</a></li>
                <li><img src="images/icones/exit.png" class="icone"><a href="#">Sair</a></li>
            </ul>
        </nav>
        <div class="conteudo">
            <div class="calendario">
                <div class="navegacao-mes">
                    <button class="mes-anterior">&gt;</button>
                    <h2>Junho</h2>
                    <button class="mes-proximo">&lt;</button>
                </div>
                <div class="grade-calendario">
                    <div class="dia">1</div>
                    <div class="dia">2</div>
                    <div class="dia">3</div>
                    <div class="dia">4</div>
                    <div class="dia">5</div>
                    <div class="dia">6</div>
                    <div class="dia">7</div>
                    <div class="dia">8</div>
                    <div class="dia">9</div>
                    <div class="dia">10</div>
                    <div class="dia">11</div>
                    <div class="dia">12</div>
                    <div class="dia">13</div>
                    <div class="dia evento">14</div>
                    <div class="dia">15</div>
                    <div class="dia">16</div>
                    <div class="dia">17</div>
                    <div class="dia">18</div>
                    <div class="dia">19</div>
                    <div class="dia">20</div>
                    <div class="dia">21</div>
                    <div class="dia">22</div>
                    <div class="dia evento">23</div>
                    <div class="dia">24</div>
                    <div class="dia">25</div>
                    <div class="dia">26</div>
                    <div class="dia">27</div>
                    <div class="dia">28</div>
                    <div class="dia">29</div>
                    <div class="dia">30</div>
                </div>
                <div class="botoes">
                    <button class="editar">Editar</button>
                    <button class="salvar">Salvar</button>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
