<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PDF._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

  
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h5>Bem vindo ao conversor de imagens para pdf, para utilizar siga estas instruções:</h5>
    <ol><li>Selecione um arquivo de imagem válido</li>
        <li>Certifique-se que sua extensão é .jpg, .png ou gif</li>
        <li>Certifique-se que o arquivo não possui mais que 5 MB</li>
        <li>Faça o Upload do arquivo e aguarde a conversão, o download será disponibilizado logo em seguida.</li>
        <li>Aproveite! Se gostou do programa e quiser me pagar um café clique <a href="About.aspx" >aqui !</a></li>
    </ol>
    <asp:FileUpload name="file" ID="file" CssClass="file-upload" runat="server" />
    <asp:Button Text="Upload" name="upload" ID="upload" CssClass="btn-upload" runat="server" OnClick="upload_Click" />
    <br /><br />
    <h2 style="float: right; margin-top: 40px;">Criado e mantido por <a href="http://jhonathansouza.com" rel="Copyright" target="_blank">Jhonathan de Souza Soares       </a></h2>
</asp:Content>

