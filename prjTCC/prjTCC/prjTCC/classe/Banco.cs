using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;

public static class DadosConexao
{
    private static string _linhaConexao = "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=bancoDadosAcademia";

    public static string GetConexao()
    {
        return _linhaConexao;
    }
}

public class Banco
{
    private MySqlConnection conexao = null;
    private string _linhaConexao;

    public string LinhaConexao
    {
        get
        {
            if (_linhaConexao == null)
            {
                throw new Exception("Linha de conexão não foi definida");
            }
            return _linhaConexao;
        }
        set
        {
            if (String.IsNullOrEmpty(value))
            {
                throw new Exception("Linha de conexão inválida");
            }
            _linhaConexao = value;
        }
    }

    public Banco()
    {
        LinhaConexao = DadosConexao.GetConexao();
    }

    private void Conectar()
    {
        try
        {
            conexao = new MySqlConnection(LinhaConexao);
            conexao.Open();
        }
        catch (Exception ex)
        {
            throw new Exception("Não foi possível conectar ao Servidor. " + ex.Message);
        }
    }

    public void Desconectar()
    {
        try
        {
            if (conexao != null && conexao.State == System.Data.ConnectionState.Open)
            {
                conexao.Close();
            }
        }
        catch (Exception ex)
        {
            throw new Exception("Não foi possível fechar a conexão com o Servidor. " + ex.Message);
        }
    }

    public void Executar(string nomeSP)
    {
        Conectar();
        try
        {
            using (MySqlCommand cSQL = new MySqlCommand(nomeSP, conexao))
            {
                cSQL.CommandType = System.Data.CommandType.StoredProcedure;
                cSQL.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            throw new Exception("Não foi possível executar o comando. Verifique e tente novamente. " + ex.Message);
        }
        finally
        {
            Desconectar();
        }
    }

    public void Executar(string nomeSP, List<MySqlParameter> parametros)
    {
        Conectar();
        try
        {
            using (MySqlCommand cSQL = new MySqlCommand(nomeSP, conexao))
            {
                cSQL.CommandType = System.Data.CommandType.StoredProcedure;
                cSQL.Parameters.Clear();
                if (parametros != null)
                {
                    foreach (MySqlParameter item in parametros)
                    {
                        cSQL.Parameters.Add(item);
                    }
                }
                cSQL.ExecuteNonQuery();
            }
        }
        catch (Exception ex)
        {
            throw new Exception("Não foi possível executar o comando. Verifique e tente novamente. " + ex.Message);
        }
        finally
        {
            Desconectar();
        }
    }

    public MySqlDataReader Consultar(string nomeSP)
    {
        Conectar();
        try
        {
            MySqlCommand cSQL = new MySqlCommand(nomeSP, conexao);
            cSQL.CommandType = System.Data.CommandType.StoredProcedure;
            return cSQL.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }
        catch (Exception ex)
        {
            throw new Exception("Não foi possível realizar a consulta. " + ex.Message);
        }
    }

    public MySqlDataReader Consultar(string nomeSP, List<MySqlParameter> parametros)
    {
        Conectar();
        try
        {
            MySqlCommand cSQL = new MySqlCommand(nomeSP, conexao);
            cSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cSQL.Parameters.Clear();
            if (parametros != null)
            {
                foreach (MySqlParameter item in parametros)
                {
                    cSQL.Parameters.Add(item);
                }
            }
            return cSQL.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
        }
        catch (Exception ex)
        {
            throw new Exception("Não foi possível realizar a consulta. " + ex.Message);
        }
    }

    public int ValidarUsuario(string email, string senha)
    {
        int tipoUsuario = 0;
        string query = @"
            SELECT 
                t.cd_tipo_usuario 
            FROM 
                usuario u
            JOIN 
                tipo_usuario t ON u.cd_tipo_usuario = t.cd_tipo_usuario
            WHERE 
                u.nm_email_usuario = @nm_email_usuario 
                AND u.nm_senha_usuario = @nm_senha_usuario";

        using (MySqlConnection connection = new MySqlConnection(DadosConexao.GetConexao()))
        using (MySqlCommand command = new MySqlCommand(query, connection))
        {
            command.Parameters.AddWithValue("@nm_email_usuario", email);
            command.Parameters.AddWithValue("@nm_senha_usuario", senha);

            try
            {                           
                connection.Open();
                var result = command.ExecuteScalar();
                if (result != null)
                {
                    tipoUsuario = Convert.ToInt32(result);
                }


            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao validar usuário: " + ex.Message);
            }
        }

        return tipoUsuario;
    }
}
