<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jstrycatch.aspx.cs" Inherits="jstrycatch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-left:10PX; padding-top:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="JavaScript Try...Catch Statement"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    The try...catch statement allows you to test a block of code for errors.</p>
                                                <h2>
                                                    JavaScript - Catching Errors</h2>
                                                <p>
                                                    When browsing Web pages on the internet, we all have seen a JavaScript alert box 
                                                    telling us there is a runtime error and asking &quot;Do you wish to debug?&quot;. Error 
                                                    message like this may be useful for developers but not for users. When users see 
                                                    errors, they often leave the Web page.</p>
                <p>
                    This chapter will teach you how to catch and handle JavaScript error messages, 
                    so you don&#39;t lose your audience.</p>
                                                <h2>
                                                    The try...catch Statement</h2>
                                                <p>
                                                    The try...catch statement allows you to test a block of code for errors. The try 
                                                    block contains the code to be run, and the catch block contains the code to be 
                                                    executed if an error occurs.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        try<br />
                        &nbsp; {<br />
                        &nbsp; //Run some code here<br />
                        &nbsp; }<br />
                        catch(err)<br />
                        &nbsp; {<br />
                        &nbsp; //Handle errors here<br />
                        &nbsp; }</div>
                </div>
                <p>
                    Note that try...catch is written in lowercase letters. Using uppercase letters 
                    will generate a JavaScript error!</p>
                <h2>
                    Examples</h2>
                <p>
                    The example below is supposed to alert &quot;Welcome guest!&quot; when the button is 
                    clicked. However, there&#39;s a typo in the message() function. alert() is 
                    misspelled as adddlert(). A JavaScript error occurs. The catch block catches the 
                    error and executes a custom code to handle it. The code displays a custom error 
                    message informing the user what happened:</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;html&gt;<br />
                        &lt;head&gt;<br />
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        var txt=&quot;&quot;;<br />
                        function message()<br />
                        {<br />
                        try<br />
                        &nbsp; {<br />
                        &nbsp; adddlert(&quot;Welcome guest!&quot;);<br />
                        &nbsp; }<br />
                        catch(err)<br />
                        &nbsp; {<br />
                        &nbsp; txt=&quot;There was an error on this page.\n\n&quot;;<br />
                        &nbsp; txt+=&quot;Error description: &quot; + err.message + &quot;\n\n&quot;;<br />
                        &nbsp; txt+=&quot;Click OK to continue.\n\n&quot;;<br />
                        &nbsp; alert(txt);<br />
                        &nbsp; }<br />
                        }<br />
                        &lt;/script&gt;<br />
                        &lt;/head&gt;<br />
                        <br />
                        &lt;body&gt;<br />
                        &lt;input type=&quot;button&quot; value=&quot;View message&quot; onclick=&quot;message()&quot; /&gt;<br />
                        &lt;/body&gt;<br />
                        <br />
                        &lt;/html&gt;</div>
                                                </div>
                                                <p>
                                                    The next example uses a confirm box to display a custom message telling users 
                                                    they can click OK to continue viewing the page or click Cancel to go to the 
                                                    homepage. If the confirm method returns false, the user clicked Cancel, and the 
                                                    code redirects the user. If the confirm method returns true, the code does 
                                                    nothing:</p>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example</h2>
                                                    <div class="example_code notranslate">
                                                        &lt;html&gt;<br />
                                                        &lt;head&gt;<br />
                                                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                                                        var txt=&quot;&quot;;<br />
                                                        function message()<br />
                                                        {<br />
                                                        try<br />
                                                        &nbsp; {<br />
                                                        &nbsp; adddlert(&quot;Welcome guest!&quot;);<br />
                                                        &nbsp; }<br />
                                                        catch(err)<br />
                                                        &nbsp; {<br />
                                                        &nbsp; txt=&quot;There was an error on this page.\n\n&quot;;<br />
                                                        &nbsp; txt+=&quot;Click OK to continue viewing this page,\n&quot;;<br />
                                                        &nbsp; txt+=&quot;or Cancel to return to the home page.\n\n&quot;;<br />
                                                        &nbsp; if(!confirm(txt))<br />
                                                        &nbsp;&nbsp;&nbsp; {<br />
                                                        &nbsp;&nbsp;&nbsp; document.location.href=&quot;http://www.w3schools.com/&quot;;<br />
                                                        &nbsp;&nbsp;&nbsp; }<br />
                                                        &nbsp; }<br />
                                                        }<br />
                                                        &lt;/script&gt;<br />
                                                        &lt;/head&gt;<br />
                                                        <br />
                                                        &lt;body&gt;<br />
                                                        &lt;input type=&quot;button&quot; value=&quot;View message&quot; onclick=&quot;message()&quot; /&gt;<br />
                                                        &lt;/body&gt;<br />
                                                        <br />
                                                        &lt;/html&gt;</div>
                                                </div>
                                                <h2>
                                                    The throw Statement</h2>
                                                <p>
                                                    The throw statement can be used together with the try...catch statement, to 
                                                    create an exception for the error. Learn about the throw statement in the next 
                                                    chapter.</p>
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

