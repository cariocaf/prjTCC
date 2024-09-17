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
            <main>
                <h1>Despesas Mensais</h1>
                <div class="despesas-container">
                    <div class="Meses">
                        <select>
                            <option value="">Meses</option>
                            <option value="Janeiro">Janeiro</option>
                            <option value="Fevereiro">Fevereiro</option>
                            <option value="Marco">Março</option>
                            <option value="Abril">Abril</option>
                            <option value="Maio">Maio</option>
                            <option value="Junho">Junho</option>
                            <option value="Julho">Julho</option>
                            <option value="Agosto">Agosto</option>
                            <option value="Setembro">Setembro</option>
                            <option value="Outubro">Outubro</option>
                            <option value="Novembro">Novembro</option>
                            <option value="Dezembro">Dezembro</option>
                        </select>
                    </div>
                    <table class="tabela-frequencia">
                        <thead>
                            <tr>
                                <th>MES DE JULHO</th>
                                <th>GASTOS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Doações</td>
                                <td class="verde">R$300,00</td>
                            </tr>

                            <tr>
                                <td>Campeonato</td>
                                <td class="vermelho">R$500,00</td>
                            </tr>


                            <tr>
                                <td>Viajem</td>
                                <td class="vermelho">R$300,00</td>
                            </tr>


                            <tr>
                                <td>Mensalidades</td>
                                <td class="verde">R$300,00</td>
                            </tr>

                            <tr>
                                <td>Caixa</td>
                                <td class="verde">R$50,00</td>
                            </tr>
            </main>
        </div>
    </form>
</body>
</html>