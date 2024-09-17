using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC
{
    public partial class redefinirSenha : System.Web.UI.Page
    {
        int codigo = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmailR.Focus();
            Random random = new Random();
            codigo = random.Next(1, 80);
        }

        protected void btnEnviarEmail_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtEmailR.Text))
            {
                litMSG.Text = "Informe o email";
                txtEmailR.Focus();
                return;
            }

            Usuarios usuarios = new Usuarios();

            if (usuarios.BuscarDados(txtEmailR.Text) == "")
            {
                litMSG.Text = "Esse Usuário Não Existe";
                txtEmailR.Text = "";
                txtEmailR.Focus();
                return;
            }

            litMSG.Text = "";
            btnEnviarEmail.Enabled = false;
            txtEmailR.Enabled = false;

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.office365.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("rubiaeisrael@outlook.com", "senha123");

            MailMessage email = new MailMessage();
            email.To.Add(txtEmailR.Text);
            email.From = new MailAddress("rubiaeisrael@outlook.com", "Recuperação de Senha", System.Text.Encoding.UTF8);
            email.Subject = "Recuperar Senha";
            email.SubjectEncoding = System.Text.Encoding.UTF8;
            email.Body = $@"<p>Ola, esta tentando recuperar sua senha pra efetuar Login em Academia Brutus? Se sim, este é seu CODIGO ACESSSO:{codigo} Clique no link a seguir pra ir pra pagina de recuperação de sua senha
                            <a href='http://localhost:50078/NovaSenha.aspx?e={txtEmailR.Text}&c={codigo}'>
                                Link
                            </a>
                           </p>";
            email.BodyEncoding = System.Text.Encoding.UTF8;
            email.IsBodyHtml = true;

            try
            {
                client.Send(email);
                usuarios.GuardarDadosEnviarEmail(txtEmailR.Text, codigo);
                return;
            }

            catch
            {
               
            }
        }
    }
    }
