<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NovaSenha.aspx.cs" Inherits="prjTCC.NovaSenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/redifinirsenha.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <main>
        <div class="voltar">
            <a href="login.html"><img src="images/de-volta.png"></a>
        </div>
        <section>
            <h1>REDEFINIR SENHA</h1>
            <p>Informe sua nova senha.</p>

                <div>
                    <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtConfirmarSenha" runat="server"></asp:TextBox>
                    <div class="centralizar">
                        <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar Senha" OnClick="btnConfirmar_Click" />
                        <asp:Literal ID="litMSG" runat="server"></asp:Literal>
                    </div>
                </div>
        </section>
    </main>
    </form>
</body>
</html>
