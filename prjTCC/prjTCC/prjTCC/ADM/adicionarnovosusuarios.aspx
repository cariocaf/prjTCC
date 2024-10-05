<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionarnovosusuarios.aspx.cs" Inherits="prjTCC.ADM.adicionarnovosusuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/cadastrar.css">
    <title>Cadastrar</title>
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
 <main class="main-content">
      <h1>Dados Pessoais</h1>
      <div class="form">
          <section class="form-section">
              <div class="form-row">
                  <div class="form-group">
                      <label for="cpf">CPF:</label>
                      <asp:TextBox ID="txtCPF" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="nome">Nome:</label>
                      <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="sobrenome">Sobrenome:</label>
                      <asp:TextBox ID="txtSobrenome" runat="server"></asp:TextBox>
                  </div>
              </div>
          </section>
          <section class="form-section">
              <div class="form-row">
                  <div class="form-group">
                      <label for="email">E-mail:</label>
                      <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="senha">Senha:</label>
                      <asp:TextBox ID="txtSenha" TextMode="Password" runat="server"></asp:TextBox>
                  </div>
              </div>
          </section>
          <section class="form-section">
              <div class="form-row">
                  <div class="form-group">
                      <label for="data-nascimento">Data de Nascimento:</label>
                      <asp:TextBox ID="txtDataNascimento" TextMode="Date" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="telefone">Telefone:</label>
                      <asp:TextBox ID="txtTelefone" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label>Sexo:</label>
                      <asp:RadioButtonList ID="rblSexo" runat="server">
                          <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
                          <asp:ListItem Text="Feminino" Value="0"></asp:ListItem>
                      </asp:RadioButtonList>
                  </div>
              </div>
          </section>
          <h2 class="address-title">Endereço</h2>
          <section class="form-section">
              <div class="form-row">
                  <div class="form-group">
                      <label for="cep">CEP:</label>
                      <asp:TextBox ID="txtCEP" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="cidade">Cidade:</label>
                      <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="endereco">Rua:</label>
                      <asp:TextBox ID="txtRua" runat="server"></asp:TextBox>
                  </div>
              </div>
          </section>
          <section class="form-section">
              <div class="form-row">
                  <div class="form-group">
                      <label for="numero">Número:</label>
                      <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="bairro">Bairro:</label>
                      <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="complemento">Complemento:</label>
                      <asp:TextBox ID="txtComplemento" runat="server"></asp:TextBox>
                  </div>
              </div>
          </section>
          <section class="form-section">
              <div class="form-row">
                  <div class="form-group">
                      <label for="status">Status:</label>
                      <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="ranking">Ranking:</label>
                      <asp:TextBox ID="txtRanking" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="plano">Plano:</label>
                      <asp:TextBox ID="txtPlano" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="turma">Turma:</label>
                      <asp:TextBox ID="txtTurma" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="tipo">Tipo:</label>
                      <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
                  </div>
              </div>
          </section>
          <div class="form-footer">
              <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click"/>
              </div>
          <asp:Literal ID="lblErro" runat="server"></asp:Literal>

    </form>
</body>
</html>
