<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="bind2.aspx.cs" Inherits="bind" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 687px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 687px">
    <asp:Button ID="ButtonBind" runat="server" onclick="ButtonBind_Click" 
        Text="View Video" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 687px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 144px">
                &nbsp;</td>
            <td style="width: 687px">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical">
        <footerstyle backcolor="#CCCC99" />
        <rowstyle backcolor="#F7F7DE" />
        <Columns>
            <asp:templatefield>
                <ItemTemplate>
                    <object id="player0" classid="clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6" 
                        height="170" width="300">
                        <param name="url" value='<%# "VideoHandler.ashx?id=" + Eval("ID") %>'/>
                        <param name="showcontrols" value="true" />
                        <param name="autostart" value="false" />
                    </object>
                </ItemTemplate>
            </asp:templatefield>
        </Columns>
        <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
        <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
        <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
        <alternatingrowstyle backcolor="White" />
    </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

