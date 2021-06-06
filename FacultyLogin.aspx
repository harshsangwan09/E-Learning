<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="FacultyLogin.aspx.cs" Inherits="adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    






    <table class="style1">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
            </td>
            <td class="style19">
            </td>
            <td class="style20">
                <strong>Faculty Login</strong></td>
            <td class="style21">
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style22">
                <strong>User Name</strong></td>
            <td class="style16">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style17">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style15">
                Password</td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Login" 
                    Width="112px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    






</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style10
        {
            width: 58px;
        }
        .style12
        {
            width: 169px;
        }
        .style13
        {
            width: 113px;
        }
        .style14
        {
            width: 58px;
            height: 28px;
        }
        .style15
        {
            width: 113px;
            height: 28px;
            font-family: "Adobe Caslon Pro Bold";
        }
        .style16
        {
            width: 169px;
            height: 28px;
        }
        .style17
        {
            height: 28px;
        }
        .style18
        {
            width: 58px;
            height: 34px;
        }
        .style19
        {
            width: 113px;
            height: 34px;
        }
        .style20
        {
            width: 169px;
            height: 34px;
            font-family: "Adobe Caslon Pro";
            text-decoration: underline;
            font-size: x-large;
            text-align: center;
        }
        .style21
        {
            height: 34px;
        }
        .style22
        {
            width: 113px;
            height: 28px;
            font-family: "Adobe Caslon Pro";
        }
    </style>
</asp:Content>


