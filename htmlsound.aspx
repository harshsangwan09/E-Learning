<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmlsound.aspx.cs" Inherits="htmlsound" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" class="style2" 
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Audio Sounds"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Sounds can be played in HTML by many different methods.</td>
        </tr>
        <tr>
            <td>
                <h2>
                    Problems and Solutions</h2>
                <p>
                    Displaying audio in HTML is not easy!</p>
                <p>
                    You must add a lot of tricks to make sure your audio files will play in all 
                    browsers (Internet Explorer, Chrome, Firefox, Safari, Opera) and on all hardware 
                    (PC, Mac , iPad, iPhone).
                </p>
                <p>
                    In this chapter W3Schools summarizes the problems and the solutions.</p>
                <h2>
                    The Easiest Way to Add Audio to Your Site</h2>
                <p>
                    The easiest way to add Audio to your web pages?</p>
                <p>
                    The Yahoo Media Player (described at the bottom of this page) is definitely a 
                    favorite.</p>
                <p>
                    It plays mp3 and a variety of other formats. You can add it to your page (or 
                    blog) with a single line of code, and easily turn your HTML page into a 
                    professional playlist.</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;a href=&quot;song.mp3&quot;&gt;Play Song&lt;/a&gt;<br />
                        <br />
                        &lt;script type=&quot;text/javascript&quot; src=&quot;http://mediaplayer.yahoo.com/js&quot;&gt;<br />
                        &lt;/script&gt;
                                                    </div>
                                                </div>
                                                <h2>
                                                    Using Plugins</h2>
                                                <p>
                                                    A Plugin is a small computer program that extends the standard functionality of 
                                                    a web browser. Plugins can be used for many purposes. They can be used to 
                                                    display music, display maps, verify your bank id, control your input, and much 
                                                    more.</p>
                <p>
                    Plugins can be added to HTML pages using &lt;object&gt; or &lt;embed&gt; tags.
                                                </p>
                                                <h2>
                                                    Playing Audio in HTML</h2>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;audio controls=&quot;controls&quot; height=&quot;50px&quot; width=&quot;100px&quot;&gt;<br />
                        &nbsp; &lt;source src=&quot;song.mp3&quot; type=&quot;audio/mpeg&quot; /&gt;<br />
                        &nbsp; &lt;source src=&quot;song.ogg&quot; type=&quot;audio/ogg&quot; /&gt;<br />
                        &lt;embed height=&quot;50px&quot; width=&quot;100px&quot; src=&quot;song.mp3&quot; /&gt;<br />
                        &lt;/audio&gt;
                                                    </div>
                                                </div>
                                                <h2>
                                                    Using The &lt;embed&gt; Element</h2>
                                                <p>
                                                    The purpose of the &lt;embed&gt; tag is to embed multimedia elements in HTML pages.</p>
                <p>
                    The following code fragment displays an MP3 file embedded in a web page.</p>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    <div class="example_code notranslate">
                        &lt;embed height=&quot;50px&quot; width=&quot;100px&quot; src=&quot;song.mp3&quot; /&gt;
                                                    </div>
                                                </div>
                                                <p>
                                                    <b>Problems:</b></p>
                <ul>
                    <li>The &lt;embed&gt; tag is unknown to HTML 4. Your page will not validate correctly.</li>
                    <li>If your browser does not support the file format, your audio will not play.</li>
                    <li>If you convert your file to another format, it will still not play in all 
                        browsers.</li>
                                                </ul>
                                                <h2>
                                                    Using The &lt;object&gt; Element</h2>
                                                <p>
                                                    The purpose of the &lt;object&gt; tag is to embed multimedia elements in HTML pages.</p>
                <p>
                    The following code fragment displays an MP3 file embedded in a web page.</p>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example</h2>
                                                    <div class="example_code notranslate">
                                                        &lt;object height=&quot;50px&quot; width=&quot;100px&quot; data=&quot;song.mp3&quot; /&gt;</div>
                                                </div>
                                                <p>
                                                    <b>Problems:</b></p>
                                                <ul>
                                                    <li>If your browser does not support the file format, your audio will not play.</li>
                    <li>If you convert your file to another format, it will still not play in all 
                        browsers.</li>
                                                </ul>
                                                <h2>
                                                    Using the &lt;audio&gt; Element</h2>
                                                <p>
                                                    The &lt;audio&gt; element is an HTML 5 element, unknown to HTML 4, but it works in new 
                                                    browsers.</p>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example</h2>
                                                    <div class="example_code notranslate">
                                                        &lt;audio controls=&quot;controls&quot;&gt;<br />
                                                        &nbsp; &lt;source src=&quot;song.mp3&quot; type=&quot;audio/mpeg&quot; /&gt;<br />
                                                        &nbsp; &lt;source src=&quot;song.ogg&quot; type=&quot;audio/ogg&quot; /&gt;<br />
                                                        Your browser does not support this audio<br />
                                                        &lt;/audio&gt;
                                                    </div>
                                                </div>
                                                <p>
                                                    The example above uses an Ogg file, to make it work in Firefox, Opera and 
                                                    Chrome. To make the audio work in Internet Explorer and Safari, a file of the 
                                                    type MP3 is added.</p>
                                                <p>
                                                    Currently, there are 3 main formats for the audio element: Ogg Vorbis, MP3, and 
                                                    Wav.</p>
                                                <p>
                                                    <b>Problems:</b></p>
                <ul>
                    <li>You must convert your audio files into many different formats.</li>
                    <li>The &lt;audio&gt; element does not work in older browsers.</li>
                    <li>The &lt;audio&gt; element does not validate in HTML 4 and XHTML.</li>
                                                </ul>
                                                <h2>
                                                    The Best HTML Solution</h2>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example</h2>
                                                    <div class="example_code notranslate">
                                                        &lt;audio controls=&quot;controls&quot; height=&quot;50px&quot; width=&quot;100px&quot;&gt;<br />
                                                        &nbsp; &lt;source src=&quot;song.mp3&quot; type=&quot;audio/mpeg&quot; /&gt;<br />
                                                        &nbsp; &lt;source src=&quot;song.ogg&quot; type=&quot;audio/ogg&quot; /&gt;<br />
                                                        &lt;embed height=&quot;50px&quot; width=&quot;100px&quot; src=&quot;song.mp3&quot; /&gt;<br />
                                                        &lt;/audio&gt;
                                                    </div>
                                                </div>
                                                <p>
                                                    The example above uses 4 different audio formats. The HTML 5 &lt;audio&gt; element 
                                                    tries to play the video either as ogg or mp3. If this fails, the code &quot;falls 
                                                    back&quot; to try the &lt;embed&gt; element. If this also fails, it displays an error.
                                                </p>
                                                <p>
                                                    <strong>Problems:/strong></p>
                </strong>
                <ul>
                    <li>You must convert your videos to many different formats.</li>
                    <li>The &lt;audio&gt; element does not validate in HTML 4 and XHTML.</li>
                    <li>The &lt;embed&gt; element does not validate in HTML 4 and XHTML.</li>
                </ul>
                                                    <strong>
                <p>
                    NOTE:</strong>  Using &lt;!DOCTYPE html&gt; solves the validation problem.</p>
                                                    <strong>
                                                <h2>
                                                    Using the Yahoo Media Player</h2>
                                                </strong>
                                                <p>
                                                    Using the Yahoo Media Player is a different approach. You simply let Yahoo do 
                                                    the job of playing your songs.                 </p>
                                                    <strong>
                <div class="example">
                    <h2 class="example">
                        Example</h2>
                    </strong>
                    <div class="example_code notranslate">
                        &lt;a href&lt;a href=&quot;song.mp3&quot;&gt;Play the song&lt;/a&gt;
                                                    </div>
                                                </div>
                                                    <strong>
                                                <h2>
                                                    Inline Sound</h2>
                                                </strong>
                                                <p>
                                                    When sound is included in a web page, or as part of a web page, it is called 
                                                    inline sound.</p>
                                                <p>
                                                    If you plan to use inline sounds in your web applications, be aware that many 
                                                    people find inline sound annoying. Also note that some users might have turned 
                                                    off the inline sound option in their browser. href=&quot;song1.mp3&quot;&gt;Play Song 1&lt;/a&gt;<br />
                    &lt;a href=&quot;song2.mp3&quot;&gt;Play Song 2&lt;/a&gt;<br />
                    ...<br />
                    ...<br />
                    ...</p>
                <p>
                    The Yahoo Media Player presents your readers with a small play button instead of 
                    a full player. However, when you click the button, a full player pops up.<br />
                    <br />
                    NNote that the player is always docked and ready at the bottom the window. Just 
                    click on it to slide it out.</p>
                                                    <strong>
                                                <h2>
                                                    Using Google
                                                </h2>
                                                </strong>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example/h2>
                    <div class="example_code notranslate">
                        &lt;a href=&quot;song.mp3&quot;&gt;Play Song&lt;/a&gt;<br />
                        <br />
                        &lt;embed type=&quot;application/x-shockwave-flash&quot; wmode=&quot;transparent&quot; 
                        src=&quot;http://www.google.com/reader/ui/3523697345-audio-player.swf?audioUrl=song.mp3&quot; 
                        height=&quot;27&quot; width=&quot;320&quot;&gt;&lt;/embed&gt;
                                                    </div>
                                                </div>
                                                    <strong>
                                                <h2>
                                                    Using A Hyperlink</h2>
                                                </strong>
                                                <p>
                                                    If a web page includes a hyperlink to a media file, most browsers will use a 
                                                    &quot;helper application&quot; to play the file.</p>
                <p>
                    The following code fragment displays a link to an MP3 file. If a user clicks on 
                    the link, the browser will launch a helper application to play the file:</p>
                                                    <strong>
                                                <div class="example">
                                                    <h2 class="example">
                                                        Example</h2>
                                                    </strong>
                                                    <div class="example_code notranslate">
                                                        &&lt;a href=&quot;song.mp3&quot;&gt;Play the song&lt;/a&gt;
                                                    </div>
                                                </div>
                                                    <strong>
                                                <br />
                                                <h2>
                                                    Inline Sound</h2>
                                                </strong>
                                                <p>
                                                    When sound is included in a web page, or as part of a web page, it is called 
                                                    inline sound./p>
                <p>
                    If you plan to use inline sounds in your web applications, be aware that many 
                    people find inline sound annoying. Also note that some users might have turned 
                    off the inline sound option in their browser.</p>
                <p>
                    Our best advice is to include inline sound only in web pages where the user 
                    expects to hear the sound. An example of this is a page which opens after the 
                    user has clicked on a link to hear a recording.</p>
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
    </table>
</asp:Content>

