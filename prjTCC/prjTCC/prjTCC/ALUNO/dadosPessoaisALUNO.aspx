﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosPessoaisALUNO.aspx.cs" Inherits="TCCacademia.ALUNO.dadosPessoaisALUNO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/dadospessoaisAluno.css">
    <title>Dados Pessoais</title>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="caixaLogo">
                <img src="../images/menu-aberto.png" alt="Logo" class="menu" />
                <img src="images/logo.png" alt="Logo" class="logo" />
            </div>
            <div class="entrada">
                <span>Que bom ter você conosco, Liziani</span>
                <img src="images/users/user.png" alt="User Icon" class="iconeUsers">
            </div>
        </header>
        <nav class="barra-lateral">
            <ul>
                <li>
                    <img src="images/icones/agenda.png" class="icone"><a href="calendarioALUNO.aspx">Calendário</a></li>
                <li>
                    <img src="images/icones/escreva.png" class="icone"><a href="frequenciaALUNO.aspx">Frequência</a></li>
                <li>
                    <img src="images/icones/coin.png" class="icone"><a href="faturaALUNO.aspx">Fatura</a></li>
                <li>
                    <img src="images/icones/user.png" class="icone"><a href="dadosPessoaisALUNO.aspx">Dados Pessoais</a></li>
                <li>
                    <img src="images/icones/exit.png" class="icone"><a href="../index.aspx">Sair</a></li>
            </ul>
        </nav>
        <main class="main-content">
            <h1>Dados Pessoais</h1>
            <form class="form">
                <section class="form-section">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="nome">Nome:</label>
                            <input type="text" id="nome" name="nome" disabled>
                        </div>
                        <div class="form-group">
                            <label for="sobrenome">Sobrenome:</label>
                            <input type="text" id="sobrenome" name="sobrenome" disabled>
                        </div>
                        <div class="form-group">
                            <label for="email">E-mail:</label>
                            <input type="email" id="email" name="email">
                        </div>
                    </div>
                </section>
                <section class="form-section">
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
                            <input type="text" id="cpf" name="cpf" disabled>
                        </div>
                    </div>
                </section>
                <section class="form-section">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="data-nascimento">Data de Nascimento:</label>
                            <input type="date" id="data-nascimento" name="data-nascimento" disabled>
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
                            <input type="text" id="cep" name="cep">
                        </div>
                        <div class="form-group">
                            <label for="cidade">Cidade:</label>
                            <input type="text" id="cidade" name="cidade">
                        </div>
                        <div class="form-group">
                            <label for="endereco">Rua:</label>
                            <input type="text" id="endereco" name="endereco">
                        </div>
                    </div>
                </section>
                <section class="form-section">
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
                </section>
                <div class="form-footer">
                    <button type="submit">Salvar</button>
                </div>
            </form>

            <div class="progress-section">
                <div class="progress-details">
                    <h3 class="progress-message">Seu progresso</h3>
                    <p class="progress-detail">Parabéns, você já tem 50% no seu progresso para a  sua próxima faixa!</p>
                </div>
                <div class="progress-chart">
                    <svg viewBox="0 0 36 36" class="circular-chart">
                        <path class="circle-bg"
                            d="M18 2.0845A15.915 15.915 0 0 0 2.0845 18 15.915 15.915 0 0 0 18 33.915 15.915 15.915 0 0 0 33.915 18 15.915 15.915 0 0 0 18 2.0845"
                            fill="none" />
                        <path class="circle"
                            stroke-dasharray="50, 100"
                            d="M18 2.0845A15.915 15.915 0 0 0 2.0845 18 15.915 15.915 0 0 0 18 33.915 15.915 15.915 0 0 0 33.915 18 15.915 15.915 0 0 0 18 2.0845"
                            fill="none" />
                        <text x="50%" y="50%" class="percentage"></text>
                    </svg>
                </div>
            </div>
        </main>
    </form>
</body>
</html>
