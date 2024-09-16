<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosEmpresariasProfessor.aspx.cs" Inherits="prjTCC.Professor.dadosEmpresariasProfessor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/dadosPessoais.css">
    <title>Cadastrar</title>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="caixaLogo">
                <img src="images/logo.png" alt="Logo" class="logo">
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
                        <img src="images/icones/agenda.png" class="agenda"><a href="calendarioADM.html">Calendário</a></li>
                    <li>
                        <img src="images/icones/escreva.png" class="agenda"><a href="frequenciaADM.html">Frequência</a></li>
                    <li>
                        <img src="images/icones/coin.png" class="agenda"><a href="FaturaADM.html">Fatura</a></li>
                    <li>
                        <img src="images/icones/user.png" class="agenda"><a href="DadosEmpresariaisADM.html">Dados Pessoais</a></li>
                    <li>
                        <img src="images/icones/people-together.png" class="agenda"><a href="turmADM.html">Turma</a></li>
                    <li>
                        <img src="images/icones/tablet.png" class="agenda"><a href="controleADM.html">Controle</a></li>
                    <li>
                        <img src="images/icones/receipt.png" class="agenda"><a href="DespesasADM.html">Despesas Mensais</a></li>
                    <li>
                        <img src="images/icones/cadastro.png" class="agenda"><a href="cadastrarADM.html">Cadastrar</a></li>
                    <li>
                        <img src="images/icones/exit.png" class="agenda"><a href="login.html">Sair</a></li>
                </ul>
            </nav>
            <div class="main-content">
                <h1>Dados Pessoais</h1>
                <form class="form">
                    <h2>Dados Empresariais</h2>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="nome">Nome:</label>
                            <input type="text" id="nome" name="nome">
                        </div>
                        <div class="form-group">
                            <label for="sobrenome">Sobrenome:</label>
                            <input type="text" id="sobrenome" name="sobrenome">
                        </div>
                        <div class="form-group">
                            <label for="email">E-mail:</label>
                            <input type="email" id="email" name="email">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="senha">Senha:</label>
                            <input type="password" id="senha" name="senha">
                        </div>
                        <div class="form-group">
                            <label for="telefone">Telefone:</label>
                            <input type="text" id="telefone" name="telefone">
                        </div>
                        <div class="form-group">
                            <label for="cpf">CPF:</label>
                            <input type="text" id="cpf" name="cpf">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="data-nascimento">Data de Nascimento:</label>
                            <input type="date" id="data-nascimento" name="data-nascimento">
                        </div>

                        <div class="form-group">
                            <label>Sexo:</label>
                            <div>
                                <input type="radio" id="masculino" name="sexo" value="masculino">
                                <label for="masculino">Masculino</label>
                                <input type="radio" id="feminino" name="sexo" value="feminino">
                                <label for="feminino">Feminino</label>
                            </div>
                        </div>
                    </div>
                    <h2>Endereço</h2>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="cep">CEP:</label>
                            <input type="text" id="cep" name="cep">
                        </div>
                        <div class="form-group">
                            <label for="cidade">Cidade:</label>
                            <input type="text" id="cidade" name="cidade">
                        </div>
                        <div class="form-group">
                            <label for="endereco">Endereço:</label>
                            <input type="text" id="endereco" name="endereco">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="numero">Número:</label>
                            <input type="text" id="numero" name="numero">
                        </div>
                        <div class="form-group">
                            <label for="bairro">Bairro:</label>
                            <input type="text" id="bairro" name="bairro">
                        </div>
                        <div class="form-group">
                            <label for="complemento">Complemento:</label>
                            <input type="text" id="complemento" name="complemento">
                        </div>
                    </div>
                    <button type="submit">Salvar</button>
                </form>
            </div>
        </div>
    </form>
</body>
</html>
