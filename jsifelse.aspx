<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jsifelse.aspx.cs" Inherits="jsifelse" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-left:10PX; padding-top:10PX; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript If...Else Statements"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    Conditional statements are used to perform different actions based on different 
                    conditions.</p>
                <h2>
                    Conditional Statements</h2>
                <p>
                    Very often when you write code, you want to perform different actions for 
                    different decisions. You can use conditional statements in your code to do this.</p>
                <p>
                    In JavaScript we have the following conditional statements:</p>
                <ul>
                    <li><b>if statement</b> - use this statement to execute some code only if a 
                        specified condition is true</li>
                    <li><b>if...else statement</b> - use this statement to execute some code if the 
                        condition is true and another code if the condition is false</li>
                    <li><b>if...else if....else statement</b> - use this statement to select one of many 
                        blocks of code to be executed</li>
                    <li><b>switch statement</b> - use this statement to select one of many blocks of 
                        code to be executed</li>
                </ul>
                <h2>
                    If Statement</h2>
                <p>
                    Use the if statement to execute some code only if a specified condition is true.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        if (<i>condition</i>)<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed if condition is true</i><br />
                        &nbsp; }</div>
                </div>
                <p>
                    Note that if is written in lowercase letters. Using uppercase letters (IF) will 
                    generate a JavaScript error!</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        //Write a &quot;Good morning&quot; greeting if<br />
                        //the time is less than 10<br />
                        <br />
                        var d=new Date();<br />
                        var time=d.getHours();<br />
                        <br />
                        if (time&lt;10)<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;&lt;b&gt;Good morning&lt;/b&gt;&quot;);<br />
                        &nbsp; }<br />
                        &lt;/script&gt;</div>
                </div>
                <p>
                    Notice that there is no ..else.. in this syntax. You tell the browser to execute 
                    some code <b>only if the specified condition is true</b>.</p>
                <h2>
                    If...else Statement</h2>
                <p>
                    Use the if....else statement to execute some code if a condition is true and 
                    another code if the condition is not true.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        if (<i>condition</i>)<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed if condition is true</i><br />
                        &nbsp; }<br />
                        else<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed if condition is not true</i><br />
                        &nbsp; }</div>
                </div>
                <br />
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        //If the time is less than 10, you will get a &quot;Good morning&quot; greeting.<br />
                        //Otherwise you will get a &quot;Good day&quot; greeting.<br />
                        <br />
                        var d = new Date();<br />
                        var time = d.getHours();<br />
                        <br />
                        if (time &lt; 10)<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;Good morning!&quot;);<br />
                        &nbsp; }<br />
                        else<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;Good day!&quot;);<br />
                        &nbsp; }<br />
                        &lt;/script&gt;</div>
                </div>
                <h2>
                    If...else if...else Statement</h2>
                <p>
                    Use the if....else if...else statement to select one of several blocks of code 
                    to be executed.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        if (<i>condition1</i>)<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed if condition1 is true</i><br />
                        &nbsp; }<br />
                        else if (<i>condition2</i>)<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed if condition2 is true</i><br />
                        &nbsp; }<br />
                        else<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed if neither condition1 nor condition2 is true</i><br />
                        &nbsp; }</div>
                </div>
                <br />
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        var d = new Date()<br />
                        var time = d.getHours()<br />
                        if (time&lt;10)<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;&lt;b&gt;Good morning&lt;/b&gt;&quot;);<br />
                        &nbsp; }<br />
                        else if (time&gt;=10 &amp;&amp; time&lt;16)<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;&lt;b&gt;Good day&lt;/b&gt;&quot;);<br />
                        &nbsp; }<br />
                        else<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;&lt;b&gt;Hello World!&lt;/b&gt;&quot;);<br />
                        &nbsp; }<br />
                        &lt;/script&gt;</div>
                </div>
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

