<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SimplyLoginAsp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Where the magic begins</h2>
            </hgroup>
            <p>
                This is a simple site with which to practice web UI automation using Selenium.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            Use NuGet to install NUnit, NUnit Test Adapter for VS2012 and VS2013, and <a href="http://docs.seleniumhq.org/docs/03_webdriver.jsp">Selenium WebDriver</a>.
        </li>
        <li class="two">
            <h5>Set up the test class</h5>
            In your test class, add the usings for NUnit.Framework and OpenQA.Selenium.Firefox (at minimum). Also add the (now familiar) NUnit fixtures (TestFixture, Test) at the appropriate places.
        </li>
        <li class="three">
            <h5>Automate your test case</h5>
            Using your test plan, developer tools, and Selenium, automate your test case by finding web UI elements (e.g. by Id, Name, XPath, etc.) and acting on it, being sure to validate your test.
        </li>
    </ol>
</asp:Content>
