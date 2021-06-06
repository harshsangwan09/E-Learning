<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="ctest.aspx.cs" Inherits="asptest" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style5
        {
    }
        .style6
        {
        width: 132px;
    }
        .style9
        {
        width: 124px;
        height: 19px;
        font-weight: bold;
    }
        .style10
        {
            height: 19px;
        }
        .style7
        {
        width: 124px;
        height: 20px;
        font-weight: bold;
    }
        .style8
        {
            height: 20px;
        }
        .style13
        {
            height: 37px;
            width: 401px;
        }
        .style14
        {
            width: 401px;
        }
        .style15
        {
            height: 57px;
        }
        .style16
        {
        width: 124px;
        height: 18px;
    }
        .style17
        {
            height: 18px;
        }
        .style18
        {
            height: 39px;
            width: 401px;
        }
        .style19
        {
            height: 42px;
            width: 401px;
        }
        .style20
        {
        width: 124px;
    }
        .style21
    {
        width: 598px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td style="padding-top:10PX; padding-left:10PX;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="C++ Test"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="style21">
                            <asp:Panel ID="Panel1" runat="server" Height="232px" Width="580px" 
                                BackColor="White">
                                <table align="center" cellpadding="0" cellspacing="0" 
    style="padding-left:10px; padding-top:10px;">
                                    <tr>
                                        <td class="style15">
                                            <asp:Label ID="lblQuestion" runat="server" style="font-weight: 700" 
                                                Visible="False"></asp:Label>
                                            <br />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table align="center" cellpadding="0" cellspacing="0" 
                                                style="height: 162px; width: 560px;">
                                                <tr>
                                                    <td class="style13">
                                                        <asp:RadioButton ID="chkAnswer1" runat="server" GroupName="option" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style18">
                                                        <asp:RadioButton ID="chkAnswer2" runat="server" GroupName="option" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style19">
                                                        <asp:RadioButton ID="chkAnswer3" runat="server" GroupName="option" 
                                                            Visible="False" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style14">
                                                        <asp:Label ID="rightans" runat="server" Visible="False"></asp:Label>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;<asp:Button ID="Button2" runat="server" Height="23px" onclick="Button2_Click" 
                                                            Text="NEXT" Width="74px" Visible="False" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click" 
                                                            Text="Save Test Result" Visible="False" />
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                            <asp:Panel ID="Panel2" runat="server" Height="224px" BackColor="White" 
                                style="margin-left: 0px" Width="230px">
                                <table align="center" cellpadding="0" cellspacing="0" 
    style="padding-top:10px; padding-left:10px; font-family:Arial;">
                                    <tr>
                                        <td>
                                            <table align="center" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td class="style16">
                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Your Point is"></asp:Label>
                                                        </td>
                                                    <td class="style17">
                                                        <asp:Label ID="Label5" runat="server" Font-Bold="False"></asp:Label>
                                                        </td>
                                                </tr>
                                                <tr>
                                                    <td class="style9">
                                                        &nbsp;</td>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style9">
                                                        Wrong Answer</td>
                                                    <td class="style10">
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
                                                    <td class="style7">
                                                        Question No</td>
                                                    <td class="style8">
                                                        <asp:Label ID="Label11" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style16">
                                                        </td>
                                                    <td class="style17">
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
                <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

