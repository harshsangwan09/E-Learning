<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="blockvideo.aspx.cs" Inherits="blockvideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style22
    {
        width: 127px;
    }
    .style23
    {
        width: 511px;
    }
    .style24
    {
        color: #FF0000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style23">
            SET Status <span class="style24"><strong>OK</strong></span> to&nbsp; display the 
            Video Public</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style23">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                CellSpacing="1" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                GridLines="None" PageSize="5" style="margin-left: 0px" Width="622px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="video_name" HeaderText="video_name" 
                        SortExpression="video_name" />
                    <asp:BoundField DataField="video_size" HeaderText="video_size" 
                        SortExpression="video_size" />
                    <asp:BoundField DataField="keywords" HeaderText="keywords" 
                        SortExpression="keywords" />
                    <asp:BoundField DataField="status" HeaderText="status" 
                        SortExpression="status" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                DeleteCommand="DELETE FROM [videos] WHERE [id] = @original_id AND (([video_name] = @original_video_name) OR ([video_name] IS NULL AND @original_video_name IS NULL)) AND (([video_size] = @original_video_size) OR ([video_size] IS NULL AND @original_video_size IS NULL)) AND (([keywords] = @original_keywords) OR ([keywords] IS NULL AND @original_keywords IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
                InsertCommand="INSERT INTO [videos] ([video_name], [video_size], [keywords], [status]) VALUES (@video_name, @video_size, @keywords, @status)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [id], [video_name], [video_size], [keywords], [status] FROM [videos]" 
                UpdateCommand="UPDATE [videos] SET [video_name] = @video_name, [video_size] = @video_size, [keywords] = @keywords, [status] = @status WHERE [id] = @original_id AND (([video_name] = @original_video_name) OR ([video_name] IS NULL AND @original_video_name IS NULL)) AND (([video_size] = @original_video_size) OR ([video_size] IS NULL AND @original_video_size IS NULL)) AND (([keywords] = @original_keywords) OR ([keywords] IS NULL AND @original_keywords IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_video_name" Type="String" />
                    <asp:Parameter Name="original_video_size" Type="Int64" />
                    <asp:Parameter Name="original_keywords" Type="String" />
                    <asp:Parameter Name="original_status" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="video_name" Type="String" />
                    <asp:Parameter Name="video_size" Type="Int64" />
                    <asp:Parameter Name="keywords" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="video_name" Type="String" />
                    <asp:Parameter Name="video_size" Type="Int64" />
                    <asp:Parameter Name="keywords" Type="String" />
                    <asp:Parameter Name="status" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_video_name" Type="String" />
                    <asp:Parameter Name="original_video_size" Type="Int64" />
                    <asp:Parameter Name="original_keywords" Type="String" />
                    <asp:Parameter Name="original_status" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style23">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

