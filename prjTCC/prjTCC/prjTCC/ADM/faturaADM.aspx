<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="faturaADM.aspx.cs" Inherits="TCCacademia.ADM.faturaADM" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/fatura.css" />
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
                <span>Que bom ter você conosco, Willian</span>
                <img src="images/users/user.png" alt="Ícone de Usuário" class="iconeUsuarios" />
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

            <main class="conteudo">
                <section class="secaoFormulario">
                    <div class="formularioContainer">
                        <asp:Label ID="lblNome" runat="server" Text="Nome:" AssociatedControlID="txtNome"></asp:Label>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>

                        <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>

                        <div class="secaoUpload">
                            <img src="images/em-anexo.png" alt="Anexar Fatura" />
                            <span>Anexar Fatura</span>
                        </div>

                        <asp:Button ID="btnAnexar" runat="server" Text="Anexar" CssClass="btnAnexar" />
                    </div>
                </section>
            </main>
        </div>
    </form>
</body>
</html>
