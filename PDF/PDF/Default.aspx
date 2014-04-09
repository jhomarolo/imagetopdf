<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PDF._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">

  
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <asp:FileUpload name="file" ID="file" CssClass="file-upload" runat="server" />
    <asp:Button Text="Upload" name="upload" ID="upload" CssClass="btn-upload" runat="server" OnClick="upload_Click" />
    <br /><br />
    <h2 style="float: right; margin-top: 40px;">Criado e mantido por <a href="http://jhonathansouza.com" rel="Copyright" target="_blank">Jhonathan de Souza Soares       </a></h2>
</asp:Content>

