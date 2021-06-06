<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 101px;
        }
        .style7
        {
            width: 175px;
        }
        .style9
        {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="10" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:50px; width: 691px;">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <br />
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#3399FF" Text="User Registration Form"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="183px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator">User Name 
                Can&#39;t Blank</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="False" ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$">Alphabets Only</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="False" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="183px" TextMode="Password"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator">Password 
                Can&#39;t Blank</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Name Can&#39;t 
                Blank</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Date of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="183px"></asp:TextBox>
            &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
                    Style="z-index: 113; left: 632px; top: 260px" 
                    ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$">dd-mm-yyyy</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="182px">
                    <asp:ListItem>Select One</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            &nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Status Required" 
                    Operator="NotEqual" Style="z-index: 115; left: 808px; top: 591px; width: 8px;" 
                    ValueToCompare="Select One">Select Gender</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="182px" Height="61px" 
                    TextMode="MultiLine"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">Address 
                Can&#39;t Blank</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="City"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="183px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">City Cant Blank</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="False" ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$">Alphabets Only</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="183px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">Country Cant Blank</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="RegularExpressionValidator" 
                    Font-Bold="False" ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$">Alphabets Only</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Mobile"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="183px"></asp:TextBox>
            &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="\d{10}">Invalid Mobile Number</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Email ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="183px"></asp:TextBox>
            &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid 
                EMail ID</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="91px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" 
                    Width="61px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

