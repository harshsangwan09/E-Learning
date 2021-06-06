<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="cnamespaces.aspx.cs" Inherits="c__namespace" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Namespaces"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Namespaces</h1>
                                                </div>
                                                Namespaces allow to group entities like classes, objects and functions under a 
                                                name. This way the global scope can be divided in &quot;sub-scopes&quot;, each one with 
                                                its own name.<br />
                                                <br />
                                                The format of namespaces is:<br />
                <br />
                <tt>namespace identifier<br />
                {<br />
                entities<br />
                }<br />
                </tt>
                <br />
                Where <tt>identifier</tt> is any valid identifier and <tt>entities</tt> is the 
                set of classes, objects and functions that are included within the namespace. 
                For example:<br />
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
                                <pre><code><var>namespace</var> myNamespace
{
  <var>int</var> a, b;
}</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this case, the variables <tt>a</tt> and <tt>b</tt> are normal variables 
                declared within a namespace called <tt>myNamespace</tt>. In order to access 
                these variables from outside the <tt>myNamespace</tt> namespace we have to use 
                the scope operator <tt>::</tt>. For example, to access the previous variables 
                from outside <tt>myNamespace</tt> we can write:<br />
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
                                <pre><code>myNamespace::a
myNamespace::b </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The functionality of namespaces is especially useful in the case that there is a 
                possibility that a global object or function uses the same identifier as another 
                one, causing redefinition errors. For example:<br />
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
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// namespaces</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>namespace</var> first
{
  <var>int</var> var = 5;
}

<var>namespace</var> second
{
  <var>double</var> var = 3.1416;
}

<var>int</var> main () {
  cout &lt;&lt; first::var &lt;&lt; endl;
  cout &lt;&lt; second::var &lt;&lt; endl;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>5
3.1416</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this case, there are two global variables with the same name: <tt>var</tt>. 
                One is defined within the namespace <tt>first</tt> and the other one in <tt>
                second</tt>. No redefinition errors happen thanks to namespaces.<br />
                <br />
                <h3>
                    using</h3>
                The keyword <tt>using</tt> is used to introduce a name from a namespace into the 
                current declarative region. For example:<br />
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
                                25<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// using</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>namespace</var> first
{
  <var>int</var> x = 5;
  <var>int</var> y = 10;
}

<var>namespace</var> second
{
  <var>double</var> x = 3.1416;
  <var>double</var> y = 2.7183;
}

<var>int</var> main () {
  <var>using</var> first::x;
  <var>using</var> second::y;
  cout &lt;&lt; x &lt;&lt; endl;
  cout &lt;&lt; y &lt;&lt; endl;
  cout &lt;&lt; first::y &lt;&lt; endl;
  cout &lt;&lt; second::x &lt;&lt; endl;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>5
2.7183
10
3.1416</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Notice how in this code, <tt>x</tt> (without any name qualifier) refers to <tt>
                first::x</tt> whereas <tt>y</tt> refers to <tt>second::y</tt>, exactly as our
                <tt>using</tt> declarations have specified. We still have access to <tt>first::y</tt> 
                and <tt>second::x</tt> using their fully qualified names.<br />
                <br />
                The keyword using can also be used as a directive to introduce an entire 
                namespace:<br />
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
                                <pre><code><cite>// using</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>namespace</var> first
{
  <var>int</var> x = 5;
  <var>int</var> y = 10;
}

<var>namespace</var> second
{
  <var>double</var> x = 3.1416;
  <var>double</var> y = 2.7183;
}

<var>int</var> main () {
  <var>using</var> <var>namespace</var> first;
  cout &lt;&lt; x &lt;&lt; endl;
  cout &lt;&lt; y &lt;&lt; endl;
  cout &lt;&lt; second::x &lt;&lt; endl;
  cout &lt;&lt; second::y &lt;&lt; endl;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>5
10
3.1416
2.7183</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this case, since we have declared that we were <tt>using namespace first</tt>, 
                all direct uses of <tt>x</tt> and <tt>y</tt> without name qualifiers were 
                referring to their declarations in <tt>namespace first</tt>.<br />
                <br />
                <tt>using</tt> and <tt>using namespace</tt> have validity only in the same block 
                in which they are stated or in the entire code if they are used directly in the 
                global scope. For example, if we had the intention to first use the objects of 
                one namespace and then those of another one, we could do something like:<br />
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
                                25<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// using namespace example</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>namespace</var> first
{
  <var>int</var> x = 5;
}

<var>namespace</var> second
{
  <var>double</var> x = 3.1416;
}

<var>int</var> main () {
  {
    <var>using</var> <var>namespace</var> first;
    cout &lt;&lt; x &lt;&lt; endl;
  }
  {
    <var>using</var> <var>namespace</var> second;
    cout &lt;&lt; x &lt;&lt; endl;
  }
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>5
3.1416</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <h3>
                    Namespace alias</h3>
                <br />
                We can declare alternate names for existing namespaces according to the 
                following format:<br />
                <br />
                <tt>namespace new_name = current_name;<br />
                </tt>
                <br />
                <h3>
                    Namespace std</h3>
                All the files in the C++ standard library declare all of its entities within the
                <tt>std</tt> namespace. That is why we have generally included the <tt>using 
                namespace std;</tt> statement in all programs that used any entity defined in
                <tt>iostream</tt>.</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

