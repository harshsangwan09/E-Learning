<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmlintro.aspx.cs" Inherits="htmlintro" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Introduction"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;html&gt;<br />
                        &lt;body&gt;<br />
                        <br />
                        &lt;h1&gt;My First Heading&lt;/h1&gt;<br />
                        <br />
                        &lt;p&gt;My first paragraph.&lt;/p&gt;<br />
                        <br />
                        &lt;/body&gt;<br />
                        &lt;/html&gt;
                                                    </div>
&nbsp;</div>
                                                <h2>
                                                    What is HTML?</h2>
                                                <p>
                                                    HTML is a language for describing web pages.</p>
                <ul>
                    <li>HTML stands for <b>H</b>yper <b>T</b>ext <b>M</b>arkup <b>L</b>anguage</li>
                    <li>HTML is not a programming language, it is a <b>markup language</b></li>
                    <li>A markup language is a set of <b>markup tags</b></li>
                    <li>HTML uses <b>markup tags</b> to describe web pages </li>
                                                </ul>
                                                <h2>
                                                    HTML Tags</h2>
                                                <p>
                                                    HTML markup tags are usually called HTML tags</p>
                <ul>
                    <li>HTML tags are keywords surrounded by <b>angle brackets </b>like &lt;html&gt;</li>
                    <li>HTML tags normally <b>come in pairs</b> like &lt;b&gt; and &lt;/b&gt;</li>
                    <li>The first tag in a pair is the <b>start tag,</b> the second tag is the <b>end 
                        tag</b></li>
                    <li>Start and end tags are also called <b>opening tags</b> and <b>closing tags</b></li>
                                                </ul>
                                                <h2>
                                                    HTML Documents = Web Pages</h2>
                                                <ul>
                                                    <li>HTML documents <b>describe web pages</b></li>
                    <li>HTML documents <b>contain HTML tags</b> and plain text</li>
                    <li>HTML documents are also <b>called web pages</b></li>
                </ul>
                <p>
                    The purpose of a web browser (like Internet Explorer or Firefox) is to read HTML 
                    documents and display them as web pages. The browser does not display the HTML 
                    tags, but uses the tags to interpret the content of the page:</p>
                <div class="code notranslate">
                    <div>
                        &lt;html&gt;<br />
                        &lt;body&gt;<br />
                        <br />
                        &lt;h1&gt;My First Heading&lt;/h1&gt;<br />
                        <br />
                        &lt;p&gt;My first paragraph.&lt;/p&gt;<br />
                        <br />
                        &lt;/body&gt;<br />
                        &lt;/html&gt;<br />
                    </div>
                </div>
                <h2>
                    Example Explained</h2>
                <ul>
                    <li>The text between &lt;html&gt; and &lt;/html&gt; describes the web page</li>
                    <li>The text between &lt;body&gt; and &lt;/body&gt; is the visible page content</li>
                    <li>The text between &lt;h1&gt; and &lt;/h1&gt; is displayed as a heading</li>
                    <li>The text between &lt;p&gt; and &lt;/p&gt; is displayed as a paragraph</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style6">HTML Documents = Web Pages </span>
                <ul>
                    <li>HTML documents <b>describe web pages</b></li>
                    <li>HTML documents <b>contain HTML tags</b> and plain text</li>
                    <li>HTML documents are also <b>called web pages</b></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style5">The purpose of a web browser (like Internet Explorer or 
                Firefox) is to read HTML documents and display them as web pages. The browser 
                does not display the HTML tags, but uses the tags to interpret the content of 
                the page:</span></td>
        </tr>
        <tr>
            <td class="style5">
                &lt;html&gt;<br />
                &lt;body&gt;<br />
                <br />
                &lt;h1&gt;My First Heading&lt;/h1&gt;<br />
                <br />
                &lt;p&gt;My first paragraph.&lt;/p&gt;<br />
                <br />
                &lt;/body&gt;<br />
                &lt;/html&gt;</td>
        </tr>
        <tr>
            <td class="style5">
                <b>
                Example Explained</b><ul>
                    <li>The text between &lt;html&gt; and &lt;/html&gt; describes the web page</li>
                    <li>The text between &lt;body&gt; and &lt;/body&gt; is the visible page content</li>
                    <li>The text between &lt;h1&gt; and &lt;/h1&gt; is displayed as a heading</li>
                    <li>The text between &lt;p&gt; and &lt;/p&gt; is displayed as a paragraph</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

