using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PDF
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendMessage_Click(object sender, EventArgs e)
        {
            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("jhonathan.crescabrasil", "jhonathan0705");
            MailMessage mail = new MailMessage();
            mail.Sender = new System.Net.Mail.MailAddress("jhonathan.crescabrasil@gmail.com", "ENVIADOR");
            mail.From = new MailAddress("contato@midiaon.com.br", "Contato Jhonathan Souza");
            mail.To.Add(new MailAddress("jhonathanmarolo@hotmail.com", "Contato Calculadora Cientifica"));
            mail.Subject = "Contato Site - PDF ";
            mail.Body = " Mensagem do site:<br/> Nome:  " + senderName.Text + "<br/> Email : " + senderEmail.Text + " <br/> Mensagem : " + message.Text;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            try
            {
                client.Send(mail);
                lblRetornoEmail.Text = "Sua mensagem foi enviada com sucesso! Obrigado!!";
                senderEmail.Text = senderName.Text = message.Text = string.Empty;
            }
            catch (System.Exception erro)
            {
                lblRetornoEmail.Text = "Sua mensagem não foi enviada. Tente novamente.";
            }
            finally
            {
                mail = null;
            }
        }
    }
}