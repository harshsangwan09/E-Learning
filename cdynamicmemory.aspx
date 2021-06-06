<%@ Page Language="C#" MasterPageFile="~/c++.master" AutoEventWireup="true" CodeFile="cdynamicmemory.aspx.cs" Inherits="c__dynamicmemory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1" style="padding-top:10px; padding-left:10px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="#3399FF" Text="C++ Dynamic Memory"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div class="C_doctop">
                    <h1>
                        Dynamic Memory</h1>
                                                </div>
                                                Until now, in all our programs, we have only had as much memory available as we 
                                                declared for our variables, having the size of all of them to be determined in 
                                                the source code, before the execution of the program. But, what if we need a 
                                                variable amount of memory that can only be determined during runtime? For 
                                                example, in the case that we need some user input to determine the necessary 
                                                amount of memory space.<br />
                                                <br />
                                                The answer is <i>dynamic memory</i>, for which C++ integrates the operators <tt>
                new</tt> and <tt>delete</tt>.<br />
                <br />
                <a name="new"></a>
                <h3>
                    Operators new and new[]</h3>
                In order to request dynamic memory we use the operator <tt>new</tt>. <tt>new</tt> 
                is followed by a data type specifier and -if a sequence of more than one element 
                is required- the number of these within brackets <tt>[]</tt>. It returns a 
                pointer to the beginning of the new block of memory allocated. Its form is:
                <br />
                <br />
                <tt>pointer = new type<br />
                pointer = new type [number_of_elements]<br />
                </tt>
                <br />
                The first expression is used to allocate memory to contain one single element of 
                type <tt>type</tt>. The second one is used to assign a block (an array) of 
                elements of type <tt>type</tt>, where <tt>number_of_elements</tt> is an integer 
                value representing the amount of these. For example:<br />
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
                                <pre><code><var>int</var> * bobby;
bobby = <var>new</var> <var>int</var> [5];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this case, the system dynamically assigns space for five elements of type <tt>
                int</tt> and returns a pointer to the first element of the sequence, which is 
                assigned to <tt>bobby</tt>. Therefore, now, <tt>bobby</tt> points to a valid 
                block of memory with space for five elements of type <tt>int</tt>.<br />
                <br />
                <img alt="" src="http://www.cplusplus.com/doc/tutorial/dynamic/dynamic.gif" />
                <br />
                <br />
                The first element pointed by bobby can be accessed either with the expression
                <tt>bobby[0]</tt> or the expression <tt>*bobby</tt>. Both are equivalent as has 
                been explained in the section about pointers. The second element can be accessed 
                either with <tt>bobby[1]</tt> or <tt>*(bobby+1)</tt> and so on...<br />
                <br />
                You could be wondering the difference between declaring a normal array and 
                assigning dynamic memory to a pointer, as we have just done. The most important 
                difference is that the size of an array has to be a constant value, which limits 
                its size to what we decide at the moment of designing the program, before its 
                execution, whereas the dynamic memory allocation allows us to assign memory 
                during the execution of the program (runtime) using any variable or constant 
                value as its size.<br />
                <br />
                The dynamic memory requested by our program is allocated by the system from the 
                memory heap. However, computer memory is a limited resource, and it can be 
                exhausted. Therefore, it is important to have some mechanism to check if our 
                request to allocate memory was successful or not.<br />
                <br />
                C++ provides two standard methods to check if the allocation was successful:<br />
                <br />
                One is by handling exceptions. Using this method an exception of type <tt>
                bad_alloc</tt> is thrown when the allocation fails. Exceptions are a powerful 
                C++ feature explained later in these tutorials. But for now you should know that 
                if this exception is thrown and it is not handled by a specific handler, the 
                program execution is terminated.<br />
                <br />
                This exception method is the default method used by new, and is the one used in 
                a declaration like:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>bobby = <var>new</var> <var>int</var> [5];  <cite>// if it fails an exception is thrown </cite></code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The other method is known as <tt>nothrow</tt>, and what happens when it is used 
                is that when a memory allocation fails, instead of throwing a <tt>bad_alloc</tt> 
                exception or terminating the program, the pointer returned by <tt>new</tt> is a 
                null pointer, and the program continues its execution.<br />
                <br />
                This method can be specified by using a special object called <tt>nothrow</tt>, 
                declared in header <tt>&lt;new&gt;</tt>, as argument for <tt>new</tt>:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>bobby = <var>new</var> (nothrow) <var>int</var> [5]; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                In this case, if the allocation of this block of memory failed, the failure 
                could be detected by checking if <tt>bobby</tt> took a null pointer value:<br />
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
                                <pre><code><var>int</var> * bobby;
