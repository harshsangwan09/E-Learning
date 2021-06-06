<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmlvideo.aspx.cs" Inherits="htmlvideo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            color: #000000;
        }
        .style5
        {
            height: 1330px;
        }
        .style9
        {
            width: 154px;
        }
        .style11
        {
            color: #000000;
            width: 92px;
        }
        .style12
        {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Videos"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    Videos can be played in HTML by many different methods.</p>
                <h2 class="example">
                    HTML Tables</h2>
                <table class="reference" style="width:36%">
                    <tr>
                        <td class="style9">
                            Apples</td>
                        <td>
                            44%</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Bananas</td>
                        <td>
                            23%</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Oranges</td>
                        <td>
                            13%</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Other</td>
                        <td>
                            10%</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <h2>
                    HTML Tables</h2>
                <p>
                    Tables are defined with the &lt;table&gt; tag.</p>
                <p>
                    A table is divided into rows (with the &lt;tr&gt; tag), and each row is divided into 
                    data cells (with the &lt;td&gt; tag). td stands for &quot;table data,&quot; and holds the 
                    content of a data cell. A &lt;td&gt; tag can contain text, links, images, lists, 
                    forms, other tables, etc.</p>
                <h2>
                    Table Example</h2>
                <div class="code notranslate">
                    <div>
                        &lt;table border=&quot;1&quot;&gt;<br />
                        &lt;tr&gt;<br />
                        &lt;td&gt;row 1, cell 1&lt;/td&gt;<br />
                        &lt;td&gt;row 1, cell 2&lt;/td&gt;<br />
                        &lt;/tr&gt;<br />
                        &lt;tr&gt;<br />
                        &lt;td&gt;row 2, cell 1&lt;/td&gt;<br />
                        &lt;td&gt;row 2, cell 2&lt;/td&gt;<br />
                        &lt;/tr&gt;<br />
                        &lt;/table&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                <table border="1">
                    <tr>
                        <td>
                            row 1, cell 1</td>
                        <td>
                            row 1, cell 2</td>
                    </tr>
                    <tr>
                        <td>
                            row 2, cell 1</td>
                        <td>
                            row 2, cell 2</td>
                    </tr>
                </table>
                <h2>
                    HTML Tables and the Border Attribute</h2>
                <p>
                    If you do not specify a border attribute, the table will be displayed without 
                    borders. Sometimes this can be useful, but most of the time, we want the borders 
                    to show.
                </p>
                <p>
                    To display a table with borders, specify the border attribute:</p>
                <div class="code notranslate">
                    <div>
                        &lt;table border=&quot;1&quot;&gt;<br />
                        &lt;tr&gt;<br />
                        &lt;td&gt;Row 1, cell 1&lt;/td&gt;<br />
                        &lt;td&gt;Row 1, cell 2&lt;/td&gt;<br />
                        &lt;/tr&gt;<br />
                        &lt;/table&gt;
                    </div>
                </div>
                <h2>
                    HTML Table Headers</h2>
                <p>
                    Header information in a table are defined with the &lt;th&gt; tag.</p>
                <p>
                    All major browsers display the text in the &lt;th&gt; element as bold and centered.</p>
                <div class="code notranslate">
                    <div>
                        &lt;table border=&quot;1&quot;&gt;<br />
                        &lt;tr&gt;<br />
                        &lt;th&gt;Header 1&lt;/th&gt;<br />
                        &lt;th&gt;Header 2&lt;/th&gt;<br />
                        &lt;/tr&gt;<br />
                        &lt;tr&gt;<br />
                        &lt;td&gt;row 1, cell 1&lt;/td&gt;<br />
                        &lt;td&gt;row 1, cell 2&lt;/td&gt;<br />
                        &lt;/tr&gt;<br />
                        &lt;tr&gt;<br />
                        &lt;td&gt;row 2, cell 1&lt;/td&gt;<br />
                        &lt;td&gt;row 2, cell 2&lt;/td&gt;<br />
                        &lt;/tr&gt;<br />
                        &lt;/table&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in your browser:</p>
                <table border="1">
                    <tr>
                        <th>
                            Header 1</th>
                        <th>
                            Header 2</th>
                    </tr>
                    <tr>
                        <td>
                            row 1, cell 1</td>
                        <td>
                            row 1, cell 2</td>
                    </tr>
                    <tr>
                        <td>
                            row 2, cell 1</td>
                        <td>
                            row 2, cell 2</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <h2>
                    HTML Table Tags</h2>
                <table class="reference">
                    <tr>
                        <th align="left" class="style12">
                            Tag</th>
                        <th align="left">
                            Description</th>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_table.asp"><span class="style4">
                            &lt;table&gt;</span></a></td>
                        <td>
                            Defines a table</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_th.asp"><span class="style4">&lt;th&gt;</span></a></td>
                        <td>
                            Defines a table header</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_tr.asp"><span class="style4">&lt;tr&gt;</span></a></td>
                        <td>
                            Defines a table row</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_td.asp"><span class="style4">&lt;td&gt;</span></a></td>
                        <td>
                            Defines a table cell</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_caption.asp"><span class="style4">
                            &lt;caption&gt;</span></a></td>
                        <td>
                            Defines a table caption</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_colgroup.asp"><span class="style4">
                            &lt;colgroup&gt;</span></a></td>
                        <td>
                            Defines a group of columns in a table, for formatting</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_col.asp"><span class="style4">&lt;col /&gt;</span></a></td>
                        <td>
                            Defines attribute values for one or more columns in a table</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_thead.asp"><span class="style4">
                            &lt;thead&gt;</span></a></td>
                        <td>
                            Groups the header content in a table</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_tbody.asp"><span class="style4">
                            &lt;tbody&gt;</span></a></td>
                        <td>
                            Groups the body content in a table</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_tfoot.asp"><span class="style4">
                            &lt;tfoot&gt;</span></a></td>
                        <td>
                            Groups the footer content in a table
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

