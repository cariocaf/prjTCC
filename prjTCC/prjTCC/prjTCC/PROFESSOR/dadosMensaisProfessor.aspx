<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosMensaisProfessor.aspx.cs" Inherits="TCCacademia.PROFESSOR.dadosMensaisProfessor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Despesas.css">
    <title>Despesas</title>
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
            <nav class="barra-lateral">
                <ul>
                    <li>
                        <img src="images/icones/agenda.png" class="icone"><a href="calendarioProfessor.aspx">Calendário</a></li>
                    <li>
                        <img src="images/icones/escreva.png" class="icone"><a href="frequenciaProfessor.aspx">Frequência</a></li>
                    <li>
                        <img src="images/icones/coin.png" class="icone"><a href="dadosMensaisProfessor.aspx">Fatura</a></li>
                    <li>
                        <img src="images/icones/user.png" class="icone"><a href="dadosEmpresariaisProfessor.aspx">Dados Pessoais</a></li>
                    <li>
                        <img src="images/icones/people-together.png" class="icone"><a href="turmaProfessor.aspx">Turma</a></li>
                    <!-- <li><img src="images/icones/tablet.png" class="icone"><a href="#">Controle</a></li>
                <li><img src="images/icones/receipt.png" class="icone"><a href="#">Despesas Mensais</a></li>
                <li><img src="images/icones/cadastro.png" class="icone"><a href="#">Cadastrar</a></li>  -->
                    <li>
                        <img src="images/icones/exit.png" class="icone"><a href="../index.aspx">Sair</a></li>
                </ul>
            </nav>
            <main>
                <h1>Despesas Mensais</h1>
                <div class="despesas-container">
                    <div class="meses">
                        <select>
                            <option value="">Meses</option>
                            <option value="janeiro">Janeiro</option>
                            <option value="fevereiro">Fevereiro</option>
                            <option value="marco">Março</option>
                            <option value="abril">Abril</option>
                            <option value="maio">Maio</option>
                            <option value="junho">Junho</option>
                            <option value="julho">Julho</option>
                            <option value="agosto">Agosto</option>
                            <option value="setembro">Setembro</option>
                            <option value="outubro">Outubro</option>
                            <option value="novembro">Novembro</option>
                            <option value="dezembro">Dezembro</option>
                        </select>
                    </div>
                    <div class="despesas">
                        <div class="despesa-titulo">
                            <label>Brutos Pela Paz</label>
                        </div>
                        <div class="despesa-itens">
                            <div>
                                <label>CAIXA - JUNHO DE 2024</label>
                                <label>ÁGUA - CUSTOS</label>
                                <label>ALUGUEL</label>
                                <label>ELEKTRO</label>
                                <label>NOVA UNIÃO - MENSALIDADE</label>
                                <label>CAIXA</label>
                            </div>
                            <div>
                                <label>R$ 2.060,00</label>
                                <label>R$ 0,00</label>
                                <label class="negativo">R$ -1.500,00</label>
                                <label class="negativo">R$ -93,45</label>
                                <label class="negativo">R$ -80,00</label>
                                <label>R$ 386,55</label>
                            </div>
                        </div>
                    </div>
                    <div class="botoes">
                        <button>Editar</button>
                        <button>Salvar</button>
                    </div>
                </div>
            </main>
        </div>
    </form>
</body>
</html>
