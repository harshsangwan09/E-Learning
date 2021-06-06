<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="java.aspx.cs" Inherits="java" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript Tutorial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    JavaScript is <i>THE</i> scripting language of the Web.</p>
                <p>
                    JavaScript is used in billions of Web pages to add functionality, validate 
                    forms, communicate with the server, and much more.</p>
                <p>
                    JavaScript is easy to learn. You will enjoy it.<br />
                </p>
                <p>
                    <b>Example</b></p>
                <p>
                    <b>My First Web Page</b></p>
                <div class="example_result notranslate">
                    <p id="demo">
                        This is a paragraph.<br />
                    </p>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

