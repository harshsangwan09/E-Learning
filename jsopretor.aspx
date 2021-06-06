<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jsopretor.aspx.cs" Inherits="jsopretor" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            height: 22px;
        }
        .style11
        {
            color: rgb(0, 0, 0);
        }
        .style12
        {
            width: 21%;
        }
        .style13
        {
            height: 22px;
            width: 21%;
        }
        .style14
        {
            width: 8%;
        }
        .style15
        {
            height: 22px;
            width: 8%;
        }
        .style16
        {
            width: 56px;
        }
        .style17
        {
            height: 22px;
            width: 56px;
        }
        .style18
        {
            width: 19%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" cellpadding="0" cellspacing="0" class="style2" 
        
        style="padding-left:10PX; padding-top:10px; font-family: Arial, Helvetica, sans-serif; width: 897px; margin-right: 63px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript Operators"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <span id="ctl00_ContentPlaceHolder1_Label1" class="style11" 
                    style="font-size: x-large; font-weight: bold;">JavaScript Operators</span></td>
        </tr>
        <tr>
            <td>
                <p class="intro">
                    = is used to assign values.</p>
                <p class="intro">
                    + is used to add values.</p>
                                                <p>
                                                    The assignment operator <b>=</b> is used to assign values to JavaScript 
                    variables.</p>
                <p>
                    The arithmetic operator + is used to add values together.</p>
                <div class="code notranslate">
                    <div>
                        y=5;<br />
                        z=2;<br />
                        x=y+z;</div>
                </div>
                <p>
                    The value of x, after the execution of the statements above, is 7.</p>
                                                <h2>
                                                    JavaScript Arithmetic Operators</h2>
                                                <p>
                                                    Arithmetic operators are used to perform arithmetic between variables and/or 
                                                    values.</p>
                <p>
                    Given that <b>y=5</b>, the table below explains the arithmetic operators:
                </p>
                <table class="reference">
                    <tr>
                        <th align="left" class="style14">
                            Operator</th>
                        <th align="left" class="style12">
                            Description</th>
                        <th align="left" class="style14">
                            Example</th>
                        <th align="left" colspan="2" width="25%">
                            Result</th>
                    </tr>
                    <tr>
                        <td valign="top" class="style14">
                            +</td>
                        <td valign="top" class="style12">
                            Addition</td>
                        <td valign="top" class="style14">
                            x=y+2</td>
                        <td valign="top" class="style16">
                            x=7</td>
                        <td valign="top">
                            y=5</td>
                    </tr>
                    <tr>
                        <td valign="top" class="style14">
                            -</td>
                        <td valign="top" class="style12">
                            Subtraction</td>
                        <td valign="top" class="style14">
                            x=y-2</td>
                        <td valign="top" class="style16">
                            x=3</td>
                        <td valign="top">
                            y=5</td>
                    </tr>
                    <tr>
                        <td valign="top" class="style15">
                            *</td>
                        <td valign="top" class="style13">
                            Multiplication</td>
                        <td valign="top" class="style15">
                            x=y*2</td>
                        <td valign="top" class="style17">
                            x=10</td>
                        <td valign="top" class="style10">
                            y=5</td>
                    </tr>
                    <tr>
                        <td valign="top" class="style14">
                            /</td>
                        <td valign="top" class="style12">
                            Division</td>
                        <td valign="top" class="style14">
                            x=y/2</td>
                        <td valign="top" class="style16">
                            x=2.5</td>
                        <td valign="top">
                            y=5</td>
                    </tr>
                    <tr>
                        <td valign="top" class="style14">
                            %</td>
                        <td valign="top" class="style12">
                            Modulus (division remainder)</td>
                        <td valign="top" class="style14">
                            x=y%2</td>
                        <td valign="top" class="style16">
                            x=1</td>
                        <td valign="top">
                            y=5</td>
                    </tr>
                    <tr>
                        <td rowspan="2" valign="top" class="style14">
                            ++</td>
                        <td rowspan="2" valign="top" class="style12">
                            Increment</td>
                        <td valign="top" class="style14">
                            x=++y</td>
                        <td valign="top" class="style16">
                            x=6</td>
                        <td valign="top">
                            y=6</td>
                    </tr>
                    <tr>
                        <td valign="top" class="style14">
                            x=y++</td>
                        <td valign="top" class="style16">
                            x=5</td>
                        <td valign="top">
                            y=6</td>
                    </tr>
                    <tr>
                        <td rowspan="2" valign="top" class="style14">
                            --</td>
                        <td rowspan="2" valign="top" class="style12">
                            Decrement</td>
                        <td valign="top" class="style14">
                            x=--y</td>
                        <td valign="top" class="style16">
                            x=4</td>
                        <td valign="top">
                            y=4</td>
                    </tr>
                    <tr>
                        <td valign="top" class="style14">
                            x=y--</td>
                        <td valign="top" class="style16">
                            x=5</td>
                        <td valign="top">
                            y=4</td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <h2>
                                                    JavaScript Assignment Operators</h2>
                                                <p>
                                                    Assignment operators are used to assign values to JavaScript variables.</p>
                                                <p>
                                                    Given that <b>x=10</b> and <b>y=5</b>, the table below explains the assignment 
                    operators:</p>
                <table class="reference">
                    <tr>
                        <th align="left" width="15%">
                            Operator</th>
                        <th align="left" class="style18">
                            Example</th>
                        <th align="left" width="25%">
                            Same As</th>
                        <th align="left" width="20%">
                            Result</th>
                    </tr>
                    <tr>
                        <td valign="top">
                            =</td>
                        <td valign="top" class="style18">
                            x=y</td>
                        <td valign="top">
                            &nbsp;</td>
                        <td valign="top">
                            x=5</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            +=</td>
                        <td valign="top" class="style18">
                            x+=y</td>
                        <td valign="top">
                            x=x+y</td>
                        <td valign="top">
                            x=15</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            -=</td>
                        <td valign="top" class="style18">
                            x-=y</td>
                        <td valign="top">
                            x=x-y</td>
                        <td valign="top">
                            x=5</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            *=</td>
                        <td valign="top" class="style18">
                            x*=y</td>
                        <td valign="top">
                            x=x*y</td>
                        <td valign="top">
                            x=50</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            /=</td>
                        <td valign="top" class="style18">
                            x/=y</td>
                        <td valign="top">
                            x=x/y</td>
                        <td valign="top">
                            x=2</td>
                    </tr>
                    <tr>
                        <td valign="top">
                            %=</td>
                        <td valign="top" class="style18">
                            x%=y</td>
                        <td valign="top">
                            x=x%y</td>
                        <td valign="top">
                            x=0</td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <h2>
                                                    The + Operator Used on Strings</h2>
                                                <p>
                                                    The + operator can also be used to add string variables or text values together.</p>
                                                <p>
                                                    To add two or more string variables together, use the + operator.</p>
                <div class="code notranslate">
                    <div>
                        txt1=&quot;What a very&quot;;<br />
                        txt2=&quot;nice day&quot;;<br />
                        txt3=txt1+txt2;
                    </div>
                </div>
                <p>
                    After the execution of the statements above, the variable txt3 contains &quot;What a 
                    verynice day&quot;.</p>
                <p>
                    To add a space between the two strings, insert a space into one of the strings:</p>
                <div class="code notranslate">
                    <div>
                        txt1=&quot;What a very &quot;;<br />
                        txt2=&quot;nice day&quot;;<br />
                        txt3=txt1+txt2;</div>
                </div>
                <p>
                    or insert a space into the expression:</p>
                <div class="code notranslate">
                    <div>
                        txt1=&quot;What a very&quot;;<br />
                        txt2=&quot;nice day&quot;;<br />
                        txt3=txt1+&quot; &quot;+txt2;</div>
                </div>
                <p>
                    After the execution of the statements above, the variable txt3 contains:</p>
                <p>
                    &quot;What a very nice day&quot;</p>
                                                <h2>
                                                    Adding Strings and Numbers</h2>
                                                <p>
                                                    The rule is: <b>If you add a number and a string, the result will be a string!</b></p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        x=5+5;<br />
                        document.write(x);<br />
                        <br />
                        x=&quot;5&quot;+&quot;5&quot;;<br />
                        document.write(x);<br />
                        <br />
                        x=5+&quot;5&quot;;<br />
                        document.write(x);<br />
                        <br />
                        x=&quot;5&quot;+5;<br />
                        document.write(x);
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

