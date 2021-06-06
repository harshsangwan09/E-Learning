<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0066FF" Text="User Result"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Select User"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="username" 
                    DataValueField="username" Height="24px" Width="168px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT distinct [username] FROM [testresult]"></asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="resultid" 
                    DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" 
                    Width="380px">
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <Fields>
                        <asp:BoundField DataField="resultid" HeaderText="Result ID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="resultid" />
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
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                            ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [testresult] WHERE [resultid] = @original_resultid AND (([topic] = @original_topic) OR ([topic] IS NULL AND @original_topic IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([resultdate] = @original_resultdate) OR ([resultdate] IS NULL AND @original_resultdate IS NULL)) AND (([wronganswer] = @original_wronganswer) OR ([wronganswer] IS NULL AND @original_wronganswer IS NULL)) AND (([totalquestion] = @original_totalquestion) OR ([totalquestion] IS NULL AND @original_totalquestion IS NULL)) AND (([totalpoint] = @original_totalpoint) OR ([totalpoint] IS NULL AND @original_totalpoint IS NULL))" 
                    InsertCommand="INSERT INTO [testresult] ([topic], [username], [resultdate], [wronganswer], [totalquestion], [totalpoint]) VALUES (@topic, @username, @resultdate, @wronganswer, @totalquestion, @totalpoint)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [testresult] WHERE ([username] = @username)" 
                    UpdateCommand="UPDATE [testresult] SET [topic] = @topic, [username] = @username, [resultdate] = @resultdate, [wronganswer] = @wronganswer, [totalquestion] = @totalquestion, [totalpoint] = @totalpoint WHERE [resultid] = @original_resultid AND (([topic] = @original_topic) OR ([topic] IS NULL AND @original_topic IS NULL)) AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([resultdate] = @original_resultdate) OR ([resultdate] IS NULL AND @original_resultdate IS NULL)) AND (([wronganswer] = @original_wronganswer) OR ([wronganswer] IS NULL AND @original_wronganswer IS NULL)) AND (([totalquestion] = @original_totalquestion) OR ([totalquestion] IS NULL AND @original_totalquestion IS NULL)) AND (([totalpoint] = @original_totalpoint) OR ([totalpoint] IS NULL AND @original_totalpoint IS NULL))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="username" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_resultid" Type="Int32" />
                        <asp:Parameter Name="original_topic" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_resultdate" Type="String" />
                        <asp:Parameter Name="original_wronganswer" Type="String" />
                        <asp:Parameter Name="original_totalquestion" Type="String" />
                        <asp:Parameter Name="original_totalpoint" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="topic" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="resultdate" Type="String" />
                        <asp:Parameter Name="wronganswer" Type="String" />
                        <asp:Parameter Name="totalquestion" Type="String" />
                        <asp:Parameter Name="totalpoint" Type="String" />
                        <asp:Parameter Name="original_resultid" Type="Int32" />
                        <asp:Parameter Name="original_topic" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_resultdate" Type="String" />
                        <asp:Parameter Name="original_wronganswer" Type="String" />
                        <asp:Parameter Name="original_totalquestion" Type="String" />
                        <asp:Parameter Name="original_totalpoint" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="topic" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="resultdate" Type="String" />
                        <asp:Parameter Name="wronganswer" Type="String" />
                        <asp:Parameter Name="totalquestion" Type="String" />
                        <asp:Parameter Name="totalpoint" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

