<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmllist.aspx.cs" Inherits="htmllist" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            color: #000000;
        }
        .style6
        {
            text-decoration: none;
        }
        .style9
        {
            width: 91px;
        }
        .style10
        {
            color: #000000;
            width: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Lists"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    The most common HTML lists are ordered and unordered lists:</p>
                <div class="example">
                    <h2 class="example">
                        HTML Lists</h2>
                    <div class="example_result notranslate">
                        <table border="0" width="100%">
                            <tr>
                                <td width="50%">
                                    <h3>
                                        An ordered list:</h3>
                                    <ol>
                                        <li>The first list item</li>
                                        <li>The second list item</li>
                                        <li>The third list item</li>
                                    </ol>
                                </td>
                                <td width="50%">
                                    <h3>
                                        An unordered list:</h3>
                                    <ul>
                                        <li>List item</li>
                                        <li>List item</li>
                                        <li>List item</li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <h2>
                    HTML Unordered Lists</h2>
                <p>
                    An unordered list starts with the &lt;ul&gt; tag. Each list item starts with the &lt;li&gt; 
                    tag.</p>
                <p>
                    The list items are marked with bullets (typically small black circles).</p>
                <div class="code notranslate">
                    <div>
                        &lt;ul&gt;<br />
                        &lt;li&gt;Coffee&lt;/li&gt;<br />
                        &lt;li&gt;Milk&lt;/li&gt;<br />
                        &lt;/ul&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                <ul>
                    <li>Coffee</li>
                    <li>Milk</li>
                </ul>
                <h2>
                    HTML Ordered Lists</h2>
                <p>
                    An ordered list starts with the &lt;ol&gt; tag. Each list item starts with the &lt;li&gt; 
                    tag.</p>
                <p>
                    The list items are marked with numbers.</p>
                <div class="code notranslate">
                    <div>
                        &lt;ol&gt;<br />
                        &lt;li&gt;Coffee&lt;/li&gt;<br />
                        &lt;li&gt;Milk&lt;/li&gt;<br />
                        &lt;/ol&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                <ol>
                    <li>Coffee</li>
                    <li>Milk</li>
                </ol>
                <h2>
                    HTML Definition Lists</h2>
                <p>
                    A definition list is a list of items, with a description of each item.</p>
                <p>
                    The &lt;dl&gt; tag defines a definition list.</p>
                <p>
                    The &lt;dl&gt; tag is used in conjunction with &lt;dt&gt; (defines the item in the list) and 
                    &lt;dd&gt; (describes the item in the list):</p>
                <div class="code notranslate">
                    <div>
                        &lt;dl&gt;<br />
                        &lt;dt&gt;Coffee&lt;/dt&gt;<br />
                        &lt;dd&gt;- black hot drink&lt;/dd&gt;<br />
                        &lt;dt&gt;Milk&lt;/dt&gt;<br />
                        &lt;dd&gt;- white cold drink&lt;/dd&gt;<br />
                        &lt;/dl&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                <dl>
                    <dt>Coffee</dt>
                    <dd>
                        - black hot drink</dd>
                    <dt>Milk</dt>
                    <dd>
                        - white cold drink</dd>
                </dl>
                <h2>
                    Basic Notes - Useful Tips</h2>
                <p>
                    <b>Tip:</b> Inside a list item you can put text, line breaks, images, links, 
                    other lists, etc.</p>
            </td>
        </tr>
        <tr>
            <td>
                <h2>
                    HTML List Tags</h2>
                <table class="reference">
                    <tr>
                        <th align="left" class="style9">
                            Tag</th>
                        <th align="left">
                            Description</th>
                    </tr>
                    <tr>
                        <td class="style10">
                            <a href="http://www.w3schools.com/tags/tag_ol.asp" class="style6"><span class="style4">&lt;ol&gt;</span></a></td>
                        <td>
                            Defines an ordered list</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <a href="http://www.w3schools.com/tags/tag_ul.asp" class="style6"><span class="style4">&lt;ul&gt;</span></a></td>
                        <td>
                            Defines an unordered list</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <a href="http://www.w3schools.com/tags/tag_li.asp" class="style6"><span class="style4">&lt;li&gt;</span></a></td>
                        <td>
                            Defines a list item</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <a href="http://www.w3schools.com/tags/tag_dl.asp" class="style6"><span class="style4">&lt;dl&gt;</span></a></td>
                        <td>
                            Defines a definition list</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <a href="http://www.w3schools.com/tags/tag_dt.asp" class="style6"><span class="style4">&lt;dt&gt;</span></a></td>
                        <td>
                            Defines an item in a definition list</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <a href="http://www.w3schools.com/tags/tag_dd.asp" class="style6"><span class="style4">&lt;dd&gt;</span></a></td>
                        <td>
                            Defines a description of an item in a definition list</td>
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

