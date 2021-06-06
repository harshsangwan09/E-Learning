<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jstest.aspx.cs" Inherits="jstest" Title="Untitled Page" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 656px;
    }
    .style16
    {
        width: 662px;
    }
    .style23
    {
        width: 217px;
    }
    .style24
    {
        width: 149px;
        height: 19px;
    }
    .style25
    {
        height: 19px;
    }
        .style26
        {
            width: 149px;
            height: 18px;
        }
        .style27
        {
            height: 18px;
        }
        .style2
        {
            width: 449px;
        }
        .style28
        {
            width: 149px;
        }
    .style29
    {
        width: 539px;
    }
    .style30
    {
        height: 30px;
    }
    .style31
    {
        height: 33px;
    }
    .style32
    {
        height: 31px;
    }
    .style33
    {
        height: 24px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" style="padding-top:10px; padding-left:10px; font-family:arial;">
        <tr>
            <td class="style16">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JAVA Test"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <table align="center" cellpadding="0" cellspacing="0" class="style2">
                    <tr>
                        <td class="style29">
                            <asp:Panel ID="Panel1" runat="server" Height="215px" Width="530px" 
                                BackColor="White">
                                <table align="center" cellpadding="0" cellspacing="0" 
                                    style="padding-left:10px; padding-top:10px; width: 512px;">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lblQuestion" runat="server" style="font-weight: 700" 
                                                Visible="False"></asp:Label>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style11">
                                            <table align="center" cellpadding="0" cellspacing="0" class="style2">
                                                <tr>
                                                    <td class="style30">
                                                        <asp:RadioButton ID="chkAnswer1" runat="server" GroupName="option" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31">
                                                        <asp:RadioButton ID="chkAnswer2" runat="server" GroupName="option" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style32">
                                                        <asp:RadioButton ID="chkAnswer3" runat="server" GroupName="option" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style33">
                                                        <asp:Label ID="rightans" runat="server" Visible="False"></asp:Label>
                                                        <br />
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                        <asp:Button ID="Button1" runat="server" Height="25px" onclick="Button1_Click1" 
                                                            Text="NEXT" Width="70px" Visible="False" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="Button3" runat="server" Height="24px" onclick="Button3_Click" 
                                                            Text="Save Test Result" Visible="False" Width="124px" />
                                                        &nbsp;&nbsp;
                                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                                            Text="Start Test" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td align=right>
                            <asp:Panel ID="Panel2" runat="server" Height="215px" BackColor="White" 
                                Width="313px">
                                <table align="center" cellpadding="0" cellspacing="0" 
    class="style2">
                                    <tr>
                                        <td class="style23">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style23">
                                            <table align="center" cellpadding="0" cellspacing="0" style="width: 304px">
                                                <tr>
                                                    <td class="style28">
                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Your Point is"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Label5" runat="server" Font-Bold="False"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        <b>Wrong Answer</b></td>
                                                    <td>
                                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style24">
                                                        <b>Question No</b></td>
                                                    <td class="style25">
                                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style26">
                                                        </td>
                                                    <td class="style27">
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style28">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

