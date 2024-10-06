<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chamada.aspx.cs" Inherits="prjTCC.ADM.chamada" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/frequencia.css" rel="stylesheet" />
    <title>Frequência</title>
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
                    <li><a href="calendarioADM.aspx">Calendário</a></li>
                    <li><a href="frequenciaADM.aspx">Frequência</a></li>
                    <li><a href="FaturaADM.aspx">Fatura</a></li>
                    <li><a href="dadosEmpresariais.aspx">Dados Pessoais</a></li>
                    <li><a href="turmaADM.aspx">Turma</a></li>
                    <li><a href="controleADM.aspx">Controle</a></li>
                    <li><a href="DespesasADM.aspx">Despesas Mensais</a></li>
                    <li><a href="cadastrarADM.aspx">Cadastrar</a></li>
                    <li><a href="../login.aspx">Sair</a></li>
                </ul>
            </nav>
            <main class="content">
                <h1>Frequência</h1>
                <div class="filter-section">
                    <select id="turmaSelect" runat="server" onchange="this.form.submit()">
                        <option value="">Selecione a Turma</option>
                    </select>
                    <input type="date" id="data" runat="server" />
                    <asp:Button ID="btnProcurar" runat="server" Text="Procurar" OnClick="btnProcurar_Click" />
                </div>
                <div>
                    <table class="attendance-table">
                        <thead>
                            <tr>
                                <th>Nome do Aluno</th>
                                <th>Data</th>
                                <th>Presença</th>
                            </tr>
                        </thead>
                        <tbody id="attendanceTable" runat="server">
                        </tbody>
                    </table>
                </div>
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            </main>
        </div>
    </form>
</body>
</html>
