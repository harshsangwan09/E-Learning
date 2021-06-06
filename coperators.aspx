<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="coperators.aspx.cs" Inherits="c__variablesdatatype" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Operators"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Operators</h1>
                    <div class="right">
                    </div>
                </div>
                <div class="C_docsubtop">
                    <div class="right">
                    </div>
                </div>
                Once we know of the existence of variables and constants, we can begin to 
                operate with them. For that purpose, C++ integrates operators. Unlike other 
                languages whose operators are mainly keywords, operators in C++ are mostly made 
                of signs that are not part of the alphabet but are available in all keyboards. 
                This makes C++ code shorter and more international, since it relies less on 
                English words, but requires a little of learning effort in the beginning.<br />
                <br />
                You do not have to memorize all the content of this page. Most details are only 
                provided to serve as a later reference in case you need it.
                <br />
                <br />
                <h3>
                    Assignment (=)</h3>
                The assignment operator assigns a value to a variable.<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = 5;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This statement assigns the integer value 5 to the variable <tt>a</tt>. The part 
                at the left of the assignment operator (<tt>=</tt>) is known as the <i>lvalue</i> 
                (left value) and the right one as the <i>rvalue</i> (right value). The lvalue 
                has to be a variable whereas the rvalue can be either a constant, a variable, 
                the result of an operation or any combination of these.<br />
                The most important rule when assigning is the <i>right-to-left</i> rule: The 
                assignment operation always takes place from right to left, and never the other 
                way:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = b;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This statement assigns to variable <tt>a</tt> (the lvalue) the value contained 
                in variable <tt>b</tt> (the rvalue). The value that was stored until this moment 
                in <tt>a</tt> is not considered at all in this operation, and in fact that value 
                is lost.<br />
                <br />
                Consider also that we are only assigning the value of <tt>b</tt> to <tt>a</tt> 
                at the moment of the assignment operation. Therefore a later change of <tt>b</tt> 
                will not affect the new value of <tt>a</tt>.<br />
                <br />
                For example, let us have a look at the following code - I have included the 
                evolution of the content stored in the variables as comments:<br />
                <br />
                <div class="auto">
                    <table class="split">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                4<br />
                                5<br />
                                6<br />
                                7<br />
                                8<br />
                                9<br />
                                10<br />
                                11<br />
                                12<br />
                                13<br />
                                14<br />
                                15<br />
                                16<br />
                                17<br />
                                18<br />
                                19<br />
                                20<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// assignment operator</cite>

<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  <var>int</var> a, b;         <cite>// a:?,  b:?</cite>
  a = 10;           <cite>// a:10, b:?</cite>
  b = 4;            <cite>// a:10, b:4</cite>
  a = b;            <cite>// a:4,  b:4</cite>
  b = 7;            <cite>// a:4,  b:7</cite>

  cout &lt;&lt; <kbd>&quot;a:&quot;</kbd>;
  cout &lt;&lt; a;
  cout &lt;&lt; <kbd>&quot; b:&quot;</kbd>;
  cout &lt;&lt; b;

  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>a:4 b:7</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This code will give us as result that the value contained in <tt>a</tt> is <tt>4</tt> 
                and the one contained in <tt>b</tt> is <tt>7</tt>. Notice how <tt>a</tt> was not 
                affected by the final modification of <tt>b</tt>, even though we declared <tt>a 
                = b</tt> earlier (that is because of the <i>right-to-left rule</i>).<br />
                <br />
                A property that C++ has over other programming languages is that the assignment 
                operation can be used as the rvalue (or part of an rvalue) for another 
                assignment operation. For example:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = 2 + (b = 5);</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                is equivalent to:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code>b = 5;
