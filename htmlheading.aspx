<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmlheading.aspx.cs" Inherits="htmlheading" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style10
        {
            width: 234px;
            text-decoration: none;
        }
        .style11
        {
            width: 273px;
            color: #000000;
        }
        .style12
        {
            height: 104px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#3399FF" Text="HTML Headings"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                Headings are important in HTML documents.</td>
        </tr>
        <tr>
            <td class="style5">
                <h2>
                    HTML Headings</h2>
                <p>
                    Headings are defined with the &lt;h1&gt; to &lt;h6&gt; tags.</p>
                <p>
                    &lt;h1&gt; defines the most important heading. &lt;h6&gt; defines the least important 
                    heading.</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;h1&gt;This is a heading&lt;/h1&gt;<br />
                        &lt;h2&gt;This is a heading&lt;/h2&gt;<br />
                        &lt;h3&gt;This is a heading&lt;/h3&gt;
                                                    </div>
                                                </div>
                                                <p>
                                                    <b>Note:</b> Browsers automatically add some empty space (a margin) before and 
                    after each heading.</p>
                                                <h2>
                                                    Headings Are Important</h2>
                                                <p>
                                                    Use HTML headings for headings only. Don&#39;t use headings to make text <b>BIG</b> 
                    or <b>bold</b>.</p>
                <p>
                    Search engines use your headings to index the structure and content of your web 
                    pages.</p>
                <p>
                    Since users may skim your pages by its headings, it is important to use headings 
                    to show the document structure.</p>
                <p>
                    H1 headings should be used as main headings, followed by H2 headings, then the 
                    less important H3 headings, and so on.</p>
                                                <h2>
                                                    HTML Lines</h2>
                                                <p>
                                                    The &lt;hr /&gt; tag creates a horizontal line in an HTML page.<br />
                    <br />
                    The hr element can be used to separate content:</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;p&gt;This is a paragraph&lt;/p&gt;<br />
                        &lt;hr /&gt;<br />
                        &lt;p&gt;This is a paragraph&lt;/p&gt;<br />
                        &lt;hr /&gt;<br />
                        &lt;p&gt;This is a paragraph&lt;/p&gt;
                                                    </div>
                                                </div>
                                                <h2>
                                                    HTML Comments</h2>
                                                <p>
                                                    Comments can be inserted into the HTML code to make it more readable and 
                                                    understandable. Comments are ignored by the browser and are not displayed.</p>
                <p>
                    Comments are written like this:</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;!-- This is a comment --&gt;
                                                    </div>
                                                </div>
                                                <p>
                                                    <b>Note:</b> There is an exclamation point after the opening bracket, but not 
                    before the closing bracket.</p>
                                                <h2>
                                                    HTML Tip - How to View HTML Source</h2>
                                                <p>
                                                    Have you ever seen a Web page and wondered &quot;Hey! How did they do that?&quot;</p>
                <p>
                    To find out, right-click in the page and select &quot;View Source&quot; (IE) or &quot;View Page 
                    Source&quot; (Firefox), or similar for other browsers. This will open a window 
                    containing the HTML code of the page.</p>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <h2>
                    HTML Tag Reference</h2>
                <p>
                    W3Schools&#39; tag reference contains additional information about these tags and 
                    their attributes.</p>
                <p>
                    You will learn more about HTML tags and attributes in the next chapters of this 
                    tutorial.</p>
                <table class="reference">
                    <tr>
                        <th align="left">
                            Tag</th>
                        <th align="left">
                            Description</th>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_html.asp" class="style10">
                            <span class="style11">&lt;html&gt;</span></a></td>
                        <td>
                            Defines an HTML document</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_body.asp" class="style10">
                            <span class="style11">&lt;body&gt;</span></a></td>
                        <td>
                            Defines the document&#39;s body</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_hn.asp" class="style10">
                            <span class="style11">&lt;h1&gt; to 
                            &lt;h6&gt;</span></a></td>
                        <td>
                            Defines HTML headings</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_hr.asp" class="style10">
                            <span class="style11">&lt;hr /&gt;</span></a></td>
                        <td>
                            Defines a horizontal line</td>
                    </tr>
                    <tr>
                        <td class="style11">
                            <a href="http://www.w3schools.com/tags/tag_comment.asp" class="style10">
                            <span class="style11">
                            &lt;!--&gt;</span></a></td>
                        <td>
                            Defines a comment</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style12">
                </td>
        </tr>
    </table>
</asp:Content>

