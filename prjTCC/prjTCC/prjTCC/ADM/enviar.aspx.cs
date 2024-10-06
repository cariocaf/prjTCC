using System;
using System.Net.Mail;
using System.Net;
using System.Web.UI;

namespace prjTCC.ADM
{
    public partial class enviar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtEmail.Text))
            {
                litMsg.Text = "Informe o email.";
                return;
            }

            if (!fileUpload.HasFile)
            {
                litMsg.Text = "Selecione um arquivo para enviar.";
                return;
            }

            string filePath = string.Empty; 

            try
            {
                // Criar diretório de Uploads se não existir
                string uploadDir = Server.MapPath("~/Uploads/");
                if (!System.IO.Directory.Exists(uploadDir))
                {
                    System.IO.Directory.CreateDirectory(uploadDir);
                }

              
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.office365.com";
                client.Port = 587;
                client.EnableSsl = true;

             
                client.Credentials = new NetworkCredential("eduardogroporuiz2007@hotmail.com", "qosbwnkgxntuzxfq"); 

                
                MailMessage email = new MailMessage();
                email.To.Add(txtEmail.Text);
                email.From = new MailAddress("eduardogroporuiz2007@hotmail.com", "Remetente");
                email.Subject = "Assunto do Email";
                email.Body = $"Olá {txtNome.Text}, aqui está o arquivo que você solicitou.";
                email.IsBodyHtml = true;

                // Anexar o arquivo
                string fileName = System.IO.Path.GetFileName(fileUpload.FileName);
                filePath = System.IO.Path.Combine(uploadDir, fileName);
                fileUpload.SaveAs(filePath); 
                Attachment attachment = new Attachment(filePath);
                email.Attachments.Add(attachment);

                
                client.Send(email);

                
                litMsg.Text = "Email enviado com sucesso!";
            }
            catch (Exception ex)
            {
                litMsg.Text = "Erro ao enviar o email: " + ex.Message;
            }
            finally
            {
                
                if (!string.IsNullOrEmpty(filePath) && System.IO.File.Exists(filePath))
                {
                    System.IO.File.Delete(filePath);
                }
            }
        }
    }
}