a = 2 + b;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                that means: first assign <tt>5</tt> to variable <tt>b</tt> and then assign to
                <tt>a</tt> the value <tt>2</tt> plus the result of the previous assignment of
                <tt>b</tt> (i.e. 5), leaving <tt>a</tt> with a final value of <tt>7</tt>.<br />
                <br />
                The following expression is also valid in C++:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = b = c = 5;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                It assigns <tt>5</tt> to the all three variables: <tt>a</tt>, <tt>b</tt> and <tt>
                c</tt>.
                <br />
                <br />
                <h3>
                    Arithmetic operators ( +, -, *, /, % )</h3>
                The five arithmetical operations supported by the C++ language are:
                <br />
                <br />
                <table class="boxed">
                    <tr>
                        <td>
                            +</td>
                        <td>
                            addition</td>
                    </tr>
                    <tr>
                        <td>
                            -</td>
                        <td>
                            subtraction</td>
                    </tr>
                    <tr>
                        <td>
                            *</td>
                        <td>
                            multiplication</td>
                    </tr>
                    <tr>
                        <td>
                            /</td>
                        <td>
                            division</td>
                    </tr>
                    <tr>
                        <td>
                            %</td>
                        <td>
                            modulo</td>
                    </tr>
                </table>
                <br />
                Operations of addition, subtraction, multiplication and division literally 
                correspond with their respective mathematical operators. The only one that you 
                might not be so used to see is <i>modulo</i>; whose operator is the percentage 
                sign (<tt>%</tt>). Modulo is the operation that gives the remainder of a 
                division of two values. For example, if we write:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = 11 % 3;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                the variable <tt>a</tt> will contain the value <tt>2</tt>, since <tt>2</tt> is 
                the remainder from dividing <tt>11</tt> between <tt>3</tt>.<br />
                <br />
                <h3>
                    Compound assignment (+=, -=, *=, /=, %=, &gt;&gt;=, &lt;&lt;=, &amp;=, ^=, |=)</h3>
                <br />
                When we want to modify the value of a variable by performing an operation on the 
                value currently stored in that variable we can use compound assignment 
                operators:<br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            expression</th>
                        <th>
                            is equivalent to</th>
                    </tr>
                    <tr>
                        <td>
                            <tt>value += increase;</tt></td>
                        <td>
                            <tt>value = value + increase;</tt></td>
                    </tr>
                    <tr>
                        <td>
                            <tt>a -= 5;</tt></td>
                        <td>
                            <tt>a = a - 5;</tt></td>
                    </tr>
                    <tr>
                        <td>
                            <tt>a /= b;</tt></td>
                        <td>
                            <tt>a = a / b;</tt></td>
                    </tr>
                    <tr>
                        <td>
                            <tt>price *= units + 1;</tt></td>
                        <td>
                            <tt>price = price * (units + 1);</tt></td>
                    </tr>
                </table>
                <br />
                and the same for all other operators. For example:<br />
                <br />
                <div class="auto">
                    <table class="split">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                4<br />
                                5<br />
                                6<br />
                                7<br />
                                8<br />
                                9<br />
                                10<br />
                                11<br />
                                12<br />
                                13<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// compound assignment operators</cite>

<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  <var>int</var> a, b=3;
  a = b;
  a+=2;             <cite>// equivalent to a=a+2</cite>
  cout &lt;&lt; a;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>5</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <h3>
                    Increase and decrease (++, --)</h3>
                Shortening even more some expressions, the increase operator (<tt>++</tt>) and 
                the decrease operator (<tt>--</tt>) increase or reduce by one the value stored 
                in a variable. They are equivalent to <tt>+=1</tt> and to <tt>-=1</tt>, 
                respectively. Thus:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code>c++;
