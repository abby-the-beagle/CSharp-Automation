<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SimplyLoginAsp.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>What is this all about?</h2>
    </hgroup>

    <article>
        <p>
            This is just a simple website with which to practice navigation, registering, logging in/out, and verifying the SQL DB.
        </p>

        <p>        
            Or is it? :)
        </p>
    </article>

    <aside>
        <h3>Useful links</h3>
        <p>        
            Just some more useful links I thought might be relevant for you.
        </p>
        <ul>
            <li><a runat="server" href="http://www.bellevuecollege.edu/ce/ste-cert-overview/">Software Test Engineer Certification Overview</a></li>
            <li><a runat="server" href="http://www.campusce.net/BC/course/course.aspx?C=12350&pc=1820&mc=1826&sc=">Software Test Engineer Certificate Capstone</a></li>
            <li><a runat="server" href="http://www.bellevuecollege.edu/ce/software-test-engineer-capstone-project-requirements/">Capstone Course Project Requirements (Are you ready?)</a></li>
        </ul>
    </aside>
</asp:Content>