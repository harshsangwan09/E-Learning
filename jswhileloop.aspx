<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jswhileloop.aspx.cs" Inherits="jswhileloop" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript While Loop"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    Loops execute a block of code a specified number of times, or while a specified 
                    condition is true.</p>
                                                <h2>
                                                    The while Loop</h2>
                                                <p>
                                                    The while loop loops through a block of code while a specified condition is 
                                                    true.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        while (<i>variable</i>&lt;=<i>endvalue</i>)<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed</i><br />
                        &nbsp; }</div>
                </div>
                <p>
                    <b>Note:</b> The &lt;= could be any comparing operator.</p>
                <h3>
                    Example</h3>
                <p>
                    The example below defines a loop that starts with i=0. The loop will continue to 
                    run as long as <b>i</b> is less than, or equal to 5. <b>i</b> will increase by 1 
                    each time the loop runs:</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;html&gt;<br />
                        &lt;body&gt;<br />
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        var i=0;<br />
                        while (i&lt;=5)<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;The number is &quot; + i);<br />
                        &nbsp; document.write(&quot;&lt;br /&gt;&quot;);<br />
                        &nbsp; i++;<br />
                        &nbsp; }<br />
                        &lt;/script&gt;<br />
                        &lt;/body&gt;<br />
                        &lt;/html&gt;</div>
                                                </div>
                                                <h2>
                                                    The do...while Loop</h2>
                                                <p>
                                                    The do...while loop is a variant of the while loop. This loop will execute the 
                                                    block of code ONCE, and then it will repeat the loop as long as the specified 
                                                    condition is true.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        do<br />
                        &nbsp; {<br />
                        <i>&nbsp; code to be executed<br />
                        &nbsp; </i>}<br />
                        while (<i>variable</i>&lt;=<i>endvalue</i>);</div>
                </div>
                <h3>
                    Example</h3>
                <p>
                    The example below uses a do...while loop. The do...while loop will always be 
                    executed at least once, even if the condition is false, because the statements 
                    are executed before the condition is tested:</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;html&gt;<br />
                        &lt;body&gt;<br />
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        var i=0;<br />
                        do<br />
                        &nbsp; {<br />
                        &nbsp; document.write(&quot;The number is &quot; + i);<br />
                        &nbsp; document.write(&quot;&lt;br /&gt;&quot;);<br />
                        &nbsp; i++;<br />
                        &nbsp; }<br />
                        while (i&lt;=5);<br />
                        &lt;/script&gt;<br />
                        &lt;/body&gt;<br />
                        &lt;/html&gt;</div>
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