c+=1;
c=c+1;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                are all equivalent in its functionality: the three of them increase by one the 
                value of c.<br />
                <br />
                In the early C compilers, the three previous expressions probably produced 
                different executable code depending on which one was used. Nowadays, this type 
                of code optimization is generally done automatically by the compiler, thus the 
                three expressions should produce exactly the same executable code.<br />
                <br />
                A characteristic of this operator is that it can be used both as a prefix and as 
                a suffix. That means that it can be written either before the variable 
                identifier (<tt>++a</tt>) or after it (<tt>a++</tt>). Although in simple 
                expressions like <tt>a++</tt> or <tt>++a</tt> both have exactly the same 
                meaning, in other expressions in which the result of the increase or decrease 
                operation is evaluated as a value in an outer expression they may have an 
                important difference in their meaning: In the case that the increase operator is 
                used as a prefix (++a) the value is increased <strong>before</strong> the result 
                of the expression is evaluated and therefore the increased value is considered 
                in the outer expression; in case that it is used as a suffix (<tt>a++</tt>) the 
                value stored in a is increased after being evaluated and therefore the value 
                stored before the increase operation is evaluated in the outer expression. 
                Notice the difference:<br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            Example 1</th>
                        <th>
                            Example 2</th>
                    </tr>
                    <tr>
                        <td class="code">
                            <tt>B=3;<br />
                            A=++B;<br />
                            // A contains 4, B contains 4</tt></td>
                        <td class="code">
                            <tt>B=3;<br />
                            A=B++;<br />
                            // A contains 3, B contains 4</tt></td>
                    </tr>
                </table>
                <br />
                In Example 1, <tt>B</tt> is increased before its value is copied to <tt>A</tt>. 
                While in Example 2, the value of <tt>B</tt> is copied to <tt>A</tt> and then <tt>
                B</tt> is increased.
                <br />
                <br />
                <h3>
                    Relational and equality operators ( ==, !=, &gt;, &lt;, &gt;=, &lt;= )</h3>
                <br />
                In order to evaluate a comparison between two expressions we can use the 
                relational and equality operators. The result of a relational operation is a 
                Boolean value that can only be true or false, according to its Boolean result.<br />
                <br />
                We may want to compare two expressions, for example, to know if they are equal 
                or if one is greater than the other is. Here is a list of the relational and 
                equality operators that can be used in C++:
                <br />
                <br />
                <table class="boxed">
                    <tr>
                        <td>
                            ==</td>
                        <td>
                            Equal to</td>
                    </tr>
                    <tr>
                        <td>
                            !=</td>
                        <td>
                            Not equal to</td>
                    </tr>
                    <tr>
                        <td>
                            &gt;</td>
                        <td>
                            Greater than</td>
                    </tr>
                    <tr>
                        <td>
                            &lt;</td>
                        <td>
                            Less than</td>
                    </tr>
                    <tr>
                        <td>
                            &gt;=</td>
                        <td>
                            Greater than or equal to</td>
                    </tr>
                    <tr>
                        <td>
                            &lt;=</td>
                        <td>
                            Less than or equal to</td>
                    </tr>
                </table>
                <br />
                Here there are some examples:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                4<br />
                                5<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code>(7 == 5)     <cite>// evaluates to false.</cite>
(5 &gt; 4)      <cite>// evaluates to true.</cite>
(3 != 2)     <cite>// evaluates to true.</cite>
(6 &gt;= 6)     <cite>// evaluates to true.</cite>
(5 &lt; 5)      <cite>// evaluates to false. </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Of course, instead of using only numeric constants, we can use any valid 
                expression, including variables. Suppose that <tt>a=2</tt>, <tt>b=3</tt> and <tt>
                c=6</tt>,<br />
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
                                <pre><code>(a == 5)     <cite>// evaluates to false since a is not equal to 5.</cite>
(a*b &gt;= c)   <cite>// evaluates to true since (2*3 &gt;= 6) is true. </cite>
(b+4 &gt; a*c)  <cite>// evaluates to false since (3+4 &gt; 2*6) is false. </cite>
((b=2) == a) <cite>// evaluates to true.  </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Be careful! The operator <tt>=</tt> (one equal sign) is not the same as the 
                operator <tt>==</tt> (two equal signs), the first one is an assignment operator 
                (assigns the value at its right to the variable at its left) and the other one (<tt>==</tt>) 
                is the equality operator that compares whether both expressions in the two sides 
                of it are equal to each other. Thus, in the last expression <tt>((b=2) == a)</tt>, 
                we first assigned the value <tt>2</tt> to <tt>b</tt> and then we compared it to
                <tt>a</tt>, that also stores the value <tt>2</tt>, so the result of the 
                operation is true.<br />
                <br />
                <h3>
                    Logical operators ( !, &amp;&amp;, || )</h3>
                <br />
                The Operator <tt>!</tt> is the C++ operator to perform the Boolean operation 
                NOT, it has only one operand, located at its right, and the only thing that it 
                does is to inverse the value of it, producing false if its operand is true and 
                true if its operand is false. Basically, it returns the opposite Boolean value 
                of evaluating its operand. For example:<br />
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
                                <pre><code>!(5 == 5)    <cite>// evaluates to false because the expression at its right (5 == 5) is true. </cite>
