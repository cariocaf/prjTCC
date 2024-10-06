<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enviar.aspx.cs" Inherits="prjTCC.ADM.enviar" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/fatura.css" rel="stylesheet" />
    <title></title>
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
                    <!-- Seus links -->
                </ul>
            </nav>

            <main class="conteudo">
                <section class="secaoFormulario">
                    <div class="formularioContainer">
                        <asp:Label ID="lblNome" runat="server" Text="Nome:" AssociatedControlID="txtNome"></asp:Label>
                        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>

                        <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>

                        <asp:FileUpload ID="fileUpload" runat="server" />
                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btnEnviar" />
                    </div>
                </section>
            </main>
        </div>
<asp:Literal ID="litMsg" runat="server"></asp:Literal>
    </form>
</body>
</html>