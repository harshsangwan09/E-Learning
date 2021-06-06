<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmltable.aspx.cs" Inherits="htmltable" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 50%;
        }
        .style5
        {
            width: 158px;
        }
        .style6
        {
            width: 170px;
        }
        .style9
        {
            width: 158px;
        }
        .style11
        {
            width: 158px;
            height: 19px;
        }
        .style12
        {
            width: 148px;
            height: 19px;
        }
        .style13
        {
            width: 148px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Tables"></asp:Label>
                <b><br />
                <br />
                </b>Tables are defined with the &lt;table&gt; tag.<br />
                <br />
                A table is divided into rows (with the tag), and each row is divided into data 
                cells (with the tag). td stands for &quot;table data,&quot; and holds the content of a 
                data cell. A tag can contain text, links, images, lists, forms, other tables, 
                etc.
                <br />
                <br />
                <b>Table Example<br />
                <br />
                &lt;</b>table border=&quot;1&quot;&gt;<br />
                &lt;tr&gt;<br />
                &lt;td&gt;row1, cell 1&lt;/td&gt;<br />
                &lt;td&gt;row1, cell 2&lt;/td&gt;<br />
                &lt;/tr&gt;<br />
                &lt;td&gt;row2, cell 1&lt;/td&gt;<br />
                &lt;td&gt;row2, cell 2&lt;/td&gt;<br />
                &lt;/tr&gt;<br />
                &lt;/table&gt;<br />
                <br />
                How the HTML code above looks in a browser:
                <br />
                <br />
                <table align="left" cellpadding="0" cellspacing="0" border="1"; class="style4">
                    <tr>
                        <td class="style11">
                            row 1, cell 1</td>
                        <td class="style12">
                            &nbsp;row 1, cell 2 </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            row 2, cell 1</td>
                        <td class="style13">
                            row 2, cell 2</td>
                    </tr>
                </table>
                <br />
                &nbsp;<br />
                <br />
                <b>HTML Tables and the Border Attribute
                <br />
                </b>
                <br />
                If you do not specify a border attribute, the table will be displayed without 
                borders. Sometimes this can be useful, but most of the time, we want the borders 
                to show. To display a table with borders, specify the border attribute:<br />
                <br />
                <b>&lt;</b>table border=&quot;1&quot;&gt;<br />
                &lt;tr&gt;<br />
                &lt;td&gt;row1, cell 1&lt;/td&gt;<br />
                &lt;td&gt;row1, cell 2&lt;/td&gt;<br />
                &lt;/tr&gt;<br />
                &lt;/table&gt;<br />
                <br />
                <b>HTML Table Headers
                <br />
                </b>
                <br />
                Header information in a table are defined with the tag. All major browsers 
                display the text in the element as bold and centered.<br />
                <br />
                <b>&lt;</b>table border=&quot;1&quot;&gt;<br />
                &lt;tr&gt;<br />
                &lt;th&gt;Header 1&lt;/th&gt;<br />
                &lt;th&gt;Header 2&lt;/th&gt;<br />
                &lt;/tr&gt;<br />
                &lt;tr&gt;<br />
                &lt;td&gt;row1, cell 1&lt;/td&gt;<br />
                &lt;td&gt;row1, cell 2&lt;/td&gt;<br />
                &lt;/tr&gt;<br />
                &lt;tr&gt;<br />
                &lt;td&gt;row2, cell 1&lt;/td&gt;<br />
                &lt;td&gt;row2, cell 2&lt;/td&gt;<br />
                &lt;/tr&gt;<br />
                &lt;/table&gt;<br />
                <br />
                <b>How the HTML code above looks in your browser:<br />
                <br />
                </b>Header 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Header 2
                <br />
                row 1, cell 1&nbsp; row 1, cell 2
                <br />
                row 2, cell 1&nbsp; row 2, cell 2
                <br />
                <br />
                <b>HTML Table Tags
                <br />
                <br />
                Tag&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description<br />
                </b>
                <br />
                &lt;table&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Defines a table<br />
                &lt;th&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Defines a table header<br />
                &lt;tr&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Defines a table row<br />
                &lt;td&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Defines a table cell<br />
                &lt;caption&gt;&nbsp;&nbsp;&nbsp;&nbsp; Defines a table caption<br />
                &lt;colgroup&gt;&nbsp;&nbsp; Defines a group of columns in a table, for formatting<br />
                &lt;col /&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Defines attribute 
                values for one or more columns in a table<br />
                &lt;thead&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Groups the header content in a 
                table<br />
                &lt;tbody&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Groups the body content in a 
                table<br />
                &lt;tfoot&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Groups the footer 
                content in a table<br />
                <br />
            </td>
        </tr>
        </table>
</asp:Content>