!(6 &lt;= 4)    <cite>// evaluates to true because (6 &lt;= 4) would be false. </cite>
!<var>true</var>        <cite>// evaluates to false</cite>
!<var>false</var>       <cite>// evaluates to true.  </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The logical operators <tt>&amp;&amp;</tt> and <tt>||</tt> are used when evaluating two 
                expressions to obtain a single relational result. The operator <tt>&amp;&amp;</tt> 
                corresponds with Boolean logical operation AND. This operation results true if 
                both its two operands are true, and false otherwise. The following panel shows 
                the result of operator <tt>&amp;&amp;</tt> evaluating the expression <tt>a &amp;&amp; b</tt>:<br />
                <br />
                <b>&amp;&amp; OPERATOR</b>
                <table class="boxed">
                    <tr>
                        <th>
                            a</th>
                        <th>
                            b</th>
                        <th>
                            a &amp;&amp; b</th>
                    </tr>
                    <tr>
                        <td>
                            true</td>
                        <td>
                            true</td>
                        <td>
                            true</td>
                    </tr>
                    <tr>
                        <td>
                            true</td>
                        <td>
                            false</td>
                        <td>
                            false</td>
                    </tr>
                    <tr>
                        <td>
                            false</td>
                        <td>
                            true</td>
                        <td>
                            false</td>
                    </tr>
                    <tr>
                        <td>
                            false</td>
                        <td>
                            false</td>
                        <td>
                            false</td>
                    </tr>
                </table>
                <br />
                The operator <tt>||</tt> corresponds with Boolean logical operation OR. This 
                operation results true if either one of its two operands is true, thus being 
                false only when both operands are false themselves. Here are the possible 
                results of <tt>a || b</tt>:<br />
                <br />
                <b>|| OPERATOR</b>
                <table class="boxed">
                    <tr>
                        <th>
                            a</th>
                        <th>
                            b</th>
                        <th>
                            a || b</th>
                    </tr>
                    <tr>
                        <td>
                            true</td>
                        <td>
                            true</td>
                        <td>
                            true</td>
                    </tr>
                    <tr>
                        <td>
                            true</td>
                        <td>
                            false</td>
                        <td>
                            true</td>
                    </tr>
                    <tr>
                        <td>
                            false</td>
                        <td>
                            true</td>
                        <td>
                            true</td>
                    </tr>
                    <tr>
                        <td>
                            false</td>
                        <td>
                            false</td>
                        <td>
                            false</td>
                    </tr>
                </table>
                <br />
                For example:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code>( (5 == 5) &amp;&amp; (3 &gt; 6) )  <cite>// evaluates to false ( true &amp;&amp; false ).</cite>
( (5 == 5) || (3 &gt; 6) )  <cite>// evaluates to true ( true || false ). </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                When using the logical operators, C++ only evaluates what is necessary from left 
                to right to come up with the combined relational result, ignoring the rest. 
                Therefore, in this last example (<tt>(5==5)||(3&gt;6)</tt>), C++ would evaluate 
                first whether <tt>5==5</tt> is true, and if so, it would never check whether <tt>
                3&gt;6</tt> is true or not. This is known as short-circuit evaluation, and works 
                like this for these operators:<br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            operator</th>
                        <th>
                            short-circuit</th>
                    </tr>
                    <tr>
                        <td>
                            <tt>&amp;&amp;</tt></td>
                        <td>
                            if the left-hand side expression is false, the combined result is false 
                            (right-hand side expression not evaluated).</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>||</tt></td>
                        <td>
                            if the left-hand side expression is true, the combined result is true 
                            (right-hand side expression not evaluated).</td>
                    </tr>
                </table>
                <br />
                This is mostly important when the right-hand expression has side effects, such 
                as altering values:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>if</var> ((i&lt;10)&amp;&amp;(++i&lt;n)) { <cite>/*...*/</cite> }</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This combined conditional expression increases <tt>i</tt> by one, but only if 
                the condition on the left of <tt>&amp;&amp;</tt> is true, since otherwise the right-hand 
                expression (<tt>++i&lt;n</tt>) is never evaluated.<br />
                <br />
                <h3>
                    Conditional operator ( ? )</h3>
                <br />
                The conditional operator evaluates an expression returning a value if that 
                expression is true and a different one if the expression is evaluated as false. 
                Its format is:
                <br />
                <br />
                <tt>condition ? result1 : result2<br />
                </tt>
                <br />
                If <tt>condition</tt> is true the expression will return <tt>result1</tt>, if it 
                is not it will return <tt>result2</tt>.<br />
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
                                <pre><code>7==5 ? 4 : 3     <cite>// returns 3, since 7 is not equal to 5.</cite>
