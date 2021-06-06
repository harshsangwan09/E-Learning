<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jsswitch.aspx.cs" Inherits="jsswitch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10PX; padding-left:10PX; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript Switch Statement"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    Conditional statements are used to perform different actions based on different 
                    conditions.</p>
                                                <h2>
                                                    The JavaScript Switch Statement</h2>
                                                <p>
                                                    Use the switch statement to select one of many blocks of code to be executed.</p>
                <h3>
                    Syntax</h3>
                <div class="code notranslate">
                    <div>
                        switch(n)<br />
                        {<br />
                        case 1:<br />
                        <i>&nbsp; execute code block 1</i><br />
                        &nbsp; break;<br />
                        case 2:<br />
                        <i>&nbsp; execute code block 2</i><br />
                        &nbsp; break;<br />
                        default:<br />
                        <i>&nbsp; code to be executed if n is different from case 1 and 2</i><br />
                        }</div>
                </div>
                <p>
                    This is how it works: First we have a single expression <i>n</i> (most often a 
                    variable), that is evaluated once. The value of the expression is then compared 
                    with the values for each case in the structure. If there is a match, the block 
                    of code associated with that case is executed. Use <b>break</b> to prevent the 
                    code from running into the next case automatically.</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;script type=&quot;text/javascript&quot;&gt;<br />
                        //You will receive a different greeting based<br />
                        //on what day it is. Note that Sunday=0,<br />
                        //Monday=1, Tuesday=2, etc.<br />
                        <br />
                        var d=new Date();<br />
                        var theDay=d.getDay();<br />
                        switch (theDay)<br />
                        {<br />
                        case 5:<br />
                        &nbsp; document.write(&quot;Finally Friday&quot;);<br />
                        &nbsp; break;<br />
                        case 6:<br />
                        &nbsp; document.write(&quot;Super Saturday&quot;);<br />
                        &nbsp; break;<br />
                        case 0:<br />
                        &nbsp; document.write(&quot;Sleepy Sunday&quot;);<br />
                        &nbsp; break;<br />
                        default:<br />
                        &nbsp; document.write(&quot;I&#39;m looking forward to this weekend!&quot;);<br />
                        }<br />
                        &lt;/script&gt;
                    </div>
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

