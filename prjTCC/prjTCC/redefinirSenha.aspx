<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="redefinirSenha.aspx.cs" Inherits="prjTCC.redefinirSenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/redifinirsenha.css">
    <title>Redefinir Senha</title>
</head>
<body>
    <form id="form1" runat="server">
 <main>
        <div class="voltar">
            <a href="login.html"><img src="images/de-volta.png"></a>
        </div>
        <section>
            <h1>REDEFINIR SENHA</h1>
            <p>Vamos te ajudar. Informe os dados necessários para redefinir sua senha.
                Defina uma senha segura para ter um acesso a nossa academia.</p>

                <div>
                    <input type="email" placeholder="Email:">
                    <input type="password" placeholder="Nova Senha:">
                    <input type="password" placeholder="Confimar Senha">
                    <div class="centralizar">
                        <button>Confimar Senha</button>
                    </div>
                </div>
        </section>
    </main>
    </form>
</body>
</html>
