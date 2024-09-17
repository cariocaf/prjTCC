<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendarioADM.aspx.cs" Inherits="TCCacademia.ADM.calendarioADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/calendario.css">
    <title>Calendário</title>
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
                <img src="images/users/user.png" alt="Ícone de Usuário" class="iconeUsuarios">
            </div>
        </header>
        <main>
            <nav class="sidebar">
            <ul>
                <li>
                    <img src="images/icones/agenda.png" class="icone" /><a href="calendarioADM.aspx">Calendário</a>
                </li>
                <li>
                    <img src="images/icones/escreva.png" class="icone" /><a href="frequenciaADM.aspx">Frequência</a>
                </li>
                <li>
                    <img src="images/icones/coin.png" class="icone" /><a href="FaturaADM.aspx">Fatura</a>
                </li>
                <li>
                    <img src="images/icones/user.png" class="icone" /><a href="dadosEmpresariais.aspx">Dados Pessoais</a>
                </li>
                <li>
                    <img src="images/icones/people-together.png" class="icone" /><a href="turmaADM.aspx">Turma</a>
                </li>
                <li>
                    <img src="images/icones/tablet.png" class="icone" /><a href="controleADM.aspx">Controle</a>
                </li>
                <li>
                    <img src="images/icones/receipt.png" class="icone" /><a href="DespesasADM.aspx">Despesas Mensais</a>
                </li>
                <li>
                    <img src="images/icones verde/cadastro (1).png" class="icone" /><a href="cadastrarADM.aspx">Cadastrar</a>
                </li>
                <li>
                    <img src="images/icones/exit.png" class="icone" /><a href="../login.aspx">Sair</a>
                </li>
            </ul>
        </nav>
            <section class="conteudo">
                <div class="calendario">
                    <div class="navegacao-mes">
                        <button class="mes-anterior">&lt;</button>
                        <h2 id="mes-ano">Agosto 2024</h2>
                        <button class="mes-proximo">&gt;</button>
                    </div>
                    <div class="grade-calendario" id="calendario">
                        <!-- Os dias serão pelo JavaScript -->
                    </div>
                    <div class="botoes">
                        <button>Editar</button>
                        <button onclick="Adicionarimagem()">Adicionar</button>
                    </div>
                </div>
            </section>
        </main>

        <div id="modal" class="modal">
            <span id="fechar" class="fechar">&times;</span>
            <img id="imagem-modal" class="imagem-modal" src="" alt="Imagem do Calendário">
        </div>
        <script src="jsAdm/calendarioADM.js"></script>
    </form>
</body>
</html>
