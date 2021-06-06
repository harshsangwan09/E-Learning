<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="cbasicinputoutput.aspx.cs" Inherits="c__basicinputoutput" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Basic Input Output"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Basic Input/Output</h1>
                    <div class="right">
                    </div>
                </div>
                <div class="C_docsubtop">
                    <div class="right">
                    </div>
                </div>
                Until now, the example programs of previous sections provided very little 
                interaction with the user, if any at all. Using the standard input and output 
                library, we will be able to interact with the user by printing messages on the 
                screen and getting the user&#39;s input from the keyboard.<br />
                <br />
                C++ uses a convenient abstraction called <i>streams</i> to perform input and 
                output operations in sequential media such as the screen or the keyboard. A 
                stream is an object where a program can either insert or extract characters 
                to/from it. We do not really need to care about many specifications about the 
                physical media associated with the stream - we only need to know it will accept 
                or provide characters sequentially.<br />
                <br />
                The standard C++ library includes the header file <tt>iostream</tt>, where the 
                standard input and output stream objects are declared.<br />
                <br />
                <a name="cout"></a>
                <h3>
                    Standard Output (cout)</h3>
                By default, the standard output of a program is the screen, and the C++ stream 
                object defined to access it is <tt>cout</tt>.<br />
                <br />
                <tt>cout</tt> is used in conjunction with the <i>insertion operator</i>, which 
                is written as <tt>&lt;&lt;</tt> (two &quot;less than&quot; signs).<br />
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
                                <pre><code>cout &lt;&lt; <kbd>&quot;Output sentence&quot;</kbd>; <cite>// prints Output sentence on screen</cite>
cout &lt;&lt; 120;               <cite>// prints number 120 on screen</cite>
cout &lt;&lt; x;                 <cite>// prints the content of x on screen </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The <tt>&lt;&lt;</tt> operator inserts the data that follows it into the stream 
                preceding it. In the examples above it inserted the constant string <tt>Output 
                sentence</tt>, the numerical constant <tt>120</tt> and variable <tt>x</tt> into 
                the standard output stream <tt>cout</tt>. Notice that the sentence in the first 
                instruction is enclosed between double quotes (<tt>&quot;</tt>) because it is a 
                constant string of characters. Whenever we want to use constant strings of 
                characters we must enclose them between double quotes (<tt>&quot;</tt>) so that they 
                can be clearly distinguished from variable names. For example, these two 
                sentences have very different results:<br />
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
                                <pre><code>cout &lt;&lt; <kbd>&quot;Hello&quot;</kbd>;  <cite>// prints Hello</cite>
cout &lt;&lt; Hello;    <cite>// prints the content of Hello variable </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The insertion operator (<tt>&lt;&lt;</tt>) may be used more than once in a single 
                statement:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>cout &lt;&lt; <kbd>&quot;Hello, &quot;</kbd> &lt;&lt; <kbd>&quot;I am &quot;</kbd> &lt;&lt; <kbd>&quot;a C++ statement&quot;</kbd>;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This last statement would print the message <tt>Hello, I am a C++ statement</tt> 
                on the screen. The utility of repeating the insertion operator (<tt>&lt;&lt;</tt>) is 
                demonstrated when we want to print out a combination of variables and constants 
                or more than one variable:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>cout &lt;&lt; <kbd>&quot;Hello, I am &quot;</kbd> &lt;&lt; age &lt;&lt; <kbd>&quot; years old and my zipcode is &quot;</kbd> &lt;&lt; zipcode;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                If we assume the <tt>age</tt> variable to contain the value <tt>24</tt> and the
                <tt>zipcode</tt> variable to contain <tt>90064</tt> the output of the previous 
                statement would be:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>Hello, I am 24 years old and my zipcode is 90064 </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                It is important to notice that <tt>cout</tt> does not add a line break after its 
                output unless we explicitly indicate it, therefore, the following statements:<br />
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
                                <pre><code>cout &lt;&lt; <kbd>&quot;This is a sentence.&quot;</kbd>;
cout &lt;&lt; <kbd>&quot;This is another sentence.&quot;</kbd>; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                will be shown on the screen one following the other without any line break 
                between them:<br />
                <br />
                <tt>This is a sentence.This is another sentence.
                <br />
                </tt>
                <br />
                even though we had written them in two different insertions into <tt>cout</tt>. 
                In order to perform a line break on the output we must explicitly insert a 
                new-line character into <tt>cout</tt>. In C++ a new-line character can be 
                specified as <tt>\n</tt> (backslash, n):<br />
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
                                <pre><code>cout &lt;&lt; <kbd>&quot;First sentence.\n&quot;</kbd>;
