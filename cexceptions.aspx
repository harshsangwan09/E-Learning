<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="cexceptions.aspx.cs" Inherits="c__exceptions" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Exceptions"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Exceptions</h1>
                </div>
                Exceptions provide a way to react to exceptional circumstances (like runtime 
                errors) in our program by transferring control to special functions called <i>
                handlers</i>.<br />
                <br />
                To catch exceptions we must place a portion of code under exception inspection. 
                This is done by enclosing that portion of code in a <i>try block</i>. When an 
                exceptional circumstance arises within that block, an exception is thrown that 
                transfers the control to the exception handler. If no exception is thrown, the 
                code continues normally and all handlers are ignored.<br />
                <br />
                An exception is thrown by using the throw keyword from inside the try block. 
                Exception handlers are declared with the keyword <tt>catch</tt>, which must be 
                placed immediately after the try block:<br />
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
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// exceptions</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main () {
  <var>try</var>
  {
    <var>throw</var> 20;
  }
  <var>catch</var> (<var>int</var> e)
  {
    cout &lt;&lt; <kbd>&quot;An exception occurred. Exception Nr. &quot;</kbd> &lt;&lt; e &lt;&lt; endl;
  }
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>An exception occurred. Exception Nr. 20</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The code under exception handling is enclosed in a <tt>try</tt> block. In this 
                example this code simply throws an exception:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>throw</var> 20;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                A throw expression accepts one parameter (in this case the integer value <tt>20</tt>), 
                which is passed as an argument to the exception handler.<br />
                <br />
                The exception handler is declared with the <tt>catch</tt> keyword. As you can 
                see, it follows immediately the closing brace of the <tt>try</tt> block. The 
                catch format is similar to a regular function that always has at least one 
                parameter. The type of this parameter is very important, since the type of the 
                argument passed by the throw expression is checked against it, and only in the 
                case they match, the exception is caught.<br />
                <br />
                We can chain multiple handlers (catch expressions), each one with a different 
                parameter type. Only the handler that matches its type with the argument 
                specified in the throw statement is executed.<br />
                <br />
                If we use an ellipsis (<tt>...</tt>) as the parameter of <tt>catch</tt>, that 
                handler will catch any exception no matter what the type of the <tt>throw</tt> 
                exception is. This can be used as a default handler that catches all exceptions 
                not caught by other handlers if it is specified at last:<br />
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
                                6<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><var>try</var> {
  <cite>// code here</cite>
}
<var>catch</var> (<var>int</var> param) { cout &lt;&lt; <kbd>&quot;int exception&quot;</kbd>; }
<var>catch</var> (<var>char</var> param) { cout &lt;&lt; <kbd>&quot;char exception&quot;</kbd>; }
<var>catch</var> (...) { cout &lt;&lt; <kbd>&quot;default exception&quot;</kbd>; }</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this case the last handler would catch any exception thrown with any 
                parameter that is neither an <tt>int</tt> nor a <tt>char</tt>.<br />
                <br />
                After an exception has been handled the program execution resumes after the <tt>
                try-catch</tt> block, not after the <tt>throw</tt> statement!.<br />
                <br />
                It is also possible to nest <tt>try-catch</tt> blocks within more external <tt>
                try</tt> blocks. In these cases, we have the possibility that an internal <tt>
                catch</tt> block forwards the exception to its external level. This is done with 
                the expression <tt>throw;</tt> with no arguments. For example:
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
                                5<br />
                                6<br />
                                7<br />
                                8<br />
                                9<br />
                                10<br />
                                11<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><var>try</var> {
  <var>try</var> {
      <cite>// code here</cite>
  }
  <var>catch</var> (<var>int</var> n) {
      <var>throw</var>;
  }
}
<var>catch</var> (...) {
  cout &lt;&lt; <kbd>&quot;Exception occurred&quot;</kbd>;
}</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <h3>
                    Exception specifications</h3>
                <br />
                When declaring a function we can limit the exception type it might directly or 
                indirectly throw by appending a <tt>throw</tt> suffix to the function 
                declaration:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>float</var> myfunction (<var>char</var> param) <var>throw</var> (<var>int</var>);</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This declares a function called <tt>myfunction</tt> which takes one argument of 
                type <tt>char</tt> and returns an element of type <tt>float</tt>. The only 
                exception that this function might throw is an exception of type <tt>int</tt>. 
                If it throws an exception with a different type, either directly or indirectly, 
                it cannot be caught by a regular <tt>int</tt>-type handler.<br />
                <br />
                If this <tt>throw</tt> specifier is left empty with no type, this means the 
                function is not allowed to throw exceptions. Functions with no <tt>throw</tt> 
                specifier (regular functions) are allowed to throw exceptions with any type:<br />
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
                                <pre><code><var>int</var> myfunction (<var>int</var> param) <var>throw</var>(); <cite>// no exceptions allowed</cite>
