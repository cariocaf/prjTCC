<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frequenciaALUNO.aspx.cs" Inherits="TCCacademia.ALUNO.frequenciaALUNO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/frequenciaAluno.css">
    <title>Frequência</title>
</head>
<body>
    <form id="form1" runat="server">
    <header class="cabecalho">
            <div class="caixaLogo">
                <img src="../images/menu-aberto.png" alt="Logo" class="menu" />
                <img src="images/logo.png" alt="Logo" class="logo" />
            </div>
        <div class="entrada">
            <span>Que bom ter você conosco, Liziani</span>
            <img src="images/users/user.png" alt="Ícone de Usuário" class="iconeUsuarios">
        </div>
    </header>
    <main>
        <nav class="barra-lateral">
            <ul>
                <li><img src="images/icones/agenda.png" class="icone"><a href="calendarioALUNO.aspx">Calendário</a></li>
                <li><img src="images/icones/escreva.png" class="icone"><a href="frequenciaALUNO.aspx">Frequência</a></li>
                <li><img src="images/icones/coin.png" class="icone"><a href="faturaALUNO.aspx">Fatura</a></li>
                <li><img src="images/icones/user.png" class="icone"><a href="dadosPessoaisALUNO.aspx">Dados Pessoais</a></li>
                <li><img src="images/icones/exit.png" class="icone"><a href="../index.aspx">Sair</a></li>
            </ul>
        </nav>

        <main class="main-content">
            <h1 class="tituloFatura">Frequência</h1>
            <table class="tabela-frequencia">
                <thead>
                    <tr>
                        <th>Data</th>
                        <th>Presença</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>18/08/2024</td>
                        <td>Presente</td>
                    </tr>
                    <tr>
                        <td>20/08/2024</td>
                        <td>Ausente</td>
                    </tr>

                    <tr>
                        <td>01/09/2024</td>
                        <td>Ausente</td>
                    </tr>

                    <tr>
                        <td>02/09/2024</td>
                        <td>Ausente</td>
                    </tr>

                    <tr>
                        <td>07/09/2024</td>
                        <td>Ausente</td>
                    </tr>

                    <!-- Adicione mais linhas conforme necessário -->
                </tbody>
            </table>
        </main>
    </main>
    </form>
</body>
</html>
