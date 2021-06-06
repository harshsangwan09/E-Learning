<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.master" AutoEventWireup="true" CodeFile="FacultyAddAdmin.aspx.cs" Inherits="FacultyAddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0">
        <tr >
            <td style="width: 3px; background-color: #189FCB">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB">
                &nbsp;</td>
            <td style="background-color: #189FCB" class="style22">
                &nbsp;</td>
            <td style="width: 414px; background-color: #189FCB">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="height: 89px; background-color: #189FCB; width: 3px;">
                </td>
            <td colspan="3" style="height: 89px; background-color: #189FCB">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: xx-large">ADD FACULTY&nbsp; FORM</span></td>
            <td style="height: 89px; background-color: #189FCB">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 14pt; height: 50px;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 14pt; height: 50px;">
                <font size="3">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
                <font size="3">&nbsp;&nbsp;&nbsp;&nbsp; </font></td>
            <td style="width: 153px; background-color: #189FCB; height: 50px;">
                </td>
            <td style="background-color: #189FCB; " class="style23">
                <span style="font-size: 12pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp; </span>
                <asp:Label ID="Label6" runat="server" style="font-size: 12pt" 
                    Text="YOUR RECORD SUCCESSFULLY INSERTED" Visible="False"></asp:Label>
                <span style="font-size: 12pt">&nbsp;&nbsp; </span></td>
            <td style="width: 414px; background-color: #189FCB; height: 50px;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt; height: 49px;" 
                class="aligncenter">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt; height: 49px;" 
                class="aligncenter">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; height: 49px;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 14pt; font-weight: 700; " 
                class="style24">
                <br style="font-size: 12pt" />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 14pt; font-weight: 700; height: 49px;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt; height: 43px;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt; height: 43px;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt; height: 43px;">
                NAME OF THE FACULTY</td>
            <td style="background-color: #189FCB; font-size: 12pt; " class="style25">
                <asp:TextBox ID="TextBox2" runat="server" Width="341px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt; height: 43px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Name Required</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="^[a-zA-Z ]+$" ForeColor="#CC0000">ALPHABETS ONLY</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                QUALIFICATION</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox3" runat="server" Width="341px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="Red">Qualification Required</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#CC0000" ValidationExpression="^[a-zA-Z ]+$">ALPHABETS ONLY</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                MOBILE NO</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox7" runat="server" Width="342px"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">Mobile No Required</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#CC0000" ValidationExpression="\d{10}">INVALID MOBILE NO</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                JOIN DATE</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox8" runat="server" Width="341px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">Join Date Should Not Be Blank</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="DD-MM-YYYY FORMAT ONLY" 
                    ForeColor="#CC0000" 
                    ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                DESIGNATION</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox9" runat="server" Width="341px"></asp:TextBox>
                <br />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">Designation Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt; height: 13px;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt; height: 13px;">
                </td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt; height: 13px;">
                </td>
            <td style="background-color: #189FCB; font-size: 12pt; " class="style27">
                </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt; height: 13px;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                TYPE</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox16" runat="server" Width="341px"></asp:TextBox>
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                &nbsp;</td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                USER NAME</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox13" runat="server" Width="346px"></asp:TextBox>
                <br />
                <br />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">Username Required</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+([._]?[a-zA-Z0-9]+)*$">Use only Alphabet, Number, Dot and underscore</asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                PASSWORD</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:TextBox ID="TextBox14" runat="server" Width="345px" TextMode="Password"></asp:TextBox>
                <br />
                <br />
            </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#CC0000">Password Required!</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                    runat="server" ControlToValidate="TextBox14" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="Red" 
                    ValidationExpression="([a-zA-Z]+[\d]+|[\d]+[a-zA-Z]+)[^\s]*">Must Use Alphabet and Number and Space Not Allowed</asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                &nbsp;</td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                AS ON DATE</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:Label ID="Label9" runat="server"></asp:Label>
                <br />
&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                &nbsp;</td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                &nbsp;</td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
        <tr style="color: #FFFFFF">
            <td style="width: 3px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 8px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="width: 153px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
            <td style="background-color: #189FCB; font-size: 12pt;" class="style22">
                <asp:Label ID="Label5" runat="server" style="font-size: 12pt"></asp:Label>
                </td>
            <td style="width: 414px; background-color: #189FCB; font-size: 12pt;">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style22
        {
            width: 176px;
        }
        .style23
        {
            height: 50px;
            width: 176px;
        }
        .style24
        {
            height: 49px;
            width: 176px;
        }
        .style25
        {
            height: 43px;
            width: 176px;
        }
        .style27
        {
            height: 13px;
            width: 176px;
        }
    </style>
</asp:Content>


