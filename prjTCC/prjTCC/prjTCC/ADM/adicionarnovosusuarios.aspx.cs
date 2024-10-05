using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace prjTCC.ADM
{
    public partial class adicionarnovosusuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {

            string linhaConexao = "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=bancoDadosAcademia";
            MySqlConnection conexao = new MySqlConnection(linhaConexao);
            try
            {
                conexao.Open();
                MySqlCommand cSQL = new MySqlCommand("incluirUsuario", conexao);
                cSQL.CommandType = System.Data.CommandType.StoredProcedure;
                cSQL.Parameters.Clear();

                cSQL.Parameters.AddWithValue("pCPF", txtCPF.Text);
                cSQL.Parameters.AddWithValue("pNome", txtNome.Text);
                cSQL.Parameters.AddWithValue("pSobreNome", txtSobrenome.Text);
                cSQL.Parameters.AddWithValue("pSenha", txtSenha.Text);
                cSQL.Parameters.AddWithValue("pEmail", txtEmail.Text);
                cSQL.Parameters.AddWithValue("pNascimento", txtDataNascimento.Text);
                cSQL.Parameters.AddWithValue("pRua", txtRua.Text);
                cSQL.Parameters.AddWithValue("pBairro", txtBairro.Text);
                cSQL.Parameters.AddWithValue("pCEP", txtCEP.Text);
                cSQL.Parameters.AddWithValue("pCasa", txtNumero.Text);
                cSQL.Parameters.AddWithValue("pComplemento", txtComplemento.Text);
                cSQL.Parameters.AddWithValue("pCidade", txtCidade.Text);
                cSQL.Parameters.AddWithValue("pTelefone", txtTelefone.Text);
                cSQL.Parameters.AddWithValue("pStatus", txtStatus.Text);
                cSQL.Parameters.AddWithValue("pSexo", rblSexo.SelectedValue);


                int tipoUsuarioId;
                if (int.TryParse(txtTipo.Text, out tipoUsuarioId))
                {
                    using (MySqlCommand checkTipo = new MySqlCommand("SELECT COUNT(*) FROM tipo_usuario WHERE cd_tipo_usuario = @cd_tipo_usuario", conexao))
                    {
                        checkTipo.Parameters.AddWithValue("@cd_tipo_usuario", tipoUsuarioId);
                        int count = Convert.ToInt32(checkTipo.ExecuteScalar());

                        if (count == 0)
                        {
                            lblErro.Text = "<h2 class='aviso erro'>Tipo de usuário não encontrado. Insira um tipo válido.</h2>";
                            return;
                        }
                    }
                    cSQL.Parameters.AddWithValue("pTipoUsuario", tipoUsuarioId);
                }
                else
                {
                    lblErro.Text = "<h2 class='aviso erro'>ID do tipo de usuário inválido. Por favor, insira um número.</h2>";
                    return;
                }


                int planoId;
                if (int.TryParse(txtPlano.Text, out planoId))
                {
                    using (MySqlCommand checkPlano = new MySqlCommand("SELECT COUNT(*) FROM plano WHERE cd_plano = @cd_plano", conexao))
                    {
                        checkPlano.Parameters.AddWithValue("@cd_plano", planoId);
                        int count = Convert.ToInt32(checkPlano.ExecuteScalar());

                        if (count == 0)
                        {
                            lblErro.Text = "<h2 class='aviso erro'>Plano não encontrado. Insira um plano válido.</h2>";
                            return;
                        }
                    }
                    cSQL.Parameters.AddWithValue("pPlano", planoId);
                }
                else
                {
                    lblErro.Text = "<h2 class='aviso erro'>ID do plano inválido. Por favor, insira um número.</h2>";
                    return;
                }


                int turmaId;
                if (int.TryParse(txtTurma.Text, out turmaId))
                {
                    using (MySqlCommand checkTurma = new MySqlCommand("SELECT COUNT(*) FROM turma WHERE cd_turma = @cd_turma", conexao))
                    {
                        checkTurma.Parameters.AddWithValue("@cd_turma", turmaId);
                        int count = Convert.ToInt32(checkTurma.ExecuteScalar());

                        if (count == 0)
                        {
                            lblErro.Text = "<h2 class='aviso erro'>Turma não encontrada. Insira uma turma válida.</h2>";
                            return;
                        }
                    }
                    cSQL.Parameters.AddWithValue("pTurma", turmaId);
                }
                else
                {
                    lblErro.Text = "<h2 class='aviso erro'>ID da turma inválido. Por favor, insira um número.</h2>";
                    return;
                }


                int rankingId;
                if (int.TryParse(txtRanking.Text, out rankingId))
                {
                    using (MySqlCommand checkRanking = new MySqlCommand("SELECT COUNT(*) FROM ranking WHERE cd_nivel_ranking = @cd_nivel_ranking", conexao))
                    {
                        checkRanking.Parameters.AddWithValue("@cd_nivel_ranking", rankingId);
                        int count = Convert.ToInt32(checkRanking.ExecuteScalar());

                        if (count == 0)
                        {
                            lblErro.Text = "<h2 class='aviso erro'>Ranking não encontrado. Insira um ranking válido.</h2>";
                            return;
                        }
                    }
                    cSQL.Parameters.AddWithValue("pNivelRanking", rankingId);
                }
                else
                {
                    lblErro.Text = "<h2 class='aviso erro'>ID do ranking inválido. Por favor, insira um número.</h2>";
                    return;
                }

                cSQL.ExecuteNonQuery();


                txtCPF.Text = "";
                txtNome.Text = "";
                txtSobrenome.Text = "";
                txtEmail.Text = "";
                txtSenha.Text = "";
                txtDataNascimento.Text = "";
                txtRua.Text = "";
                txtBairro.Text = "";
                txtNumero.Text = "";
                txtComplemento.Text = "";
                txtCidade.Text = "";
                txtTelefone.Text = "";
                txtStatus.Text = "";
                txtPlano.Text = "";
                txtTurma.Text = "";
                txtTipo.Text = "";
                txtRanking.Text = "";

                lblErro.Text = "<h2 class='aviso sucesso'>Produto adicionado com sucesso.</h2>";
            }
            catch
            {
                lblErro.Text = "<h2 class='aviso erro'>Ocorreu erro na inclusão. Tente novamente.</h2>";
            }
            finally
            {
                if (conexao != null && conexao.State == System.Data.ConnectionState.Open)
                    conexao.Close();
            }
        }
    }
}