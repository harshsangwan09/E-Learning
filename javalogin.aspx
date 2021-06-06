<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="javalogin.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style17
        {
            width: 100%;
        }
        .style28
    {
        width: 238px;
        height: 32px;
            text-align: right;
        }
    .style29
    {
        height: 32px;
    }
        .style21
        {
            width: 238px;
        }
        .style26
    {
        width: 238px;
        height: 33px;
            text-align: right;
        }
    .style27
    {
        height: 33px;
    }
    .style24
    {
        width: 238px;
        height: 20px;
    }
    .style25
    {
        height: 20px;
    }
        .style22
        {
            width: 74px;
        }
        .style23
        {
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style17">
        <tr>
            <td class="style28">
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#AEAEFF" Text="USER LOGIN"></asp:Label>
                <br />
            </td>
            <td class="style29">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style28">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                    Text="User Name"></asp:Label>
            </td>
            <td class="style29">
                <br />
                <br />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#0066FF" 
                    Text="Password"></asp:Label>
            </td>
            <td class="style27">
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" 
                    Width="158px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style24">
            </td>
            <td class="style25">
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td>
                <table align="center" cellpadding="0" cellspacing="0" class="style17">
                    <tr>
                        <td align="right" class="style22">
                            <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
                                Text="Log In" />
                        </td>
                        <td align="right" class="style23">
                            <asp:Button ID="Button2" runat="server" Height="22px" onclick="Button2_Click" 
                                Text="Clear" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td>
                <br />
                <asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="True" 
                    Font-Underline="False" PostBackUrl="~/registration.aspx">Create New User</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