cout &lt;&lt; <kbd>&quot;Second sentence.\nThird sentence.&quot;</kbd>; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This produces the following output:
                <br />
                <br />
                <tt>First sentence.<br />
                Second sentence.<br />
                Third sentence.<br />
                </tt>
                <br />
                Additionally, to add a new-line, you may also use the <tt>endl</tt> manipulator. 
                For example:
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
                                <pre><code>cout &lt;&lt; <kbd>&quot;First sentence.&quot;</kbd> &lt;&lt; endl;
cout &lt;&lt; <kbd>&quot;Second sentence.&quot;</kbd> &lt;&lt; endl; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                would print out:
                <br />
                <br />
                <tt>First sentence.<br />
                Second sentence.
                <br />
                </tt>
                <br />
                The <tt>endl</tt> manipulator produces a newline character, exactly as the 
                insertion of <tt>&#39;\n&#39;</tt> does, but it also has an additional behavior when it 
                is used with buffered streams: the buffer is flushed. Anyway, <tt>cout</tt> will 
                be an unbuffered stream in most cases, so you can generally use both the <tt>\n</tt> 
                escape character and the <tt>endl</tt> manipulator in order to specify a new 
                line without any difference in its behavior.<br />
                <br />
                <a name="cin"></a>
                <h3>
                    Standard Input (cin).</h3>
                The standard input device is usually the keyboard. Handling the standard input 
                in C++ is done by applying the overloaded operator of extraction (<tt>&gt;&gt;</tt>) 
                on the <tt>cin</tt> stream. The operator must be followed by the variable that 
                will store the data that is going to be extracted from the stream. For example:<br />
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
                                <pre><code><var>int</var> age;
cin &gt;&gt; age; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The first statement declares a variable of type <tt>int</tt> called <tt>age</tt>, 
                and the second one waits for an input from <tt>cin</tt> (the keyboard) in order 
                to store it in this integer variable.<br />
                <br />
                <tt>cin</tt> can only process the input from the keyboard once the <tt>RETURN</tt> 
                key has been pressed. Therefore, even if you request a single character, the 
                extraction from <tt>cin</tt> will not process the input until the user presses
                <tt>RETURN</tt> after the character has been introduced.<br />
                <br />
                You must always consider the type of the variable that you are using as a 
                container with <tt>cin</tt> extractions. If you request an integer you will get 
                an integer, if you request a character you will get a character and if you 
                request a string of characters you will get a string of characters.
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
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// i/o example</cite>

<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  <var>int</var> i;
  cout &lt;&lt; <kbd>&quot;Please enter an integer value: &quot;</kbd>;
  cin &gt;&gt; i;
  cout &lt;&lt; <kbd>&quot;The value you entered is &quot;</kbd> &lt;&lt; i;
  cout &lt;&lt; <kbd>&quot; and its double is &quot;</kbd> &lt;&lt; i*2 &lt;&lt; <kbd>&quot;.\n&quot;</kbd>;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>Please enter an integer value: 702
The value you entered is 702 and its double is 1404.</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The user of a program may be one of the factors that generate errors even in the 
                simplest programs that use <tt>cin</tt> (like the one we have just seen). Since 
                if you request an integer value and the user introduces a name (which generally 
                is a string of characters), the result may cause your program to misoperate 
                since it is not what we were expecting from the user. So when you use the data 
                input provided by <tt>cin</tt> extractions you will have to trust that the user 
                of your program will be cooperative and that he/she will not introduce his/her 
                name or something similar when an integer value is requested. A little ahead, 
                when we see the <tt>stringstream</tt> class we will see a possible solution for 
                the errors that can be caused by this type of user input.<br />
                <br />
                You can also use cin to request more than one datum input from the user:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>cin &gt;&gt; a &gt;&gt; b;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                is equivalent to:<br />
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
                                <pre><code>cin &gt;&gt; a;