7==5+2 ? 4 : 3   <cite>// returns 4, since 7 is equal to 5+2.</cite>
5&gt;3 ? a : b      <cite>// returns the value of a, since 5 is greater than 3.</cite>
a&gt;b ? a : b      <cite>// returns whichever is greater, a or b. </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <div class="auto">
                    <table class="split">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                4<br />
                                5<br />
                                6<br />
                                7<br />
                                8<br />
                                9<br />
                                10<br />
                                11<br />
                                12<br />
                                13<br />
                                14<br />
                                15<br />
                                16<br />
                                17<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// conditional operator</cite>

<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  <var>int</var> a,b,c;

  a=2;
  b=7;
  c = (a&gt;b) ? a : b;

  cout &lt;&lt; c;

  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>7</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this example <tt>a</tt> was <tt>2</tt> and <tt>b</tt> was <tt>7</tt>, so the 
                expression being evaluated (<tt>a&gt;b</tt>) was not true, thus the first value 
                specified after the question mark was discarded in favor of the second value 
                (the one after the colon) which was <tt>b</tt>, with a value of <tt>7</tt>.<br />
                <br />
                <h3>
                    Comma operator ( , )</h3>
                The comma operator (<tt>,</tt>) is used to separate two or more expressions that 
                are included where only one expression is expected. When the set of expressions 
                has to be evaluated for a value, only the rightmost expression is considered.<br />
                <br />
                For example, the following code:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = (b=3, b+2);</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Would first assign the value <tt>3</tt> to <tt>b</tt>, and then assign <tt>b+2</tt> 
                to variable <tt>a</tt>. So, at the end, variable <tt>a</tt> would contain the 
                value <tt>5</tt> while variable <tt>b</tt> would contain value <tt>3</tt>.<br />
                <br />
                <h3>
                    Bitwise Operators ( &amp;, |, ^, ~, &lt;&lt;, &gt;&gt; )</h3>
                <br />
                Bitwise operators modify variables considering the bit patterns that represent 
                the values they store.<br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            operator</th>
                        <th>
                            asm equivalent</th>
                        <th>
                            description</th>
                    </tr>
                    <tr>
                        <td>
                            <tt>&amp;</tt></td>
                        <td>
                            AND</td>
                        <td>
                            Bitwise AND</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>|</tt></td>
                        <td>
                            OR</td>
                        <td>
                            Bitwise Inclusive OR</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>^</tt></td>
                        <td>
                            XOR</td>
                        <td>
                            Bitwise Exclusive OR</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>~</tt></td>
                        <td>
                            NOT</td>
                        <td>
                            Unary complement (bit inversion)</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>&lt;&lt;</tt></td>
                        <td>
                            SHL</td>
                        <td>
                            Shift Left</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>&gt;&gt;</tt></td>
                        <td>
                            SHR</td>
                        <td>
                            Shift Right</td>
                    </tr>
                </table>
                <br />
                <h3>
                    Explicit type casting operator</h3>
                Type casting operators allow you to convert a datum of a given type to another. 
                There are several ways to do this in C++. The simplest one, which has been 
                inherited from the C language, is to precede the expression to be converted by 
                the new type enclosed between parentheses (<tt>()</tt>):<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                3<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><var>int</var> i;
<var>float</var> f = 3.14;
i = (<var>int</var>) f;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The previous code converts the float number <tt>3.14</tt> to an integer value (<tt>3</tt>), 
                the remainder is lost. Here, the typecasting operator was <tt>(int)</tt>. 
                Another way to do the same thing in C++ is using the functional notation: 
                preceding the expression to be converted by the type and enclosing the 
                expression between parentheses:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>i = <var>int</var> ( f );</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Both ways of type casting are valid in C++.<br />
                <br />
                <h3>
                    sizeof()</h3>
                This operator accepts one parameter, which can be either a type or a variable 
                itself and returns the size in bytes of that type or object:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = <var>sizeof</var> (<var>char</var>);</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This will assign the value <tt>1</tt> to a because <tt>char</tt> is a one-byte 
                long type.<br />
                The value returned by <tt>sizeof</tt> is a constant, so it is always determined 
                before program execution.<br />
                <br />
                <h3>
                    Other operators</h3>
                Later in these tutorials, we will see a few more operators, like the ones 
                referring to pointers or the specifics for object-oriented programming. Each one 
                is treated in its respective section.<br />
                <br />
                <h3>
                    Precedence of operators</h3>
                When writing complex expressions with several operands, we may have some doubts 
                about which operand is evaluated first and which later. For example, in this 
                expression:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = 5 + 7 % 2</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                we may doubt if it really means:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>1<br />
                                2<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code>a = 5 + (7 % 2)    <cite>// with a result of 6, or</cite>
