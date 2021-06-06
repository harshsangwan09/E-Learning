<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmltest.aspx.cs" Inherits="htmltest" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style8
        {
            width: 125px;
        }
        .style15
        {
            width: 436px;
        }
        .style16
        {
        width: 655px;
    }
        .style18
    {
        height: 33px;
        width: 660px;
    }
    .style19
    {
        width: 660px;
    }
    .style20
    {
        width: 145px;
    }
    .style21
    {
        width: 660px;
        height: 28px;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Test"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" cellpadding="0" cellspacing="0" class="style2">
                    <tr>
                        <td class="style15">
                            <asp:Panel ID="Panel1" runat="server" Height="215px" Width="662px" 
                                BackColor="White">
                                <table align="center" cellpadding="0" cellspacing="0" 
    class="style2" style="padding-left:10px; padding-top:10px; font-family:arial">
                                    <tr>
                                        <td class="style16">
                                            <asp:Label ID="lblQuestion" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style16">
                                            <table align="center" cellpadding="0" cellspacing="0" class="style2">
                                                <tr>
                                                    <td class="style18">
                                                        <asp:RadioButton ID="chkAnswer1" runat="server" Visible="False" 
                                                            GroupName="option" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style21">
                                                        <asp:RadioButton ID="chkAnswer2" runat="server" Visible="False" 
                                                            GroupName="option" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style21">
                                                        <asp:RadioButton ID="chkAnswer3" runat="server" Visible="False" 
                                                            GroupName="option" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style19">
                                                        <asp:Label ID="rightans" runat="server" Visible="False"></asp:Label>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style19">
                                                        &nbsp;
                                                        <asp:Button ID="Button1" runat="server" Height="23px" onclick="Button1_Click" 
                                                            Text="Next" Width="80px" Visible="False" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click" 
                                                            Text="Save Test Result" Visible="False" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                                                        &nbsp;&nbsp;&nbsp;
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
                        <td>
                            <asp:Panel ID="Panel2" runat="server" Height="215px" BackColor="White">
                                <table align="center" cellpadding="0" cellspacing="0" 
    class="style2" style="padding-top:10px; padding-left:10px; font-family:Arial;">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Your Point is"></asp:Label>
                                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" Font-Bold="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        <b>Wrong Answer</b></td>
                                                    <td>
                                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        <b>Question</b> <b>No</b></td>
                                                    <td class="style8">
                                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style20">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

