<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PDF.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
      <hgroup class="title">
        <h1>Contato - </h1>
        <h2>possui algum dúvida, sugestão ou crítica?</h2>
    </hgroup>


    <section class="contact">
        <header>
            <h3>Envie um e-mail:</h3>
        </header>
        <p>
            <span class="label">Suporte:</span>
            <span><a href="mailto:jhonathanmarolo@hotmail.com">jhonathanmarolo#hotmail.com</a></span>
        </p>
        <header>
            <h3>Ou entre em contato :</h3>
        </header>
    </section>

    <section class="contact">
         <asp:TextBox ID="senderName" runat="server" MaxLength="50" placeholder="Nome"></asp:TextBox>
                        <asp:TextBox runat="server" ID="senderEmail" MaxLength="50" placeholder="E-Mail"></asp:TextBox>
                        <asp:TextBox runat="server" ID="message" TextMode="MultiLine" required placeholder="Mensagem"></asp:TextBox>
                        <asp:Button ID="sendMessage" type="submit" value="Enviar" Text="Enviar" class="button block "
                            name="sendMessage" runat="server" OnClick="sendMessage_Click" />
        </section>
    <asp:Label Text="" ID="lblRetornoEmail" runat="server" />
</asp:Content>