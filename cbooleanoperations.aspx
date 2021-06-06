<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="cbooleanoperations.aspx.cs" Inherits="c__booleanoperations" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Boolean Operations"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Boolean Operations</h1>
                </div>
                A <i>bit</i> is the minimum amount of information that we can imagine, since it 
                only stores either value 1 or 0, which represents either YES or NO, activated or 
                deactivated, true or false, etc... that is: two possible states each one 
                opposite to the other, without possibility of any shades. We are going to 
                consider that the two possible values of a bit are 0 and 1.<br />
                <br />
                Several operations can be performed with bits, either in conjunction with other 
                bits or themselves alone. These operations receive the name of <tt>boolean 
                operations</tt>, a word that comes from the name of one of the mathematicians 
                who contributed the more to this field: George Boole (1815-1864).
                <br />
                <br />
                All these operations have an established behavior and all of them can be applied 
                to any bit no matter which value they contain (either 0 or 1). Next you have a 
                list of the basic boolean operations and a table with the behavior of that 
                operation with every possible combination of bits.
                <br />
                <br />
                <h3>
                    AND</h3>
                This operation is performed between two bits, which we will call <tt>a</tt> and
                <tt>b</tt>. The result of applying this AND operation is 1 if both <tt>a</tt> 
                and <tt>b</tt> are equal to 1, and 0 in all other cases (i.e., if one or both of 
                the variables is 0).<br />
                <br />
                <b>AND (&amp;)</b>
                <br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            a</th>
                        <th>
                            b</th>
                        <th>
                            a&amp;b</th>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            0</td>
                        <td>
                            0</td>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            1</td>
                        <td>
                            0</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            0</td>
                        <td>
                            0</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            1</td>
                        <td>
                            1</td>
                    </tr>
                </table>
                <br />
                <h3>
                    OR</h3>
                This operation is performed between two bits (<tt>a</tt> and <tt>b</tt>). The 
                result is 1 if either one of the two bits is 1, or if both are 1. If none is 
                equal to 1 the result is 0.<br />
                <br />
                <b>OR (|)</b>
                <table class="boxed">
                    <tr>
                        <th>
                            a</th>
                        <th>
                            b</th>
                        <th>
                            a|b</th>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            0</td>
                        <td>
                            0</td>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            1</td>
                        <td>
                            1</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            0</td>
                        <td>
                            1</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            1</td>
                        <td>
                            1</td>
                    </tr>
                </table>
                <br />
                <h3>
                    XOR (Exclusive Or)</h3>
                This operation is performed between two bits (<tt>a</tt> and <tt>b</tt>). The 
                result is 1 if either one of the two bits is 1, but not in the case that both 
                are. There for, if neither or both of them are equal to 1 the result is 0.<br />
                <br />
                <b>XOR (^)</b>
                <table class="boxed">
                    <tr>
                        <th>
                            a</th>
                        <th>
                            b</th>
                        <th>
                            a^b</th>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            0</td>
                        <td>
                            0</td>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            1</td>
                        <td>
                            1</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            0</td>
                        <td>
                            1</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            1</td>
                        <td>
                            0</td>
                    </tr>
                </table>
                <br />
                <h3>
                    NOT</h3>
                This operation is performed on a single bit. Its result is the inversion of the 
                actual value of the bit: if it was set to 1 it becomes 0, and if it was 0 it 
                becomes 1:
                <br />
                <br />
                <b>NOT (~)</b>
                <table class="boxed">
                    <tr>
                        <th>
                            a</th>
                        <th>
                            ~a</th>
                    </tr>
                    <tr>
                        <td>
                            0</td>
                        <td>
                            1</td>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            0</td>
                    </tr>
                </table>
                <br />
                These are the 4 basic boolean operations (AND, OR, XOR and NOT). Combining these 
                operations we can obtain any possible result from two bits.<br />
                <br />
                In C++, these operators can be used with variables of any integer data type; the 
                boolean operation is performed to all of the bits of each variable involved. For 
                example, supposing two variables: <tt>a</tt> and <tt>b</tt>, both of type <tt>
                unsigned char</tt>, where <tt>a</tt> contains 195 (11000011 in binary) and <tt>b</tt> 
                contains 87 (or 01010111 in binary). If we write the following code:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                4<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><var>unsigned</var> <var>char</var> a=195;
<var>unsigned</var> <var>char</var> b=87;
<var>unsigned</var> <var>char</var> c;
c=a&amp;b;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                That means, that we conducted a bitwise AND operation between <tt>a</tt> and <tt>
                b</tt>. The operation is performed between the bits of the two variables that 
                are located at the same position: The rightmost bit of <tt>c</tt> will contain 
                the result of conducting the AND operation between the rightmost bits of <tt>a</tt> 
                and <tt>b</tt>:<br />
                <br />
&nbsp;<br />
                The same operation is also performed between the second bits of both variables, 
                and the third, and so on, until the operation is performed between all bits of 
                both variables (each one only with the same bit of the other variable).<br />
                <br />
                The final binary value of <tt>c</tt> is 01000011, that is 67 in decimal numbers. 
                So <tt>195&amp;87</tt> is equal to <tt>67</tt>.</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

