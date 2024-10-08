﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frequenciaPROFESSOR.aspx.cs" Inherits="TCCacademia.PROFESSOR.frequenciaPROFESSOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/frequencia.css">
    <title>Frequência</title>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="caixaLogo">
                <img src="../images/menu-aberto.png" alt="Logo" class="menu" />
                <img src="images/logo.png" alt="Logo" class="logo" />
            </div>
            <div class="entrada">
                <span>Que bom ter você conosco, Willian</span>
                <img src="images/users/user.png" alt="User Icon" class="iconeUsers">
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
            <main class="content">
                <h1>Frequência</h1>
                <div class="filter-section">
                    <select id="periodo-matutino">
                        <option value="">Matutino</option>
                        <option value="05:30-07:00">05:30h às 07:00h</option>
                        <option value="07:00-09:00">07:00h às 09:00h</option>
                        <option value="09:00-11:00">09:00h às 11:00h</option>
                    </select>
                    <select id="periodo-vespertino">
                        <option value="">Vespertino</option>
                        <option value="12:00-14:00">12:00h às 14:00h</option>
                        <option value="14:00-16:00">14:00h às 16:00h</option>
                        <option value="16:00-18:00">16:00h às 18:00h</option>
                    </select>
                    <select id="periodo-noturno">
                        <option value="">Noturno</option>
                        <option value="18:00-20:00">18:00h às 20:00h</option>
                        <option value="20:00-22:00">20:00h às 22:00h</option>
                    </select>
                    <input type="date" id="data">
                    <button class="buscar-button">Buscar</button>
                </div>
                <table class="attendance-table">
                    <thead>
                        <tr>
                            <th>Nome do Aluno</th>
                            <th>Data</th>
                            <th>Presença</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>João Silva</td>
                            <td>01/08/2024</td>
                            <td>
                                <input type="checkbox"></td>
                        </tr>
                        <tr>
                            <td>Maria Souza</td>
                            <td>01/08/2024</td>
                            <td>
                                <input type="checkbox"></td>
                        </tr>
                        <!-- Adicione mais linhas conforme necessário -->
                    </tbody>
                </table>
                <button class="save-button">Salvar</button>
            </main>
        </div>
    </form>
</body>
</html>
