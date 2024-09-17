<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosEmpresariaisPROFESSOR.aspx.cs" Inherits="TCCacademia.PROFESSOR.dadosEmpresariaisPROFESSOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/dadosPessoais.css">
    <title>Dados Empresariais</title>
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
                        <img src="images/icones/exit.png" class="icone"><a href="../index.html">Sair</a></li>
                </ul>
            </nav>
            <main class="main-content">
                <h1>Dados Pessoais</h1>
                <form class="form">
                    <section class="form-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="nome">Nome:</label>
                                <asp:TextBox type="text" ID="txtNome" name="nome" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="sobrenome">Sobrenome:</label>
                                <asp:TextBox type="text" ID="txtSobrenome" name="sobrenome" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email">E-mail:</label>
                                <asp:TextBox type="email" ID="txtEmail" name="email" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </section>
                    <section class="form-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="senha">Senha:</label>
                                <asp:TextBox type="password" ID="txtSenha" name="senha" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="telefone">Telefone:</label>
                                <asp:TextBox type="text" ID="txtTelefone" name="telefone" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="cpf">CPF:</label>
                                <asp:TextBox type="text" ID="txtCPF" name="cpf" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </section>
                    <section class="form-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="data-nascimento">Data de Nascimento:</label>
                                <asp:TextBox type="date" ID="txtDataNascimento" name="data-nascimento" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="permissao">Permissão de acesso:</label>
                                <select id="permissao" name="permissao">
                                    <option value="aluno">Aluno</option>
                                    <option value="professor">Professor</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Sexo:</label>
                                <div class="gender-options">
                                    <div class="gender-option">
                                        <input type="radio" id="masculino" name="sexo" value="masculino">
                                        <label for="masculino">Masculino</label>
                                    </div>
                                    <div class="gender-option">
                                        <input type="radio" id="feminino" name="sexo" value="feminino">
                                        <label for="feminino">Feminino</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <h2 class="address-title">Endereço</h2>
                    <section class="form-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="cep">CEP:</label>
                                <asp:TextBox type="text" ID="txtCEP" name="cep" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="cidade">Cidade:</label>
                                <asp:TextBox type="text" ID="txtCidade" name="cidade" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="endereco">Rua:</label>
                                <asp:TextBox type="text" ID="txtEndereco" name="endereco" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </section>
                    <section class="form-section">
                        <div class="form-row">
                            <div class="form-group">
                                <label for="numero">Número:</label>
                                <asp:TextBox type="text" ID="txtNumero" name="numero" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="bairro">Bairro:</label>
                                <asp:TextBox type="text" ID="txtBairro" name="bairro" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="complemento">Complemento:</label>
                                <asp:TextBox type="text" ID="txtComplementos" name="complemento" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </section>
                    <div class="form-footer">
                        <button type="submit">Salvar</button>
                    </div>
                </form>
            </main>
        </div>
    </form>
</body>
</html>
