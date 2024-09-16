using System;
using MySql.Data.MySqlClient;

namespace prjTCC
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string senha = txtSenha.Text.Trim();

            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(senha))
            {
                Response.Write("<script>alert('Por favor, preencha todos os campos.');</script>");
                return;
            }

            Banco banco = new Banco();
            int tipoUsuario = banco.ValidarUsuario(email, senha);
            string redirecionamentoUrl = string.Empty;
            
            if (tipoUsuario <= 0)
            {
                litMensagem.Text = "Usuario Não identificado, login ou senha invalidos!";
                return;
            }
            else
            {
                if(tipoUsuario >= 4)
                {
                    litMensagem.Text = "Usuario Não identificado, login ou senha invalidos!";
                    return;
                }
            }
            switch (tipoUsuario)
            {
                case 1:
                    redirecionamentoUrl = "adm/cadastrarADM.html";
                    break;
                case 2:
                    redirecionamentoUrl = "Professor/calendarioProfessor.aspx";
                    break;
                case 3:
                    redirecionamentoUrl = "Aluno/calendarioALUNO.html";
                    break;
                default:
                    Response.Write("<script>alert('Tipo de usuário não reconhecido.');</script>");
                    return;
            }


            Response.Redirect(redirecionamentoUrl);
            Console.WriteLine("Redirecionamento para: " + redirecionamentoUrl);
        }
    }
}