a = (5 + 7) % 2    <cite>// with a result of 0 </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The correct answer is the first of the two expressions, with a result of <tt>6</tt>. 
                There is an established order with the priority of each operator, and not only 
                the arithmetic ones (those whose preference come from mathematics) but for all 
                the operators which can appear in C++. From greatest to lowest priority, the 
                priority order is as follows:
                <br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            Level</th>
                        <th>
                            Operator</th>
                        <th>
                            Description</th>
                        <th>
                            Grouping</th>
                    </tr>
                    <tr>
                        <td>
                            1</td>
                        <td>
                            <tt>::</tt></td>
                        <td>
                            scope</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            2</td>
                        <td>
                            <tt>() [] . -&gt; ++ -- dynamic_cast static_cast reinterpret_cast const_cast typeid</tt></td>
                        <td>
                            postfix</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td rowspan="3">
                            3</td>
                        <td>
                            <tt>++ -- ~ ! sizeof new delete</tt></td>
                        <td>
                            unary (prefix)</td>
                        <td rowspan="3">
                            Right-to-left</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>* &amp;</tt></td>
                        <td>
                            indirection and reference (pointers)</td>
                    </tr>
                    <tr>
                        <td>
                            <tt>+ -</tt></td>
                        <td>
                            unary sign operator</td>
                    </tr>
                    <tr>
                        <td>
                            4</td>
                        <td>
                            <tt>(type)</tt></td>
                        <td>
                            type casting</td>
                        <td>
                            Right-to-left</td>
                    </tr>
                    <tr>
                        <td>
                            5</td>
                        <td>
                            <tt>.* -&gt;*</tt></td>
                        <td>
                            pointer-to-member</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            6</td>
                        <td>
                            <tt>* / %</tt></td>
                        <td>
                            multiplicative</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            7</td>
                        <td>
                            <tt>+ -</tt></td>
                        <td>
                            additive</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            8</td>
                        <td>
                            <tt>&lt;&lt; &gt;&gt;</tt></td>
                        <td>
                            shift</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            9</td>
                        <td>
                            <tt>&lt; &gt; &lt;= &gt;=</tt></td>
                        <td>
                            relational</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            10</td>
                        <td>
                            <tt>== !=</tt></td>
                        <td>
                            equality</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            11</td>
                        <td>
                            <tt>&amp;</tt></td>
                        <td>
                            bitwise AND</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            12</td>
                        <td>
                            <tt>^</tt></td>
                        <td>
                            bitwise XOR</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            13</td>
                        <td>
                            <tt>|</tt></td>
                        <td>
                            bitwise OR</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            14</td>
                        <td>
                            <tt>&amp;&amp;</tt></td>
                        <td>
                            logical AND</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            15</td>
                        <td>
                            <tt>||</tt></td>
                        <td>
                            logical OR</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                    <tr>
                        <td>
                            16</td>
                        <td>
                            <tt>?:</tt></td>
                        <td>
                            conditional</td>
                        <td>
                            Right-to-left</td>
                    </tr>
                    <tr>
                        <td>
                            17</td>
                        <td>
                            <tt>= *= /= %= += -= &gt;&gt;= &lt;&lt;= &amp;= ^= |=</tt></td>
                        <td>
                            assignment</td>
                        <td>
                            Right-to-left</td>
                    </tr>
                    <tr>
                        <td>
                            18</td>
                        <td>
                            <tt>,</tt></td>
                        <td>
                            comma</td>
                        <td>
                            Left-to-right</td>
                    </tr>
                </table>
                <br />
                Grouping defines the precedence order in which operators are evaluated in the 
                case that there are several operators of the same level in an expression.<br />
                <br />
                All these precedence levels for operators can be manipulated or become more 
                legible by removing possible ambiguities using parentheses signs <tt>(</tt> and
                <tt>)</tt>, as in this example:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = 5 + 7 % 2;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                might be written either as:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = 5 + (7 % 2);</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                or<br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = (5 + 7) % 2;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                depending on the operation that we want to perform.<br />
                <br />
                So if you want to write complicated expressions and you are not completely sure 
                of the precedence levels, always include parentheses. It will also make your 
                code easier to read.</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

