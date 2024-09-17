<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faturaALUNO.aspx.cs" Inherits="TCCacademia.ALUNO.faturaALUNO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/faturaAluno.css">
    <title>Fatura</title>
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
                    <li>
                        <img src="images/icones/agenda.png" class="icone"><a href="calendarioALUNO.aspx">Calendário</a></li>
                    <li>
                        <img src="images/icones/escreva.png" class="icone"><a href="frequenciaALUNO.aspx">Frequência</a></li>
                    <li>
                        <img src="images/icones/coin.png" class="icone"><a href="faturaALUNO.aspx">Fatura</a></li>
                    <li>
                        <img src="images/icones/user.png" class="icone"><a href="dadosPessoaisALUNO.aspx">Dados Pessoais</a></li>
                    <li>
                        <img src="images/icones/exit.png" class="icone"><a href="../index.aspx">Sair</a></li>
                </ul>
            </nav>
            <main class="main-content">
                <h1 class="tituloFatura">Fatura</h1>
                <div class="tabela-container">
                    <table id="tabelaFatura">
                        <tbody>
                            <tr class="expandible">
                                <td>17/08/2024</td>
                                <td class="valor">R$ 100,00</td>
                                <td class="status pago">PAGO ✓ ✓</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                            <tr class="expandible">
                                <td>17/09/2024</td>
                                <td class="valor">R$ 150,00</td>
                                <td class="status pendente">Pendente ✗</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                            <tr class="expandible">
                                <td>17/10/2024</td>
                                <td class="valor">R$ 150,00</td>
                                <td class="status pendente">Pendente ✗</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                            <tr class="expandible">
                                <td>17/11/2024</td>
                                <td class="valor">R$ 150,00</td>
                                <td class="status pendente">Pendente ✗</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                            <tr class="expandible">
                                <td>17/12/2024</td>
                                <td class="valor">R$ 150,00</td>
                                <td class="status pendente">Pendente ✗</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                            <tr class="expandible">
                                <td>17/01/2025</td>
                                <td class="valor">R$ 150,00</td>
                                <td class="status pendente">Pendente ✗</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                            <tr class="expandible">
                                <td>17/02/2025</td>
                                <td class="valor">R$ 150,00</td>
                                <td class="status pago">PAGO ✓ ✓</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">BOLETO REFERENTE A PENDENCIA</td>
                            </tr>
                            <tr class="message-row">
                                <td colspan="3" class="message-content">ANEXAR COMPROVANTE</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </main>

            <script src="js/faturaaluno.js"></script>
    </form>
</body>
</html>
