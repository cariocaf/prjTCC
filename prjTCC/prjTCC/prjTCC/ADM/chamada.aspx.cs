using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace prjTCC.ADM
{
    public partial class chamada : Page
    {
        private string connectionString = "SERVER=localhost;UID=root;PASSWORD=root;DATABASE=bancoDadosAcademia;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarTurmas();
            }
        }

        private void CarregarTurmas()
        {
            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT cd_turma, nm_turma FROM turma", conn);
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string turmaId = reader["cd_turma"].ToString();
                    string turmaNome = reader["nm_turma"].ToString();
                    turmaSelect.Items.Add(new ListItem(turmaNome, turmaId));
                }
            }
        }

        protected void btnProcurar_Click(object sender, EventArgs e)
        {
            string turmaId = turmaSelect.Value;
            string dataSelecionada = data.Value;

            if (!string.IsNullOrEmpty(turmaId) && !string.IsNullOrEmpty(dataSelecionada))
            {
                CarregarAlunos(turmaId, dataSelecionada);
            }
        }

        private void CarregarAlunos(string turmaId, string dataSelecionada)
        {
            attendanceTable.InnerHtml = "";

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand(
                    "SELECT u.cd_cpf_usuario, u.nm_usuario, COALESCE(f.ic_veio_sim_nao, FALSE) AS ic_veio_sim_nao " +
                    "FROM usuario u " +
                    "LEFT JOIN frequencia f ON u.cd_cpf_usuario = f.cd_cpf_usuario AND f.dt_frequencia = @dataSelecionada " +
                    "WHERE u.cd_turma = @turmaId", conn);

                cmd.Parameters.AddWithValue("@turmaId", turmaId);
                cmd.Parameters.AddWithValue("@dataSelecionada", DateTime.Parse(dataSelecionada).ToString("yyyy-MM-dd"));
                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    TableRow row = new TableRow();

                    TableCell cellNome = new TableCell { Text = reader["nm_usuario"].ToString() };
                    TableCell cellData = new TableCell { Text = dataSelecionada };
                    TableCell cellPresenca = new TableCell();

                    CheckBox checkBox = new CheckBox();
                    checkBox.Checked = reader["ic_veio_sim_nao"] != DBNull.Value && Convert.ToBoolean(reader["ic_veio_sim_nao"]);
                    cellPresenca.Controls.Add(checkBox);

                    row.Cells.Add(cellNome);
                    row.Cells.Add(cellData);
                    row.Cells.Add(cellPresenca);

                    attendanceTable.Controls.Add(row);
                }
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            string turmaId = turmaSelect.Value;
            string dataSelecionada = data.Value;

            if (!string.IsNullOrEmpty(turmaId) && !string.IsNullOrEmpty(dataSelecionada))
            {
                DateTime dataAula = DateTime.Parse(dataSelecionada);
                DateTime horaAula = DateTime.Now;

                foreach (Control control in attendanceTable.Controls)
                {
                    if (control is TableRow tableRow)
                    {
                       
                        string alunoCpf = ((Literal)tableRow.Cells[0].Controls[0]).Text; 

                        CheckBox checkBox = (CheckBox)tableRow.Cells[2].Controls[0];

                      
                        int veio = checkBox != null && checkBox.Checked ? 1 : 0;

                        using (MySqlConnection conn = new MySqlConnection(connectionString))
                        {
                            conn.Open();
                            MySqlCommand cmd = new MySqlCommand("AddAulaComFrequenciaSimple", conn);
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.AddWithValue("p_cd_turma", int.Parse(turmaId));
                            cmd.Parameters.AddWithValue("p_dt_aula", dataAula);
                            cmd.Parameters.AddWithValue("p_hr_aula", horaAula);
                            cmd.Parameters.AddWithValue("p_cd_cpf_usuario", alunoCpf);
                            cmd.Parameters.AddWithValue("p_ic_veio_sim_nao", veio);

                            cmd.ExecuteNonQuery();
                        }
                    }
                }
            }
        }
    }
}