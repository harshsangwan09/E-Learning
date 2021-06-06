<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="carray.aspx.cs" Inherits="c__array" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Array"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Arrays</h1>
                    <div class="right">
                    </div>
                </div>
                <div class="C_docsubtop">
                    <div class="right">
                    </div>
                </div>
                An array is a series of elements of the same type placed in contiguous memory 
                locations that can be individually referenced by adding an index to a unique 
                identifier.<br />
                <br />
                That means that, for example, we can store 5 values of type <tt>int</tt> in an 
                array without having to declare 5 different variables, each one with a different 
                identifier. Instead of that, using an array we can store 5 different values of 
                the same type, <tt>int</tt> for example, with a unique identifier.<br />
                <br />
                For example, an array to contain 5 integer values of type <tt>int</tt> called
                <tt>billy</tt> could be represented like this:<br />
                <br />
                <img alt="" src="http://www.cplusplus.com/doc/tutorial/arrays/arrays1.gif" />
                <br />
                where each blank panel represents an element of the array, that in this case are 
                integer values of type <tt>int</tt>. These elements are numbered from <tt>0</tt> 
                to <tt>4</tt> since in arrays the first index is always <tt>0</tt>, 
                independently of its length.<br />
                <br />
                Like a regular variable, an array must be declared before it is used. A typical 
                declaration for an array in C++ is:<br />
                <br />
                <tt>type name [elements];<br />
                </tt>
                <br />
                where <tt>type</tt> is a valid type (like <tt>int</tt>, <tt>float</tt>...), <tt>
                name</tt> is a valid identifier and the <tt>elements</tt> field (which is always 
                enclosed in square brackets <tt>[]</tt>), specifies how many of these elements 
                the array has to contain.<br />
                <br />
                Therefore, in order to declare an array called <tt>billy</tt> as the one shown 
                in the above diagram it is as simple as:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>int</var> billy [5];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <b>NOTE</b>: The <tt>elements</tt> field within brackets <tt>[]</tt> which 
                represents the number of elements the array is going to hold, must be a <strong>
                constant</strong> value, since arrays are blocks of non-dynamic memory whose 
                size must be determined before execution. In order to create arrays with a 
                variable length dynamic memory is needed, which is explained later in these 
                tutorials.<br />
                <br />
                <a name="initilize_array"></a>
                <h3>
                    Initializing arrays.</h3>
                When declaring a regular array of local scope (within a function, for example), 
                if we do not specify otherwise, its elements will not be initialized to any 
                value by default, so their content will be undetermined until we store some 
                value in them. The elements of global and static arrays, on the other hand, are 
                automatically initialized with their default values, which for all fundamental 
                types this means they are filled with zeros.<br />
                <br />
                In both cases, local and global, when we declare an array, we have the 
                possibility to assign initial values to each one of its elements by enclosing 
                the values in braces <tt>{ }</tt>. For example:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>int</var> billy [5] = { 16, 2, 77, 40, 12071 }; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This declaration would have created an array like this:<br />
                <br />
                <img alt="" src="http://www.cplusplus.com/doc/tutorial/arrays/arrays2.gif" />
                <br />
                The amount of values between braces <tt>{ }</tt> must not be larger than the 
                number of elements that we declare for the array between square brackets <tt>[ ]</tt>. 
                For example, in the example of array <tt>billy</tt> we have declared that it has 
                5 elements and in the list of initial values within braces <tt>{ }</tt> we have 
                specified 5 values, one for each element.<br />
                <br />
                When an initialization of values is provided for an array, C++ allows the 
                possibility of leaving the square brackets empty <tt>[ ]</tt>. In this case, the 
                compiler will assume a size for the array that matches the number of values 
                included between braces <tt>{ }</tt>:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>int</var> billy [] = { 16, 2, 77, 40, 12071 };</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                After this declaration, array <tt>billy</tt> would be 5 ints long, since we have 
                provided 5 initialization values.<br />
                <br />
                <a name="accessing_values"></a>
                <h3>
                    Accessing the values of an array.</h3>
                <br />
                In any point of a program in which an array is visible, we can access the value 
                of any of its elements individually as if it was a normal variable, thus being 
                able to both read and modify its value. The format is as simple as:<br />
                <br />
                <tt>name[index]<br />
                </tt>
                <br />
                Following the previous examples in which <tt>billy</tt> had 5 elements and each 
                of those elements was of type <tt>int</tt>, the name which we can use to refer 
                to each element is the following:<br />
                <br />
                <img alt="" src="http://www.cplusplus.com/doc/tutorial/arrays/arrays3.gif" />
                <br />
                For example, to store the value <tt>75</tt> in the third element of <tt>billy</tt>, 
                we could write the following statement:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>billy[2] = 75;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                and, for example, to pass the value of the third element of <tt>billy</tt> to a 
                variable called <tt>a</tt>, we could write:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>a = billy[2];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Therefore, the expression <tt>billy[2]</tt> is for all purposes like a variable 
                of type <tt>int</tt>.<br />
                <br />
                Notice that the third element of <tt>billy</tt> is specified <tt>billy[2]</tt>, 
                since the first one is <tt>billy[0]</tt>, the second one is <tt>billy[1]</tt>, 
                and therefore, the third one is <tt>billy[2]</tt>. By this same reason, its last 
                element is <tt>billy[4]</tt>. Therefore, if we write billy[5], we would be 
                accessing the sixth element of <tt>billy</tt> and therefore exceeding the size 
                of the array.<br />
                <br />
                In C++ it is syntactically correct to exceed the valid range of indices for an 
                array. This can create problems, since accessing out-of-range elements do not 
                cause compilation errors but can cause runtime errors. The reason why this is 
                allowed will be seen further ahead when we begin to use pointers.<br />
                <br />
                At this point it is important to be able to clearly distinguish between the two 
                uses that brackets <tt>[ ]</tt> have related to arrays. They perform two 
                different tasks: one is to specify the size of arrays when they are declared; 
                and the second one is to specify indices for concrete array elements. Do not 
                confuse these two possible uses of brackets <tt>[ ]</tt> with arrays.<br />
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
                                <pre><code><var>int</var> billy[5];         <cite>// declaration of a new array</cite>
