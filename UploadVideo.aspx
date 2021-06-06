<%@ Page Title="" Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="UploadVideo.aspx.cs" Inherits="UploadVideo" %>
<%@ Register src="UploadVideo.ascx" tagname="UploadVideo" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 51px;
            width: 82px;
        }
        .style8
        {
            width: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td class="style7">
                </td>
            <td style="height: 51px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 92px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 92px">
                            <strong>Welcome</strong></td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                
    <div>
    
        <uc1:UploadVideo ID="UploadVideo1" runat="server" />
    
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </td>
        </tr>
    </table>
</asp:Content>

