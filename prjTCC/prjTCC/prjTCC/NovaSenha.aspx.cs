using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC
{
    public partial class NovaSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["e"] == null)
            {
                Response.Redirect("login.aspx");
                Response.End();
                return;
            }

            if (String.IsNullOrEmpty(Request["e"]))
            {
                Response.Redirect("login.aspx");
                Response.End();
                return;
            }

            if (Request["c"] == null)
            {
                Response.Redirect("login.aspx");
                Response.End();
                return;
            }

            if (String.IsNullOrEmpty(Request["c"]))
            {
                Response.Redirect("login.aspx");
                Response.End();
                return;
            }

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            string email = Request["e"];

            if (String.IsNullOrEmpty(txtSenha.Text))
            {
                litMSG.Text = "A Senha Nova Não Pode Ser Vazia";
                txtSenha.Focus();
                return;
            }

            if (String.IsNullOrEmpty(txtConfirmarSenha.Text))
            {
                litMSG.Text = "A Senha Para Confirmar Não Pode Ser Vazia";
                txtConfirmarSenha.Focus();
                return;
            }


            if (txtSenha.Text != txtConfirmarSenha.Text)
            {
                litMSG.Text = "As Senhas Não Podem Ser Diferentes";
                txtSenha.Text = "";
                txtConfirmarSenha.Text = "";
                txtSenha.Focus();
                return;
            }

            Usuarios usuarios = new Usuarios();
            usuarios.AlterarSenha(email, txtConfirmarSenha.Text);
            usuarios.ExcluirDadosRecuperacao(email);
            Response.Redirect("login.aspx");
            return;
        }
    }
}
