<%@ Page Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="usertestresult.aspx.cs" Inherits="usertestresult" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td style="padding-left:10px; padding-top:10px;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#3399FF" Text="User Test Result"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding-top:50px; padding-left:100px;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDataSource1" style="text-align: center" 
                    Width="745px">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:BoundField DataField="topic" HeaderText="Topic" SortExpression="topic" />
                        <asp:BoundField DataField="username" HeaderText="User Name" 
                            SortExpression="username" />
                        <asp:BoundField DataField="resultdate" HeaderText="Result Date" 
                            SortExpression="resultdate" />
                        <asp:BoundField DataField="wronganswer" HeaderText="Wrong Answer" 
                            SortExpression="wronganswer" />
                        <asp:BoundField DataField="totalquestion" HeaderText="Total Question" 
                            SortExpression="totalquestion" />
                        <asp:BoundField DataField="totalpoint" HeaderText="Total Point" 
                            SortExpression="totalpoint" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [topic], [username], [resultdate], [wronganswer], [totalquestion], [totalpoint] FROM [testresult] WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="username" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