billy[2] = 75;        <cite>// access to an element of the array. </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                If you read carefully, you will see that a type specifier always precedes a 
                variable or array declaration, while it never precedes an access.<br />
                <br />
                Some other valid operations with arrays:<br />
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
                                <pre><code>billy[0] = a;
billy[a] = 75;
b = billy [a+2];
billy[billy[a]] = billy[2] + 5;</code></pre>
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
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// arrays example</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> billy [] = {16, 2, 77, 40, 12071};
<var>int</var> n, result=0;

<var>int</var> main ()
{
  <var>for</var> ( n=0 ; n&lt;5 ; n++ )
  {
    result += billy[n];
  }
  cout &lt;&lt; result;
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>12206</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <a name="multidimensional_arrays"></a>
                <h3>
                    Multidimensional arrays</h3>
                <br />
                Multidimensional arrays can be described as &quot;arrays of arrays&quot;. For example, a 
                bidimensional array can be imagined as a bidimensional table made of elements, 
                all of them of a same uniform data type.<br />
                <br />
                <img alt="" 
                    src="http://www.cplusplus.com/doc/tutorial/arrays/bidimensional_arrays1.gif" />
                <br />
                <tt>jimmy</tt> represents a bidimensional array of 3 per 5 elements of type <tt>
                int</tt>. The way to declare this array in C++ would be:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>int</var> jimmy [3][5];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                and, for example, the way to reference the second element vertically and fourth 
                horizontally in an expression would be:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>jimmy[1][3]</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                <img alt="" 
                    src="http://www.cplusplus.com/doc/tutorial/arrays/bidimensional_arrays2.gif" />
                <br />
                (remember that array indices always begin by zero).<br />
                <br />
                Multidimensional arrays are not limited to two indices (i.e., two dimensions). 
                They can contain as many indices as needed. But be careful! The amount of memory 
                needed for an array rapidly increases with each dimension. For example:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>char</var> century [100][365][24][60][60];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                declares an array with a <tt>char</tt> element for each second in a century, 
                that is more than 3 billion chars. So this declaration would consume more than 3 
                gigabytes of memory!<br />
                <br />
                Multidimensional arrays are just an abstraction for programmers, since we can 
                obtain the same results with a simple array just by putting a factor between its 
                indices:<br />
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
                                <pre><code><var>int</var> jimmy [3][5];   <cite>// is equivalent to</cite>
<var>int</var> jimmy [15];     <cite>// (3 * 5 = 15) </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                With the only difference that with multidimensional arrays the compiler 
                remembers the depth of each imaginary dimension for us. Take as example these 
                two pieces of code, with both exactly the same result. One uses a bidimensional 
                array and the other one uses a simple array:
                <br />
                <br />
                <table class="boxed">
                    <tr>
                        <th>
                            multidimensional array</th>
                        <th>
                            pseudo-multidimensional array</th>
                    </tr>
                    <tr>
                        <td>
                            <pre>#define WIDTH 5
#define HEIGHT 3

int jimmy [HEIGHT][WIDTH];
int n,m;

int main ()
{
  for (n=0;n&lt;HEIGHT;n++)
    for (m=0;m&lt;WIDTH;m++)
    {
      jimmy[n][m]=(n+1)*(m+1);
    }
  return 0;
}
</pre>
                        </td>
                        <td>
                            <pre>#define WIDTH 5
#define HEIGHT 3

int jimmy [HEIGHT * WIDTH];
int n,m;

int main ()
{
  for (n=0;n&lt;HEIGHT;n++)
    for (m=0;m&lt;WIDTH;m++)
    {
      jimmy[n*WIDTH+m]=(n+1)*(m+1);
    }
  return 0;
}
</pre>
                        </td>
                    </tr>
                </table>
                <br />
                None of the two source codes above produce any output on the screen, but both 
                assign values to the memory block called jimmy in the following way:
                <br />
                <br />
                <img alt="" 
                    src="http://www.cplusplus.com/doc/tutorial/arrays/bidimensional_arrays3.gif" />
                <br />
                We have used &quot;defined constants&quot; (<tt>#define</tt>) to simplify possible future 
                modifications of the program. For example, in case that we decided to enlarge 
                the array to a height of 4 instead of 3 it could be done simply by changing the 
                line:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><dfn>#define HEIGHT 3 </dfn></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                to:<br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><dfn>#define HEIGHT 4 </dfn></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                with no need to make any other modifications to the program.
                <br />
                <br />
                <h3>
                    Arrays as parameters</h3>
                At some moment we may need to pass an array to a function as a parameter. In C++ 
                it is not possible to pass a complete block of memory by value as a parameter to 
                a function, but we are allowed to pass its address. In practice this has almost 
                the same effect and it is a much faster and more efficient operation.<br />
                <br />
                In order to accept arrays as parameters the only thing that we have to do when 
                declaring the function is to specify in its parameters the element type of the 
                array, an identifier and a pair of void brackets <tt>[]</tt>. For example, the 
                following function:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>void</var> procedure (<var>int</var> arg[])</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                accepts a parameter of type &quot;array of <tt>int</tt>&quot; called <tt>arg</tt>. In 
                order to pass to this function an array declared as:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>int</var> myarray [40];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                it would be enough to write a call like this:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>procedure (myarray);</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Here you have a complete example:
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
                                18<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// arrays as parameters</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>void</var> printarray (<var>int</var> arg[], <var>int</var> length) {
  <var>for</var> (<var>int</var> n=0; n&lt;length; n++)
    cout &lt;&lt; arg[n] &lt;&lt; <kbd>&quot; &quot;</kbd>;
  cout &lt;&lt; <kbd>&quot;\n&quot;</kbd>;
}

<var>int</var> main ()
{
  <var>int</var> firstarray[] = {5, 10, 15};
  <var>int</var> secondarray[] = {2, 4, 6, 8, 10};
  printarray (firstarray,3);
  printarray (secondarray,5);
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>5 10 15
2 4 6 8 10</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                As you can see, the first parameter (<tt>int arg[]</tt>) accepts any array whose 
                elements are of type <tt>int</tt>, whatever its length. For that reason we have 
                included a second parameter that tells the function the length of each array 
                that we pass to it as its first parameter. This allows the <tt>for</tt> loop 
                that prints out the array to know the range to iterate in the passed array 
                without going out of range.<br />
                <br />
                In a function declaration it is also possible to include multidimensional 
                arrays. The format for a tridimensional array parameter is:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>base_type[][depth][depth]</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                for example, a function with a multidimensional array as argument could be:
                <br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code><var>void</var> procedure (<var>int</var> myarray[][3][4])</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Notice that the first brackets <tt>[]</tt> are left empty while the following 
                ones specify sizes for their respective dimensions. This is necessary in order 
                for the compiler to be able to determine the depth of each additional dimension.<br />
                <br />
                Arrays, both simple or multidimensional, passed as function parameters are a 
                quite common source of errors for novice programmers. I recommend the reading of 
                the chapter about Pointers for a better understanding on how arrays operate.</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