bobby = <var>new</var> (nothrow) <var>int</var> [5];
<var>if</var> (bobby == 0) {
  <cite>// error assigning memory. Take measures.</cite>
  }; </code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                This <tt>nothrow</tt> method requires more work than the exception method, since 
                the value returned has to be checked after each and every memory allocation, but 
                I will use it in our examples due to its simplicity. Anyway this method can 
                become tedious for larger projects, where the exception method is generally 
                preferred. The exception method will be explained in detail later in this 
                tutorial.<br />
                <br />
                <h3>
                    Operators delete and delete[]</h3>
                Since the necessity of dynamic memory is usually limited to specific moments 
                within a program, once it is no longer needed it should be freed so that the 
                memory becomes available again for other requests of dynamic memory. This is the 
                purpose of the operator <tt>delete</tt>, whose format is:<br />
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
                                <pre><code><var>delete</var> pointer;
<var>delete</var> [] pointer;</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                The first expression should be used to delete memory allocated for a single 
                element, and the second one for memory allocated for arrays of elements.
                <br />
                <br />
                The value passed as argument to delete must be either a pointer to a memory 
                block previously allocated with <tt>new</tt>, or a null pointer (in the case of 
                a null pointer, <tt>delete</tt> produces no effect).<br />
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
                                26<br />
                                27<br />
                                28<br />
                                </tt>
                            </td>
                            <td class="source">
                                <pre><code><cite>// rememb-o-matic</cite>
<dfn>#include &lt;iostream&gt;</dfn>
<dfn>#include &lt;new&gt;</dfn>
<var>using</var> <var>namespace</var> std;

<var>int</var> main ()
{
  <var>int</var> i,n;
  <var>int</var> * p;
  cout &lt;&lt; <kbd>&quot;How many numbers would you like to type? &quot;</kbd>;
  cin &gt;&gt; i;
  p= <var>new</var> (nothrow) <var>int</var>[i];
  <var>if</var> (p == 0)
    cout &lt;&lt; <kbd>&quot;Error: memory could not be allocated&quot;</kbd>;
  <var>else</var>
  {
    <var>for</var> (n=0; n&lt;i; n++)
    {
      cout &lt;&lt; <kbd>&quot;Enter number: &quot;</kbd>;
      cin &gt;&gt; p[n];
    }
    cout &lt;&lt; <kbd>&quot;You have entered: &quot;</kbd>;
    <var>for</var> (n=0; n&lt;i; n++)
      cout &lt;&lt; p[n] &lt;&lt; <kbd>&quot;, &quot;</kbd>;
    <var>delete</var>[] p;
  }
  <var>return</var> 0;
}</code></pre>
                            </td>
                            <td class="output">
                                <pre><samp>How many numbers would you like to type? 5
Enter number : 75
Enter number : 436
Enter number : 1067
Enter number : 8
Enter number : 32
You have entered: 75, 436, 1067, 8, 32,</samp></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                Notice how the value within brackets in the <tt>new</tt> statement is a variable 
                value entered by the user (<tt>i</tt>), not a constant value:<br />
                <br />
                <div class="auto">
                    <table class="snippet">
                        <tr>
                            <td class="rownum">
                                <tt>&nbsp;</tt></td>
                            <td class="source">
                                <pre><code>p= <var>new</var> (nothrow) <var>int</var>[i];</code></pre>
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <br />
                But the user could have entered a value for i so big that our system could not 
                handle it. For example, when I tried to give a value of 1 billion to the &quot;How 
                many numbers&quot; question, my system could not allocate that much memory for the 
                program and I got the text message we prepared for this case (<tt>Error: memory 
                could not be allocated</tt>). Remember that in the case that we tried to 
                allocate the memory without specifying the nothrow parameter in the new 
                expression, an exception would be thrown, which if it&#39;s not handled terminates 
                the program.<br />
                <br />
                It is a good practice to always check if a dynamic memory block was successfully 
                allocated. Therefore, if you use the <tt>nothrow</tt> method, you should always 
                check the value of the pointer returned. Otherwise, use the exception method, 
                even if you do not handle the exception. This way, the program will terminate at 
                that point without causing the unexpected results of continuing executing a code 
                that assumes a block of memory to have been allocated when in fact it has not.<br />
                <br />
                <h3>
                    Dynamic memory in ANSI-C</h3>
                <br />
                Operators <tt>new</tt> and <tt>delete</tt> are exclusive of C++. They are not 
                available in the C language. But using pure C language and its library, dynamic 
                memory can also be used through the functions <a>malloc</a>, <a>calloc</a>, <a>
                realloc</a> and <a>free</a>, which are also available in C++ including the <tt>
                &lt;cstdlib&gt;</tt> header file (see <a>cstdlib</a> for more 
                info).<br />
                <br />
                The memory blocks allocated by these functions are not necessarily compatible 
                with those returned by new, so each one should be manipulated with its own set 
                of functions or operators.</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

