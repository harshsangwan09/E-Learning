<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmlparagraph.aspx.cs" Inherits="htmlparagraph" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            height: 60px;
        }
        .style10
        {
            height: 38px;
        }
        .style11
        {
            height: 29px;
        }
        .style12
        {
            height: 31px;
        }
        .style13
        {
            height: 77px;
        }
        .style14
        {
            height: 125px;
        }
        .style15
        {
            height: 148px;
        }
        .style16
        {
            height: 94px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" cellpadding="0" cellspacing="0" class="style2" 
        
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif; height: 1081px;">
        <tr>
            <td class="style9">
                <h1>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="#3399FF" Text="HTML Paragraphs"></asp:Label>
                </h1>
            </td>
        </tr>
        <tr>
            <td class="style10">
                <b>
                <br class="style5" />
                </b><span class="style6">HTML documents are divided into paragraphs.</span></td>
        </tr>
        <tr>
            <td class="style11">
                <br />
                HTML Paragraphs</td>
        </tr>
        <tr>
            <td class="style12">
                <br />
                Paragraphs are defined with the &lt;p&gt; tag</td>
        </tr>
        <tr>
            <td class="style13">
                    <span>
                <br />
                <b>Example</b><br />
                <br />
                </span>&lt;p&gt;This is&lt;br /&gt;a para&lt;br /&gt;graph with line breaks&lt;/p&gt;
                <br />
                    The &lt;br /&gt; element is an empty HTML element. It has no end tag.</td>
        </tr>
        <tr>
            <td class="style14">
                    <span>
                <br />
                &lt;br&gt; or &lt;br /&gt;<br />
                </span>
                <br />
                    In XHTML, XML, elements with no end tag (closing tag) are not allowed.
                <br />
                <br />
                    Even if &lt;br&gt; works in all browsers, writing &lt;br /&gt; instead works better in XHTML 
                    and XML applications.</td>
        </tr>
        <tr>
            <td class="style15">
                <p style="width: 695px">
                    <span class="style7">
                    <br />
                    HTML Output - Useful Tips</span><br />
                    <br />
                    You cannot be sure how HTML will be displayed. Large or small screens, and 
                    resized windows will create different results.
                    <br />
                    <br />
                    With HTML, you cannot change the output by adding extra spaces or extra lines in 
                    your HTML code.</p>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <br />
                    The browser will remove extra spaces and extra lines when the page is displayed. 
                    Any number of lines count as one line, and any number of spaces count as one 
                    space.</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

