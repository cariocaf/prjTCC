<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doacoes.aspx.cs" Inherits="prjTCC.doacoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/doacoes.css">
    <title>Doações</title>
</head>
<body>
    <form id="form1" runat="server">
        header>

        <div class="navbar">

            <div class="logo">
                <a href="index.html">
                    <img src="images/logo.png" alt="Logo"></a>
            </div>

            <nav>
                <ul>
                    <li><a href="metodologia.html">Metodologia</a></li>
                    <li><a href="doacoes.html">Doações</a></li>
                    <li><a href="index.html#Professores">Professores</a></li>
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
        <section class="Pix">
            <h1>VENHA FAZER A SUA PARTE E DOE VOCÊ TAMBÉM!</h1>
            <div>
                <img src="images/pix.jpg" alt="QR Code para doação">
                <div class="textos">
                    <p>
                        A doação via Pix é uma forma prática e direta de contribuir para os fins atléticos dos atletas que você deseja ajudar. Para escolher o atleta beneficiado, siga os passos abaixo:
                            Escaneie o Código Pix: Utilize o aplicativo do seu banco ou carteira digital para escanear o código Pix fornecido.
                            Digite o valor desejado: Insira o valor que deseja doar.
                            Escolha o Beneficiário: Na descrição do pagamento, escreva o nome do atleta que você deseja apoiar. Essa informação é crucial para garantir que a sua doação seja direcionada corretamente.
                            Ao seguir esses passos, você estará contribuindo diretamente para os treinos, competições e desenvolvimento do atleta escolhido, ajudando-o a alcançar seus objetivos e sonhos no esporte. Sua generosidade faz a diferença!
                    </p>
                </div>
            </div>
        </section>

        <section class="alunos">

            <div>
                <img src="images/andrey.jpg" alt="Andrey Pinheiro de Sousa">
                <div class="premios">
                    <h2>Andrey Pinheiro de Sousa</h2>
                    <p><strong>Faixa roxa</strong></p>
                    <p><strong>19 anos</strong></p>
                    <p>"A luz que me guia é mais forte que os olhos que me cercam"</p>
                    <ul class="premios">
                        <li>🥇2x campeão mundial CBJJE</li>
                        <li>🥇3x campeão brasileiro CBJJE</li>
                        <li>🥇2x campeão sul-americano CBJJE</li>
                        <li>🥇4x campeão paulista CBJJE</li>
                    </ul>
                </div>
            </div>

            <div>
                <img src="images/livya.jpeg" alt="Livya Camargo">
                <div class="premios">
                    <h2>Livya Camargo</h2>
                    <p><strong>Faixa branca</strong></p>
                    <p><strong>19 anos</strong></p>
                    <p>"É preciso força para sonhar e perceber que a estrada vai além do que se vê"</p>
                    <ul class="premios">
                        <li>🥇2x campeão mundial CBJJE</li>
                        <li>🥇3x campeão brasileiro CBJJE</li>
                        <li>🥈2x campeão sul-americano CBJJE</li>
                        <li>🥇4x campeão paulista CBJJE</li>
                    </ul>
                </div>
            </div>

            <div>
                <img src="images/alice.jpg" alt="Alice Caroline">
                <div class="premios">
                    <h2>Alice Caroline</h2>
                    <p><strong>Faixa cinza</strong></p>
                    <p><strong>8 anos</strong></p>
                    <p>"Agora é hora de surpreender aqueles que duvidaram de você"</p>
                    <ul class="premios">
                        <li>🥇2x campeão mundial CBJJE</li>
                        <li>🥇3x campeão brasileiro CBJJE</li>
                        <li>🥈2x vice-campeão sul-americano CBJJE</li>
                        <li>🥇4x campeão paulista CBJJE</li>
                    </ul>
                </div>
            </div>
        </section>
    </main>

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
