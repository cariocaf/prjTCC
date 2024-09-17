<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="prjTCC.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/login.css"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <section class="login">
                <div class="voltar">
                    <a href="index.aspx">
                        <img src="images/de-volta.png" alt="Voltar" /></a>
                </div>
                <asp:Image ID="imgLogo" runat="server" ImageUrl="~/images/logo.png" />
                <h1>LOGIN</h1>
                <div>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="login-input" Placeholder="Email:" TextMode="Email"></asp:TextBox>
                    <asp:TextBox ID="txtSenha" runat="server" CssClass="login-input" Placeholder="Senha:" TextMode="Password"></asp:TextBox>
                    <a href="redefinirSenha.aspx">
                        <p>ESQUECI MINHA SENHA</p>
                    </a>
                    <asp:Button ID="btnEntrar" runat="server" CssClass="login-button" Text="Entrar" onclick="btnEntrar_Click"/>
                </div>
            </section>

            <section class="foto">
                <asp:Image ID="imgFoto" runat="server" ImageUrl="~/images/feminino.jpeg" />
            </section>
        </main>
        <asp:Literal ID="litMensagem" runat="server"></asp:Literal>
    </form>
</body>
</html>
