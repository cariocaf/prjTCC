<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="turmaPROFESSOR.aspx.cs" Inherits="TCCacademia.PROFESSOR.turmaPROFESSOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/turmaADM.css">
    <title>Turma</title>
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
        <main class="content">
            <h1>Turma</h1>
            <div class="turma">
                </select>
                <div class="controle-filtros">
                    <select name="periodo" id="periodo">
                        <option value="Matutino">matutino</option>
                        <option value="05:30 às 07">05:30 às 07</option>
                        <option value="07 às 08">07 às 08</option>
                    </select>
                    <select name="horario" id="horario">
                        <option value="05:30 às 07">Verspetino</option>
                        <option value="14:00 as 16:00">14:00 as 16:00</option>
                        <option value="16:00 as 18:00">16:00 as 18:00</option>
                    </select>

                    <select name="horario" id="horario">
                        <option value="Noite">Noite</option>
                        <option value="18:10 as 20:10">18:10 as 20:10</option>
                        <option value="20:10 as 22:10">20:10 as 22:10</option>
                    </select>

                    <select name="professor" id="professor">
                        <option value="prof. Willian Ambrósio">prof.Willian Ambrósio</option>
                        <option value="prof. Pitter Dolglas">prof. Pitter Dolglas </option>
                        <option value="prof. Reinaldo Junior">prof. Reinaldo Junior</option>
                    </select>
                    <button class="btn-buscar">BUSCAR</button>
                </div>
                <div class="presenca">
                    <table>
                        <thead>
                            <tr>
                                <th>NOMES</th>
                                <th>PRESENÇA</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Amanda Oliveira Souza</td>
                                <td>PRESENTE</td>
                            </tr>
                            <tr>
                                <td>Beatriz Lima Ferreira</td>
                                <td>PRESENTE</td>
                            </tr>
                            <tr>
                                <td>Juliana Mendes Costa</td>
                                <td>AUSENTE</td>
                            </tr>
                            <tr>
                                <td>Gabriela Rocha Souza</td>
                                <td>AUSENTE</td>
                            </tr>
                            <tr>
                                <td>Mariana Cardoso Lima</td>
                                <td>PRESENTE</td>
                            </tr>
                            <tr>
                                <td>Fernanda Souza Oliveira</td>
                                <td>PRESENTE</td>
                            </tr>
                            <tr>
                                <td>Larissa Taveira Mendes</td>
                                <td>AUSENTE</td>
                            </tr>
                            <tr>
                                <td>Patrícia Nogueira Souza</td>
                                <td>PRESENTE</td>
                            </tr>
                            <tr>
                                <td>Vanessa Rodrigues Lima</td>
                                <td>PRESENTE</td>
                            </tr>
                            <tr>
                                <td>Ana Paula Silva</td>
                                <td>PRESENTE</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
    </form>
</body>
</html>
