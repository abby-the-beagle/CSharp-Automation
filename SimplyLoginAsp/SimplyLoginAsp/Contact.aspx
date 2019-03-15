<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SimplyLoginAsp.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Keep in touch with me!</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Professional:</span>
            <span><a href="mailto:hansel@hanselong.com">hansel@hanselong.com</a></span>
        </p>
        <p>
            <span class="label">Personal:</span>
            <span><a href="mailto:hansel@onguniverse.com">hansel@onguniverse.com</a></span>
        </p>
        <p>
            <span class="label">XBOX:</span>
            <span><a href="mailto:hansel@xbox.com">hansel@xbox.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>LinkedIn:</h3>
        </header>
        <p>
            <span><a href="https://www.linkedin.com/in/hanselong">https://www.linkedin.com/in/hanselong</a></span>
        </p>
    </section>
</asp:Content>