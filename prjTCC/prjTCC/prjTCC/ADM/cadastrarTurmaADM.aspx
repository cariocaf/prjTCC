<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastrarTurmaADM.aspx.cs" Inherits="TCCacademia.ADM.cadastrarTurmaADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cadastrarTurma.css">
    <title>Cadastrar Turma</title>
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
                <img src="images/users/user.png" alt="Ícone de Usuário" class="iconeUsuarios" />
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
            <section class="secaoFormulario">
                <h2>Cadastrar Turma</h2>
                <div class="formularioContainer">
                    <div class="formularioEsquerda">
                        <div class="form-group">
                            <label for="txtNomeTurma">Nome da Turma:</label>
                            <asp:TextBox ID="txtNomeTurma" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtNomeInstrutor">Nome do Instrutor:</label>
                            <asp:TextBox ID="txtNomeInstrutor" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtDiasSemana">Dias da Semana:</label>
                            <asp:TextBox ID="txtDiasSemana" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtHorario">Horário:</label>
                            <asp:TextBox ID="txtHorario" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtFaixaEtaria">Faixa Etária:</label>
                            <asp:TextBox ID="txtFaixaEtaria" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtCapacidadeMaxima">Capacidade Máxima:</label>
                            <asp:TextBox ID="txtCapacidadeMaxima" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="formularioDireita">
                        <div class="form-group">
                            <label for="ddlHorarioTurma">Horário da Turma:</label>
                            <asp:DropDownList ID="ddlHorarioTurma" runat="server" CssClass="form-control">
                                <asp:ListItem Value="matutino">Matutino</asp:ListItem>
                                <asp:ListItem Value="vespertino">Vespertino</asp:ListItem>
                                <asp:ListItem Value="noturno">Noturno</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-footer">
                    <asp:Button ID="btnCadastrarTurma" runat="server" Text="Cadastrar" CssClass="botao" />
                </div>
            </section>
        </main>
    </form>
</body>
</html>
