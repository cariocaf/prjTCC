<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjTCC.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/estilo.css" />
    <title>Academia Brutus</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="navbar">

                <div class="logo">
                    <a href="index.html">
                        <img src="images/logo.png" alt="Logo"></a>
                </div>

                <nav>
                    <ul>
                        <li><a href="metodologia.html">Metodologia</a></li>
                        <li><a href="doacoes.html">Doações</a></li>
                        <li><a href="#Professores">Professores</a></li>
                        <li><a href="premios.html">Prêmios</a></li>


                    </ul>
                </nav>

                <div class="icon">
                    <a href="login.html">
                        <img src="images/icon.png" alt="Icone"></a>


                </div>
            </div>

        </header>
        <main>

            <section class="bem-vindo ">
                <div class="backgound">
                </div>

                <img src="images/header.jpg" alt="Alunos na academia">
                <h1>BEM-VINDO À<br>
                    ACADEMIA BRUTUS</h1>
            </section>

            <section class="metodologia">
                <div>
                    <h1>QUEM SOMOS NÓS?</h1>
                    <p>
                        Conheça o Projeto Social Brutus Pela Paz, metodologia criada pela Academia Brutus responsável 
                    pelo sucesso dos alunos e profissionais da equipe.
                    E aprenda um pouco mais sobre nossa história e como ela surgiu. 
                    </p>
                    <a href="metodologia.html">
                        <button>
                            CONHEÇA NOSSA METODOLOGIA
                        </button>
                    </a>
                </div>
                <img src="images/metodologia.jpg" alt="Alunos">
            </section>

            <section class="modalidades">
                <div class="modalidade-item">
                    <img src="images/kids.jpeg" alt="Jiu-Jitsu Masculino">
                    <p>JIU-JITSU KIDS</p>
                    <a href="kids.html">
                        <button>Saiba Mais</button></a>
                </div>
                <div class="modalidade-item">
                    <img src="images/feminino.jpeg" alt="Jiu-Jitsu Masculino">
                    <p>JIU-JITSU FEMININO</p>
                    <a href="feminino.html">
                        <button>Saiba Mais</button></a>
                </div>
                <div class="modalidade-item">
                    <img src="images/masculino.jpg" alt="Jiu-Jitsu Masculino">
                    <p>JIU-JITSU MASCULINO</p>
                    <a href="masculino.html">
                        <button>Saiba Mais</button></a>
                </div>
            </section>

            <section class="professores">
                <a name="Professores"></a>
                <h2>PROFESSORES</h2>
                <div class="professor-row">
                    <div class="professor">
                        <img src="images/pitter.jpg" alt="Jiu-Jitsu Masculino">
                        <p>PITTER</p>
                    </div>
                    <div class="professor">
                        <img src="images/reinaldo.jpg" alt="Jiu-Jitsu Masculino">
                        <p>REINALDO</p>
                    </div>
                    <div class="professor">
                        <img src="images/willan.jpg" alt="Jiu-Jitsu Masculino">
                        <p>WILLIAN</p>
                    </div>
                </div>
            </section>

            <section class="beneficios">
                <br>
                <h1>MAIORES BENEFÍCIOS DO JIU-JITSU</h1>
                <br>
                <div class="beneficios-row">
                    <div class="beneficios-item">
                        <img src="images/defesa.png" alt="defesa">
                        <p>Defesa Pessoal</p>
                    </div>
                    <div class="beneficios-item">
                        <img src="images/resistência.png" alt="defesa">
                        <p>Resistência Física</p>
                    </div>
                    <div class="beneficios-item">
                        <img src="images/auto_controle.png" alt="defesa">
                        <p>Autocontrole</p>
                    </div>
                    <div class="beneficios-item">
                        <img src="images/peso.png" alt="defesa">
                        <p>Perda de Peso</p>
                    </div>
                    <div class="beneficios-item">
                        <img src="images/disciplina.png" alt="defesa">
                        <p>Disciplina</p>
                    </div>
                </div>
            </section>
            <br>
            <section class="depoimentos">
                <div>
                    <h1>DEPOIMENTOS DOS NOSSOS ALUNOS</h1>
                    <p>
                        “O projeto Brutus foi fundado ao lado da minha casa. Comecei por curiosidade pelo esporte, defesa pessoal e hobby. 
                    E acabei me apaixonando não só pelo esporte em si, mas pela energia, ambiente e por todos os ensinamentos que carrego até hoje. 
                    7 anos depois, sou grata a tudo que aprendi lá.”
                    </p>
                    <p class="nome">Kayane Silva</p>
                </div>

            </section>

        </main>
        <br>

        <footer>
            <div class="footer">
                <img src="images/logo.png" alt="Footer Logo">
                <div>
                    <h4>Brutus Itanhaém</h4>
                    <div class="dados">
                        <p>368 R. Ana Maria Martinez Rivera</p>
                        <p>+55 13 99760-6095</p>
                        <p>brutuspelapaz@hotmail.com</p>
                    </div>
                </div>
                <div class="sociais">
                    <div>
                        <a href="https://www.facebook.com/profile.php?id=100015990702417&locale=pt_BR">
                            <img src="images/icons8-facebook-48.png" alt="Facebook"></a>
                    </div>
                    <div>
                        <a href="https://www.instagram.com/brutus.jiujitsu.itanhaem">
                            <img src="images/icons8-instagram-48.png" alt="Instagram"></a>
                    </div>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