<var>int</var> myfunction (<var>int</var> param);         <cite>// all exceptions allowed </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <h3>
                    Standard exceptions</h3>
                The C++ Standard library provides a base class specifically designed to declare 
                objects to be thrown as exceptions. It is called <tt>exception</tt> and is 
                defined in the <tt>&lt;exception&gt;</tt> header file under the <tt>namespace std</tt>. 
                This class has the usual default and copy constructors, operators and 
                destructors, plus an additional virtual member function called <tt>what</tt> 
                that returns a null-terminated character sequence (<tt>char *</tt>) and that can 
                be overwritten in derived classes to contain some sort of description of the 
                exception.<br />
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
                                21<br />
                                22<br />
                                23<br />
                                24<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// standard exceptions</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<dfn>#include &lt;exception&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>class</var> myexception: <var>public</var> exception
{
  <var>virtual</var> <var>const</var> <var>char</var>* what() <var>const</var> <var>throw</var>()
  {
    <var>return</var> <kbd>&quot;My exception happened&quot;</kbd>;
  }
} myex;

<var>int</var> main () {
  <var>try</var>
  {
    <var>throw</var> myex;
  }
  <var>catch</var> (exception&amp; e)
  {
    cout &lt;&lt; e.what() &lt;&lt; endl;
  }
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>My exception happened.</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                We have placed a handler that catches exception objects by reference (notice the 
                ampersand <tt>&amp;</tt> after the type), therefore this catches also classes 
                derived from <tt>exception</tt>, like our <tt>myex</tt> object of class <tt>
                myexception</tt>.<br />
                <br />
                All exceptions thrown by components of the C++ Standard library throw exceptions 
                derived from this <tt>std::exception</tt> class. These are:<br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            exception</th>
                        <th>
                            description</th>
                    </tr>
                    <tr>
                        <td>
                            bad_alloc</td>
                        <td>
                            thrown by new on allocation failure</td>
                    </tr>
                    <tr>
                        <td>
                            bad_cast</td>
                        <td>
                            thrown by dynamic_cast when fails with a referenced type</td>
                    </tr>
                    <tr>
                        <td>
                            bad_exception</td>
                        <td>
                            thrown when an exception type doesn&#39;t match any catch</td>
                    </tr>
                    <tr>
                        <td>
                            bad_typeid</td>
                        <td>
                            thrown by typeid</td>
                    </tr>
                    <tr>
                        <td>
                            ios_base::failure</td>
                        <td>
                            thrown by functions in the iostream library</td>
                    </tr>
                </table>
                <br />
                For example, if we use the operator <tt>new</tt> and the memory cannot be 
                allocated, an exception of type <tt>bad_alloc</tt> is thrown:<br />
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
                                6<br />
                                7<br />
                                8<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><var>try</var>
{
  <var>int</var> * myarray= <var>new</var> <var>int</var>[1000];
}
<var>catch</var> (bad_alloc&amp;)
{
  cout &lt;&lt; <kbd>&quot;Error allocating memory.&quot;</kbd> &lt;&lt; endl;
}</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                It is recommended to include all dynamic memory allocations within a try block 
                that catches this type of exception to perform a clean action instead of an 
                abnormal program termination, which is what happens when this type of exception 
                is thrown and not caught. If you want to force a <tt>bad_alloc</tt> exception to 
                see it in action, you can try to allocate a huge array; On my system, trying to 
                allocate 1 billion <tt>int</tt>s threw a <tt>bad_alloc</tt> exception.<br />
                <br />
                Because <tt>bad_alloc</tt> is derived from the standard base class <tt>exception</tt>, 
                we can handle that same exception by catching references to the <tt>exception</tt> 
                class:<br />
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
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// bad_alloc standard exception</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<dfn>#include &lt;exception&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main () {
  <var>try</var>
  {
    <var>int</var>* myarray= <var>new</var> <var>int</var>[1000];
  }
  <var>catch</var> (exception&amp; e)
  {
    cout &lt;&lt; <kbd>&quot;Standard exception: &quot;</kbd> &lt;&lt; e.what() &lt;&lt; endl;
  }
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp> </samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

