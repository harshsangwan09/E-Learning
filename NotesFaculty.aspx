<%@ Page Title="" Language="C#" MasterPageFile="~/afterloginfaculty.master" AutoEventWireup="true" CodeFile="NotesFaculty.aspx.cs" Inherits="samplepaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title></title>
</head>
<body>
    
    <div>  
   <table>
    <tr>
    <td class="style7"> 
        Welcome</td>
        <td class="style7">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
        <td class="style7"> 
        </td>
        <td class="style7">
        
            </td>
        </tr>
        
    <tr>
    <td> 
        <br />
        <br />
        Select File&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            <br />
            <br />
        <asp:FileUpload ID="FileUpload1" runat="server" ToolTip="Select Only Word File" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td> 
            <br />
            <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" />
        </td>
        <td>
        
            &nbsp;</td>
        </tr>
        
</table>
<p><asp:Label ID="Label2" runat="server" Text="label"></asp:Label>  </p>

   <br />    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [abc]"></asp:SqlDataSource>
    </div>

       

</body>
</html>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style7
        {
            height: 54px;
        }
    </style>
</asp:Content>


