<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UploadVideo.ascx.cs" Inherits="UploadVideo" %>
<head>
</head>
<table class="style1">
    <tr>
        <td class="style2">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="224px" />
        </td>
        <td class="style3">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [videos]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <strong>Keywords</strong>&nbsp;
            <asp:TextBox style="text-transform:uppercase" ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Button ID="ButtonUpload" runat="server" onclick="ButtonUpload_Click" 
                Text="Upload" />
        </td>
        <td class="style3">
            <asp:Label ID="Label1" runat="server" 
                style="font-weight: 700; font-size: large"></asp:Label>
        </td>
    </tr>
    </table>
