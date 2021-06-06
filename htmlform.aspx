<%@ Page Language="C#" MasterPageFile="~/html.master" AutoEventWireup="true" CodeFile="htmlform.aspx.cs" Inherits="htmlform" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    
    <style type="text/css">
        .style9
        {
            width: 289px;
        }
        .style10
        {
            width: 978px;
        }
        .style11
        {
            text-decoration: none;
        }
        .style12
        {
            color: #000000;
        }
    </style>
    
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" cellpadding="0" cellspacing="0" 
        
        style="padding-top:10px; padding-left:10px; font-family: Arial, Helvetica, sans-serif;">
        <tr>
            <td class="style10">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="#0099FF" Text="HTML Forms and Input"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style10">
                HTML Forms are used to select different kinds of user input.<br />
                <br />
                                            </td>
        </tr>
        <tr>
            <td class="style10">
                <b><span>HTML Forms</span><br class="style4" />
                <br class="style4" />
                </b>HTML forms are used to pass data to a server. A form can contain input 
                elements like text fields, checkboxes, radio-buttons, submit buttons and more. A 
                form can also contain select lists, textarea, fieldset, legend, and label 
                elements. The tag is used to create an HTML form: . input elements . 
                <br />
                <br />
                                            </td>
        </tr>
        <tr>
            <td class="style10">
                <b><span class="style4">HTML Forms - The Input Element</span><br 
                    class="style4" />
                <br />
                </b>The most important form element is the input element.The input element is 
                used to select user information. An input element can vary in many ways, 
                depending on the type attribute. An input element can be of type text field, 
                checkbox, password, radio button, submit button, and more. The most used input 
                types are described below.<b><br class="style4" />
                <br />
                </b></td>
        </tr>
        <tr>
            <td class="style10">
                <b>Text Fields</b>
                <br />
                <br />
                &lt;input type=&quot;text&quot; /&gt; defines a one-line input field that a user can enter text 
                into:<br />
                &lt;form&gt;<br />
                First name: &lt;input type=&quot;text&quot; name=&quot;firstname&quot; /&gt;&lt;br /&gt;<br />
                Last name: &lt;input type=&quot;text&quot; name=&quot;lastname&quot; /&gt;<br />
                &lt;/form&gt; 
                <br />
            </td>
        </tr>
        <tr>
            <td class="style10">
                <p>
                    How the HTML code above looks in a browser:</p>
                First name:
                <input name="firstname" size="20" type="text" />
                <br />
                Last name:
                <input name="lastname" size="20" type="text" />
                <br />
                <br />
                <h2>
                    Radio Buttons</h2>
                <p>
                    &lt;input type=&quot;radio&quot; /&gt; defines a radio button. Radio buttons let a user select 
                    ONLY ONE of a limited number of choices:</p>
                <div class="code notranslate">
                    <div>
                        &lt;form&gt;<br />
                        &lt;input type=&quot;radio&quot; name=&quot;sex&quot; value=&quot;male&quot; /&gt; Male&lt;br /&gt;<br />
                        &lt;input type=&quot;radio&quot; name=&quot;sex&quot; value=&quot;female&quot; /&gt; Female<br />
                        &lt;/form&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                <input checked="checked" name="sex" type="radio" value="male" /> Male<br />
                <input name="sex" type="radio" value="female" /> Female
                <h2>
                    Checkboxes
                </h2>
                <p>
                    &lt;input type=&quot;checkbox&quot; /&gt; defines a checkbox. Checkboxes let a user select ONE 
                    or MORE options of a limited number of choices.</p>
                <div class="code notranslate">
                    <div>
                        &lt;form&gt;<br />
                        &lt;input type=&quot;checkbox&quot; name=&quot;vehicle&quot; value=&quot;Bike&quot; /&gt; I have a bike&lt;br /&gt;<br />
                        &lt;input type=&quot;checkbox&quot; name=&quot;vehicle&quot; value=&quot;Car&quot; /&gt; I have a car
                        <br />
                        &lt;/form&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                <input name="vehicle1" type="checkbox" value="Bike" /> I have a bike<br />
                <input name="vehicle" type="checkbox" value="Car" /> I have a car
                <h2>
                    Submit Button
                </h2>
                <p>
                    &lt;input type=&quot;submit&quot; /&gt; defines a submit button.</p>
                <p>
                    A submit button is used to send form data to a server. The data is sent to the 
                    page specified in the form&#39;s action attribute. The file defined in the action 
                    attribute usually does something with the received input:</p>
                <div class="code notranslate">
                    <div>
                        &lt;form name=&quot;input&quot; action=&quot;html_form_action.asp&quot; method=&quot;get&quot;&gt;<br />
                        Username: &lt;input type=&quot;text&quot; name=&quot;user&quot; /&gt;<br />
                        &lt;input type=&quot;submit&quot; value=&quot;Submit&quot; /&gt;<br />
                        &lt;/form&gt;
                    </div>
                </div>
                <p>
                    How the HTML code above looks in a browser:</p>
                Username:
                <input name="user" size="20" type="text" /><br />
            </td>
        </tr>
        <tr>
            <td class="style10">
                <h2>
                    HTML Form Tags</h2>
                <table class="reference">
                    <tr>
                        <th align="left">
                            Tag</th>
                        <th align="left">
                            Description</th>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_form.asp" class="style11">
                            <span class="style12">&lt;form&gt;</span></a></td>
                        <td>
                            Defines an HTML form for user input</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_input.asp" class="style11">
                            <span class="style12">&lt;input /&gt;</span></a></td>
                        <td class="style9">
                            Defines an input control</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_textarea.asp" class="style11">
                            <span class="style12">&lt;textarea&gt;</span></a></td>
                        <td class="style9">
                            Defines a multi-line text input control</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_label.asp" class="style11">
                            <span class="style12">&lt;label&gt;</span></a></td>
                        <td class="style9">
                            Defines a label for an input element</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_fieldset.asp" class="style11">
                            <span class="style12">&lt;fieldset&gt;</span></a></td>
                        <td class="style9">
                            Defines a border around elements in a form</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_legend.asp" class="style11">
                            <span class="style12">&lt;legend&gt;</span></a></td>
                        <td class="style9">
                            Defines a caption for a fieldset element</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_select.asp" class="style11">
                            <span class="style12">&lt;select&gt;</span></a></td>
                        <td class="style9">
                            Defines a select list (drop-down list)</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_optgroup.asp" class="style11">
                            <span class="style12">&lt;optgroup&gt;</span></a></td>
                        <td class="style9">
                            Defines a group of related options in a select list</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_option.asp" class="style11">
                            <span class="style12">&lt;option&gt;</span></a></td>
                        <td class="style9">
                            Defines an option in a select list</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            <a href="http://www.w3schools.com/tags/tag_button.asp" class="style11">
                            <span class="style12">&lt;button&gt;</span></a></td>
                        <td class="style9">
                            Defines a push button</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

