<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="turmaADM.aspx.cs" Inherits="TCCacademia.ADM.turmaADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/controle.css">
    <title>Turma</title>
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
            <nav class="sidebar">
            <ul>
                <li>
                    <img src="images/icones/agenda.png" class="icone"><a href="calendarioADM.aspx">Calendário</a></li>
                <li>
                    <img src="images/icones/escreva.png" class="icone"><a href="frequenciaADM.aspx">Frequência</a></li>
                <li>
                    <img src="images/icones/coin.png" class="icone"><a href="FaturaADM.aspx">Fatura</a></li>
                <li>
                    <img src="images/icones/user.png" class="icone"><a href="dadosEmpresariais.aspx">Dados Pessoais</a></li>
                <li>
                    <img src="images/icones/people-together.png" class="icone"><a href="turmaADM.aspx">Turma</a></li>
                <li>
                    <img src="images/icones/tablet.png" class="icone"><a href="controleADM.aspx">Controle</a></li>
                <li>
                    <img src="images/icones/receipt.png" class="icone"><a href="DespesasADM.aspx">Despesas Mensais</a></li>
                <li>
                    <img src="images/icones verde/cadastro (1).png" class="icone"><a href="cadastrarADM.aspx">Cadastrar</a></li>
                <li>
                    <img src="images/icones/exit.png" class="icone"><a href="../login.aspx">Sair</a></li>
            </ul>
            </nav>
            <div class="content">

                <div class="controle-filtros">
                    <select name="periodo" id="periodo">
                        <option value="Matutino">matutino</option>
                        <option value="05:30 às 07">05:30 às 07</option>
                        <option value="07 às 08">07 às 08</option>
                    </select>
                    <select name="horario" id="horario">
                        <option value="05:30 às 07">Verspetino</option>
                        <option value="14:00 as 16:00">14:00 as 16:00</option>
                        <option value="16:00 as 18:00">16:00 as 18:00</option>
                    </select>

                    <select name="horario" id="horario">
                        <option value="Noite">Noite</option>
                        <option value="18:10 as 20:10">18:10 as 20:10</option>
                        <option value="20:10 as 22:10">20:10 as 22:10</option>
                    </select>

                    <select name="professor" id="professor">
                        <option value="prof. Willian Ambrósio">prof.Willian Ambrósio</option>
                        <option value="prof. Pitter Dolglas">prof. Pitter Dolglas </option>
                        <option value="prof. Reinaldo Junior">prof. Reinaldo Junior</option>
                    </select>
                    <button class="btn-buscar">BUSCAR</button>
                </div>

                <div class="tabela-controle">
                    <h2>NOME DO PERIODO</h2>
                    <p>Nome Professor</p>
                    <div class="tabela">



                        <table class="tabela-frequencia">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>José Marcos</td>

                                </tr>
                                <tr>
                                    <td>Marcos Antonio</td>

                                </tr>

                                <tr>
                                    <td>Beatriz sampaio</td>

                                </tr>

                                <tr>
                                    <td>Neymar snatos</td>

                                </tr>

                                <tr>
                                    <td>Rojas matias</td>

                                </tr>


                            </tbody>
                        </table>

                    </div>
    </form>
</body>
</html>
