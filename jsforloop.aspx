<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jsforloop.aspx.cs" Inherits="jsforloop" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript For Loop"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    Loops execute a block of code a specified number of times, or while a specified 
                    condition is true.</p>
                <h2>
                    JavaScript Loops</h2>
                <p>
                    Often when you write code, you want the same block of code to run over and over 
                    again in a row. Instead of adding several almost equal lines in a script we can 
                    use loops to perform a task like this.</p>
                <p>
                    In JavaScript, there are two different kind of loops:</p>
                <ul>
                    <li><b>for </b>- loops through a block of code a specified number of times</li>
                    <li><b>while </b>- loops through a block of code while a specified condition is true</li>
                </ul>
                <h2>
                    The for Loop</h2>
                <p>
                    The for loop is used when you know in advance how many times the script should 
                    run.</p>
                <h3>
                    <b>Syntax</b></h3>
                <div class="code notranslate">
                    <div>
                        for (<i>variable</i>=<i>startvalue</i>;<i>variable</i>&lt;=<i>endvalue</i>;<i>variable</i>=<i>variable</i>+<i>increment</i>)<br />
                        {<br />
                        <i>code to be executed</i><br />
                        }<br />
                    </div>
                </div>
                <h3>
                    <b>Example</b></h3>
                <p>
                    The example below defines a loop that starts with i=0. The loop will continue to 
                    run as long as <b>i</b> is less than, or equal to 5. <b>i</b> will increase by 1 
                    each time the loop runs.</p>
                <p>
                    <b>Note:</b> The increment parameter could also be negative, and the &lt;= could be 
                    any comparing statement.</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;html&gt;<br />
                        &lt;body&gt;<br />
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        var i=0;<br />
                        for (i=0;i&lt;=5;i++)<br />
                        {<br />
                        document.write(&quot;The number is &quot; + i);<br />
                        document.write(&quot;&lt;br /&gt;&quot;);<br />
                        }<br />
                        &lt;/script&gt;<br />
                        &lt;/body&gt;<br />
                        &lt;/html&gt;</div>
                                                </div>
                                                <h2>
                                                    The while loop</h2>
                                                <p>
                                                    The while loop will be explained in the next chapter.</p>
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

