<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registeration.aspx.cs" Inherits="start" UnobtrusiveValidationMode="None"  MasterPageFile="~/MasterPage.master"  %>



 <asp:content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        
   
        
        <div>
           
                         
            <asp:Label ID="pagename" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Black" Text="REGISTERATION FOR TRAINEES"></asp:Label>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>User Name</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="UN" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name is required" ControlToValidate="UN" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>E-mail</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="email" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter E-mail" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is not valid" ForeColor="Red" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>First Name</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="Firstname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <strong>
                        <asp:RequiredFieldValidator ID="fname" runat="server" ErrorMessage="First Name required" ControlToValidate="Firstname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Last Name</strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="Lastname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="lname" runat="server" ErrorMessage="Last Name required" ControlToValidate="Lastname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Date of birth</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="age" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date of birth is required" ControlToValidate="age" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Password</strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Confirm Password</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="passr" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="passr" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="passr" ErrorMessage="passwords do not match" ForeColor="Red"></asp:CompareValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Country</strong></td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="country" runat="server" Height="23px" Width="207px">
                            <asp:ListItem>Choose a country</asp:ListItem>
                            <asp:ListItem>Africa</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>England</asp:ListItem>
                            <asp:ListItem>pakistan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select a country" ControlToValidate="country" ForeColor="Red" InitialValue="Choose a country"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>State</strong></td>
                    <td  class="auto-style6">
                        <asp:TextBox id="city" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter a state" ControlToValidate="city" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" ><strong>Address</strong></td>
                    <td  class="auto-style5">
                        <asp:TextBox id="address" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style23" >
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is required" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Contact.no</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="contact" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Contact info is required" ControlToValidate="contact" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>License Number</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="license" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Social security number</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="nic" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Social security number is required" ControlToValidate="nic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
            <asp:Button ID="submit" runat="server" Text="Submit" Width="96px" OnClick="submit_Click" style="height: 26px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="Reset1" class="auto-style2" type="reset" value="reset" /></td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style24">
        
            <asp:Button ID="back" runat="server" Font-Bold="True" OnClick="back_Click" Text="Back" Width="90px" CausesValidation="false" />
                    </td>
                    <td class="auto-style23">
                        &nbsp;</td>
                </tr>
            </table>
           
        </div>
       <div>
       
           <br />
        <br />
        <br />
        <br />

    </div>
       
        
     </asp:content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            margin-top: 5px;
        }
        .auto-style2 {
            height: 27px;
            margin-top: 5px;
        }
        .auto-style3 {
            height: 27px;
        }
    </style>
</asp:Content>
