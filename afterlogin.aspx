<%@ Page Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="afterlogin.aspx.cs" Inherits="afterlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    At e-leaning you will learn how to make a website. We offer free tutorials in 
    all web development technologies. Select a tutorial from the menu to the left.<br />
    <br />
    <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            SelectCommand="SELECT * FROM [videos]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</p>
</asp:Content>

