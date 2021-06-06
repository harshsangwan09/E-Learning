<%@ Page Language="C#" MasterPageFile="~/java.master" AutoEventWireup="true" CodeFile="jsvariable.aspx.cs" Inherits="jsvariable" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" style="padding-left:10px; padding-top:10px;">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="#0099FF" Text="JavaScript Variables"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <p>
                    Variables are &quot;containers&quot; for storing information.</p>
                                                <h2>
                                                    Do You Remember Algebra From School?</h2>
                                                <p>
                                                    Do you remember algebra from school? x=5, y=6, z=x+y</p>
                <p>
                    Do you remember that a letter (like x) could be used to hold a value (like 5), 
                    and that you could use the information above to calculate the value of z to be 
                    11?</p>
                <p>
                    <span>These letters are called </span><span class="style5">variables</span><span 
                       >, and variables can be used to hold 
                    values (x=5) or expressions (z=x+y).</span></p>
                                                <h2>
                                                    JavaScript Variables</h2>
                                                <p>
                                                    As with algebra, JavaScript variables are used to hold values or expressions.</p>
                <p>
                    A variable can have a short name, like x, or a more descriptive name, like 
                    carname.</p>
                <p>
                    Rules for JavaScript variable names:</p>
                <ul>
                    <li><span>Variable names are case sensitive (y and Because JavaScript is case-sensitive, variable names are 
                    case-sensitive.</span></p>
                                                <h2>
                                                    Declaring (Creating) JavaScript Variables</h2>
                                                <p>
                                                    Creating variables in JavaScript is most often referred to as &quot;declaring&quot; 
                                                    variables.</p>
                                                <p>
                                                    You declare JavaScript variables with the 
                        <h2>
                                                    Declaring (Creating) JavaScript Variables</h2>
                                                <p>
                                                    Creating variables in JavaScript is most often referred to as &quot;declaring&quot; 
                                                    variables.</p>
                <p>
                    <span>You declare JavaScript variables with the </span>
                    <span class="style5">var</span><span> keyword:</span></p>
                <div class="code notranslate">
                    <div>
                        <span>var x;</span><br />
                        <span>var carname;</span></div>
                </div>
                <p>
                    After the declaration shown above, the variables are empty (they have no values 
                    yet).</p>
                <p>
                    However, you can also assign values to the variables when you declare them:</p>
                <div class="code notranslate">
                    <div>
                        <span>var x=5;</span><br />
                        <span>var carname=&quot;Volvo&quot;;</span></div>
                </div>
                <p>
                    <span>After the execution of the statements above, the variable 
                    </span><span class="style5">x</span><span> will hold the 
                    value </span><span class="style5">5</span><span>, and </span>
                    <span class="style5">carname</span><span> will hold the value 
                    </span><span class="style5">Volvo</span><span>.</span></p>
                <p>
                    <span class="style5">Note:</span><span> When you assign a text value to a variable, use quotes around the 
                    value.</span></p>
                <p>
                    <span class="style5">Note:</span><span> If you redeclare a JavaScript variable, it will not lose its value.</span></p>
                                                <h2>
                                                    Local JavaScript Variables</h2>
                                                <p>
                                                    <span>A variable declared within a JavaScript function becomes 
                                                    </span><span class="style5">LOCAL</span><span> and can 
                    only be accessed within that function. (the variable has local scope).</span></p>
                <p>
                    You can have local variables with the same name in different functions, because 
                    local variables are only recognized by the function in which they are declared.</p>
                <p>
                    Local variables are destroyed when you exit the function.</p>
                <p>
                    You will learn more about functions in a later chapter of this tutorial.</p>
                                                <h2>
                                                    Global JavaScript Variables</h2>
                                                <p>
                                                    <span>Variables declared outside a function become </span>
                                                    <span class="style5">GLOBAL</span><span>, and all scripts and 
                    functions on the web page can access it.</span></p>
                <p>
                    Global variables are destroyed when you close the page.</p>
                <p>
                    <span>If you declare a variable, without using &quot;var&quot;, the variable always becomes 
                    </span><span class="style5">GLOBAL</span><span>.</span></p>
                                                <h2>
                                                    Assigning Values to Undeclared JavaScript Variables</h2>
                                                <p>
                                                    If you assign values to variables that have not yet been declared, the variables 
                                                    will automatically be declared as global variables.</p>
                <p>
                    These statements:</p>
                <div class="code notranslate">
                    <div>
                        <span>x=5;</span><br />
                        <span>carname=&quot;Volvo&quot;;</span></div>
                </div>
                <p>
                    will declare the variables x and carname as global variables (if they don&#39;t 
                    already exist).</p>
                                                <h2>
                                                    JavaScript Arithmetic</h2>
                                                <p>
                                                    As with algebra, you can do arithmetic operations with JavaScript variables:</p>
                <div class="code notranslate">
                    <div>
                        <span>y=x-5;</span><br />
                        <span>z=y+5;</span></div>
                </div>
                <p>
                    You will learn more about the operators that can be used in the next chapter of 
                    this tutorial.</p>
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

