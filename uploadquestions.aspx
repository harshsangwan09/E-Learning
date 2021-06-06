<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="uploadquestions.aspx.cs" Inherits="uploadquestions" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 28px;
        }
        .style14
        {
            width: 28px;
            height: 19px;
        }
        .style15
        {
            height: 19px;
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="Question Upload"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style14">
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td>
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    DataKeyNames="questionid" DataSourceID="SqlDataSource1" Height="191px" 
                    Width="959px">
                    <EditItemTemplate>
                        Question ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="questionidLabel1" runat="server" 
                            Text='<%# Eval("questionid") %>' />
                        <br />
                        <br />
                        Question No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="questionnoTextBox" runat="server" 
                            Text='<%# Bind("questionno") %>' Width="400px" />
                        <br />
                        <br />
                        Topic:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="topicTextBox" runat="server" Text='<%# Bind("topic") %>' 
                            Width="16px" Visible="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="topic" DataValueField="topic" 
                            Width="400px" Text='<%# Bind("topic") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT distinct [topic] FROM [questions]"></asp:SqlDataSource>
                        <br />
                        <br />
                        Question:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="questionTextBox" runat="server" Text='<%# Bind("question") %>' 
                            Width="600px" Height="54px" />
                        <br />
                        <br />
                        Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="option1TextBox" runat="server" Text='<%# Bind("option1") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="option2TextBox" runat="server" Text='<%# Bind("option2") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="option3TextBox" runat="server" Text='<%# Bind("option3") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        Right Ans:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="rightansTextBox" runat="server" Text='<%# Bind("rightans") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Font-Bold="True" Font-Underline="False" Text="Update" />
                        &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Font-Bold="True" 
                            Font-Underline="False" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Question No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="questionnoTextBox" runat="server" 
                            Text='<%# Bind("questionno") %>' />
                        <br />
                        <br />
                        Topic:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="topicTextBox" runat="server" Text='<%# Bind("topic") %>' 
                            Width="1px" Visible="False" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="topic" DataValueField="topic" 
                            Width="400px" Text='<%# Bind("topic") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT distinct [topic] FROM [questions]"></asp:SqlDataSource>
                        <br />
                        <br />
                        Question:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="questionTextBox" runat="server" 
                            Text='<%# Bind("question") %>' Height="58px" TextMode="MultiLine" 
                            Width="566px" />
                        <br />
                        <br />
                        Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="option1TextBox" runat="server" Text='<%# Bind("option1") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="option2TextBox" runat="server" Text='<%# Bind("option2") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="option3TextBox" runat="server" Text='<%# Bind("option3") %>' 
                            Width="400px" />
                        <br />
                        <br />
                        Right Ans:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="rightansTextBox" runat="server" 
                            Text='<%# Bind("rightans") %>' Width="400px" />
                        <br />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" Font-Bold="True" 
                            Font-Underline="False" />
                        &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            Font-Bold="True" Font-Underline="False" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <br />
                        Question ID:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="questionidLabel" runat="server" 
                            Text='<%# Eval("questionid") %>' />
                        <br />
                        <br />
                        Question No:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="questionnoLabel" runat="server" 
                            Text='<%# Bind("questionno") %>' />
                        <br />
                        <br />
                        Topic:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="topicLabel" runat="server" Text='<%# Bind("topic") %>' />
                        <br />
                        <br />
                        Question:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="questionLabel" runat="server" Text='<%# Bind("question") %>' />
                        <br />
                        <br />
                        Option1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="option1Label" runat="server" Text='<%# Bind("option1") %>' />
                        <br />
                        <br />
                        Option2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="option2Label" runat="server" Text='<%# Bind("option2") %>' />
                        <br />
                        <br />
                        Option3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="option3Label" runat="server" Text='<%# Bind("option3") %>' />
                        <br />
                        <br />
                        Right Ans:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="rightansLabel" runat="server" Text='<%# Bind("rightans") %>' />
                        <br />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Font-Bold="True" Font-Underline="False" Text="Edit" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Font-Bold="True" Font-Underline="False" Text="Delete" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Font-Bold="True" Font-Underline="False" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [questions] WHERE [questionid] = @original_questionid AND (([questionno] = @original_questionno) OR ([questionno] IS NULL AND @original_questionno IS NULL)) AND [topic] = @original_topic AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([option1] = @original_option1) OR ([option1] IS NULL AND @original_option1 IS NULL)) AND (([option2] = @original_option2) OR ([option2] IS NULL AND @original_option2 IS NULL)) AND (([option3] = @original_option3) OR ([option3] IS NULL AND @original_option3 IS NULL)) AND (([rightans] = @original_rightans) OR ([rightans] IS NULL AND @original_rightans IS NULL))" 
                    InsertCommand="INSERT INTO [questions] ([questionno], [topic], [question], [option1], [option2], [option3], [rightans]) VALUES (@questionno, @topic, @question, @option1, @option2, @option3, @rightans)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [questions]" 
                    UpdateCommand="UPDATE [questions] SET [questionno] = @questionno, [topic] = @topic, [question] = @question, [option1] = @option1, [option2] = @option2, [option3] = @option3, [rightans] = @rightans WHERE [questionid] = @original_questionid AND (([questionno] = @original_questionno) OR ([questionno] IS NULL AND @original_questionno IS NULL)) AND [topic] = @original_topic AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([option1] = @original_option1) OR ([option1] IS NULL AND @original_option1 IS NULL)) AND (([option2] = @original_option2) OR ([option2] IS NULL AND @original_option2 IS NULL)) AND (([option3] = @original_option3) OR ([option3] IS NULL AND @original_option3 IS NULL)) AND (([rightans] = @original_rightans) OR ([rightans] IS NULL AND @original_rightans IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_questionid" Type="Int32" />
                        <asp:Parameter Name="original_questionno" Type="Int32" />
                        <asp:Parameter Name="original_topic" Type="String" />
                        <asp:Parameter Name="original_question" Type="String" />
                        <asp:Parameter Name="original_option1" Type="String" />
                        <asp:Parameter Name="original_option2" Type="String" />
                        <asp:Parameter Name="original_option3" Type="String" />
                        <asp:Parameter Name="original_rightans" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="questionno" Type="Int32" />
                        <asp:Parameter Name="topic" Type="String" />
                        <asp:Parameter Name="question" Type="String" />
                        <asp:Parameter Name="option1" Type="String" />
                        <asp:Parameter Name="option2" Type="String" />
                        <asp:Parameter Name="option3" Type="String" />
                        <asp:Parameter Name="rightans" Type="String" />
                        <asp:Parameter Name="original_questionid" Type="Int32" />
                        <asp:Parameter Name="original_questionno" Type="Int32" />
                        <asp:Parameter Name="original_topic" Type="String" />
                        <asp:Parameter Name="original_question" Type="String" />
                        <asp:Parameter Name="original_option1" Type="String" />
                        <asp:Parameter Name="original_option2" Type="String" />
                        <asp:Parameter Name="original_option3" Type="String" />
                        <asp:Parameter Name="original_rightans" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="questionno" Type="Int32" />
                        <asp:Parameter Name="topic" Type="String" />
                        <asp:Parameter Name="question" Type="String" />
                        <asp:Parameter Name="option1" Type="String" />
                        <asp:Parameter Name="option2" Type="String" />
                        <asp:Parameter Name="option3" Type="String" />
                        <asp:Parameter Name="rightans" Type="String" />
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

