public class Usuario
{
	private string _login;
	private string _nome;
	private string _senha;

	public string Login
	{
		get { return _login; }
		set { _login = value; }
	}


	public string Nome
	{
		get { return _nome; }
		set { _nome = value; }
	}


    public string Senha
	{
		get { return _senha; }
		set { _senha = value; }
	}

	public Usuario(string login, string nome)
    {
		Login = login;
		Nome = nome;
    }

	public Usuario(string login, string nome, string senha)
	{
		Login = login;
		Nome = nome;
		Senha = senha;
	}
	
}
