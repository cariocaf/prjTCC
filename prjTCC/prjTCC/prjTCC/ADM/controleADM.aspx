<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="controleADM.aspx.cs" Inherits="TCCacademia.ADM.controleADM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/controle.css" rel="stylesheet" />
    <title>Controle</title>
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
            <div class="content">
                <div class="controle-filtros">
                    <select name="periodo" id="periodo">
                        <option value="matutino">matutino</option>
                        <option value="vespertino">vespertino</option>
                        <option value="noturno">noturno</option>
                    </select>
                    <select name="horario" id="horario">
                        <option value="05:30 às 07">05:30 às 07</option>
                        <option value="07 às 08">07 às 08</option>
                        <option value="09 às 11">09 às 11</option>
                    </select>
                    <select name="professor" id="professor">
                        <option value="prof. Willian Ambrósio">prof.Willian Ambrósio</option>
                        <option value="prof. Pitter Dolglas">prof. Pitter Dolglas </option>
                        <option value="prof. Reinaldo Junior">prof. Reinaldo Junior</option>
                    </select>
                    <button class="btn-buscar">BUSCAR</button>
                </div>
                <div class="tabela-controle">
                    <h2>matutino</h2>
                    <div class="tabela">
                        <div class="row">
                            <span class="nome">Amanda Oliveira Souza</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Manuela campos Amorim</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Gabriel Dos Santos</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Micael Pinheiro da sila</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Eduarda Marthins dos Santos </span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Juliana Bricto</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Guilherem Custódio</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Franciele Guia dos Santos</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                        <div class="row">
                            <span class="nome">Murilo Mendes</span>
                            <select class="situacao">
                                <option value="pago">PAGO</option>
                                <option value="pendente">PENDENTE</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>