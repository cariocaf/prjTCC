using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

public class Usuarios: Banco
{
    public Usuario Acessar(string login, string senha)
    {
        try
        {
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pLogin", login));
            parametros.Add(new MySqlParameter("pSenha", senha));
            MySqlDataReader dados = Consultar("acessar", parametros);
            Usuario usuario = null;

            if (dados.Read())
            {
                usuario = new Usuario(login, dados.GetString(0));
            }

            if (dados != null)
            {
                if (!dados.IsClosed)
                {
                    dados.Close();
                }
            }

            Desconectar();
            return usuario;
        }
        catch
        {
            throw new Exception("Erro ao tentar acessar. Tente novamente.");
        }
    }

    public string BuscarDados(string login)
    {
        try 
        { 
        
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pLogin", login));
            MySqlDataReader dados = Consultar("buscarUsuario", parametros);
            string nome = "";

            if (dados.Read())
            {
                nome = dados.GetString(0);
            }

            if (dados != null)
            {
                if (!dados.IsClosed)
                {
                    dados.Close();
                }
            }

            Desconectar();
            return nome;
        }
        catch
        {
            throw new Exception("Erro ao bsucar dados do Servidor. Tente novamente.");
        }
    }

    public void AlterarSenha(string login, string senha)
    {
        try 
        { 
            List<MySqlParameter> parametros = new List<MySqlParameter>();
            parametros.Add(new MySqlParameter("pLogin", login));
            parametros.Add(new MySqlParameter("pSenha", senha));
            Executar("alterarSenha", parametros);
        }
        catch
        {
            throw new Exception("Erro ao alterar a senha. Tente novamente.");
        }
    }

    public List<Usuario> ListarUsuarios()
    {
        try
        {

            List<Usuario> Lista = new List<Usuario>();
            MySqlDataReader dados = Consultar("listarUsuarios");

            while (dados.Read())
            {
                Usuario usuario = new Usuario(dados.GetString(0),dados.GetString(1), dados.GetString(2));
                Lista.Add(usuario);
            }


            return Lista;

        }

        catch
        {
            
            throw new Exception("Erro ao Listar os Usuários.");
        }
    }

    public void GuardarDadosEnviarEmail(string login, int codigo)
    {
        try
        {
            List<MySqlParameter> Lista = new List<MySqlParameter>();
            Lista.Add(new MySqlParameter("pCodigo", codigo));
            Lista.Add(new MySqlParameter("pLogin", login));
            Executar("guardarEmailRecuperarSenha", Lista);
        }

        catch
        {
            throw new Exception("Erro ao Enviar Email.");
        }
    }

    public void ExcluirDadosRecuperacao(string login)
    {
        try
        {
            List<MySqlParameter> Lista = new List<MySqlParameter>();
            Lista.Add(new MySqlParameter("pLogin", login));
            Executar("excluirPedidoRecuperacao", Lista);
        }
        
        catch
        {
            throw new Exception("Erro ao Apagar os Dados de Recuperação");
        }
    }

   
}