cin &gt;&gt; b;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In both cases the user must give two data, one for variable <tt>a</tt> and 
                another one for variable <tt>b</tt> that may be separated by any valid blank 
                separator: a space, a tab character or a newline.<br />
                <br />
                <a name="cin_strings"></a>
                <h3>
                    cin and strings</h3>
                We can use <tt>cin</tt> to get strings with the extraction operator (<tt>&gt;&gt;</tt>) 
                as we do with fundamental data type variables:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>cin &gt;&gt; mystring;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                However, as it has been said, <tt>cin</tt> extraction stops reading as soon as 
                if finds any blank space character, so in this case we will be able to get just 
                one word for each extraction. This behavior may or may not be what we want; for 
                example if we want to get a sentence from the user, this extraction operation 
                would not be useful.<br />
                <br />
                In order to get entire lines, we can use the function <tt>getline</tt>, which is 
                the more recommendable way to get user input with <tt>cin</tt>:<br />
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
                                <pre><code><cite>// cin with strings</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<dfn>#include &lt;string&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  string mystr;
  cout &lt;&lt; <kbd>&quot;What&#39;s your name? &quot;</kbd>;
  getline (cin, mystr);
  cout &lt;&lt; <kbd>&quot;Hello &quot;</kbd> &lt;&lt; mystr &lt;&lt; <kbd>&quot;.\n&quot;</kbd>;
  cout &lt;&lt; <kbd>&quot;What is your favorite team? &quot;</kbd>;
  getline (cin, mystr);
  cout &lt;&lt; <kbd>&quot;I like &quot;</kbd> &lt;&lt; mystr &lt;&lt; <kbd>&quot; too!\n&quot;</kbd>;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>What&#39;s your name? Juan Soulie
Hello Juan Soulie.
What is your favorite team? The Isotopes
I like The Isotopes too!</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Notice how in both calls to <tt>getline</tt> we used the same string identifier 
                (<tt>mystr</tt>). What the program does in the second call is simply to replace 
                the previous content by the new one that is introduced.<br />
                <br />
                <a name="stringstream"></a>
                <h3>
                    stringstream</h3>
                The standard header file <tt>&lt;sstream&gt;</tt> defines a class called <tt>
                stringstream</tt> that allows a string-based object to be treated as a stream. 
                This way we can perform extraction or insertion operations from/to strings, 
                which is especially useful to convert strings to numerical values and vice 
                versa. For example, if we want to extract an integer from a string we can write:<br />
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
                                <pre><code>string mystr (<kbd>&quot;1204&quot;</kbd>);
<var>int</var> myint;
stringstream(mystr) &gt;&gt; myint;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This declares a <tt>string</tt> object with a value of <tt>&quot;1204&quot;</tt>, and an
                <tt>int</tt> object. Then we use <tt>stringstream</tt>&#39;s constructor to 
                construct an object of this type from the string object. Because we can use <tt>
                stringstream</tt> objects as if they were streams, we can extract an integer 
                from it as we would have done on <tt>cin</tt> by applying the extractor operator 
                (<tt>&gt;&gt;</tt>) on it followed by a variable of type <tt>int</tt>.<br />
                <br />
                After this piece of code, the variable <tt>myint</tt> will contain the numerical 
                value <tt>1204</tt>.<br />
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
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// stringstreams</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<dfn>#include &lt;string&gt;</dfn>
<dfn>#include &lt;sstream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  string mystr;
  <var>float</var> price=0;
  <var>int</var> quantity=0;

  cout &lt;&lt; <kbd>&quot;Enter price: &quot;</kbd>;
  getline (cin,mystr);
  stringstream(mystr) &gt;&gt; price;
  cout &lt;&lt; <kbd>&quot;Enter quantity: &quot;</kbd>;
  getline (cin,mystr);
  stringstream(mystr) &gt;&gt; quantity;
  cout &lt;&lt; <kbd>&quot;Total price: &quot;</kbd> &lt;&lt; price*quantity &lt;&lt; endl;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>Enter price: 22.25
Enter quantity: 7
Total price: 155.75</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this example, we acquire numeric values from the standard input indirectly. 
                Instead of extracting numeric values directly from the standard input, we get 
                lines from the standard input (<tt>cin</tt>) into a string object (<tt>mystr</tt>), 
                and then we extract the integer values from this string into a variable of type 
                int (<tt>quantity</tt>).<br />
                <br />
                Using this method, instead of direct extractions of integer values, we have more 
                control over what happens with the input of numeric values from the user, since 
                we are separating the process of obtaining input from the user (we now simply 
                ask for lines) with the interpretation of that input. Therefore, this method is 
                usually preferred to get numerical values from the user in all programs that are 
                intensive in user input.</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

