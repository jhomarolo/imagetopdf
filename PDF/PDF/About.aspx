<%@ Page Title="Sobre o projeto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PDF.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1> Sobre a aplicação </h1>
      
    </hgroup>

    <article>
        <p>        
           A aplicação foi desenvolvida em asp.net C# 4.5 utilizando WebForms
        </p>

        <p>        
            Todo o conteúdo é de livre uso e pode ser adquirido aqui : <a href="https://github.com/jhomarolo/imagetopdf">Github</a>
        </p>

        <p>        
           Para mais informações sobre o desenvolvedor : <a href="http://jhonathansouza.com" target="_blank" rel="author" title="Ir ao site"> jhonathansouza.com</a>
        </p>
    </article>

    <aside>
        <h3 style="margin:0;">Que tal me pagar um café ?</h3>
        <p>        
          <asp:HtmlIframe src="paypal.html" id="iframe" runat="server" style="background:transparent; border:none; float:right;width:50%;margin-right:30%;"></asp:HtmlIframe>
        </p>
    </aside>
</asp:Content>