<%@ Page Language="C#" AutoEventWireup="true" CodeFile="companyregisteration.aspx.cs" Inherits="companyregisteration"   MasterPageFile="~/MasterPage.master"  %>






<asp:content ID="companycontent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        
   
        
        <div >
           
                         
            <asp:Label ID="pagename" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Black" Text="REGISTER YOUR COMPANY"></asp:Label>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>User Name</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="UNc" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <strong>
                        <asp:RequiredFieldValidator ID="uservalc" runat="server" ErrorMessage="User name is required" ControlToValidate="UNc" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Company E-mail</strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="emailc" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <strong>
                        <asp:RequiredFieldValidator ID="validemailc" runat="server" ErrorMessage="Please enter E-mail" ControlToValidate="emailc" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="requirevalemailc" runat="server" ErrorMessage="Email is not valid" ForeColor="Red" ControlToValidate="emailc" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17"><strong>Manager Name</strong></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="manager" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <strong>
                        <asp:RequiredFieldValidator ID="mname" runat="server" ErrorMessage="Manager Name required" ControlToValidate="manager" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Company Name</strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="cname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <strong>
                        <asp:RequiredFieldValidator ID="comname" runat="server" ErrorMessage="Company Name required" ControlToValidate="cname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Branch ID</strong></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Branchid" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <strong>
                        <asp:RequiredFieldValidator ID="bid" runat="server" ErrorMessage="Branch ID is required" ControlToValidate="Branchid" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>Password</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="passc" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <strong>
                        <asp:RequiredFieldValidator ID="passwordvalid" runat="server" ErrorMessage="Password is required" ControlToValidate="passc" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Confirm Password</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="passrc" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="conpass" runat="server" ErrorMessage="Confirm password is required" ControlToValidate="passrc" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="matchpass" runat="server" ControlToCompare="passc" ControlToValidate="passrc" ErrorMessage="passwords do not match" ForeColor="Red"></asp:CompareValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>State</strong></td>
                    <td  class="auto-style6">
                        <asp:TextBox id="cityc" runat="server" Width="200px" ></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter a state" ControlToValidate="cityc" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" ><strong>Address</strong></td>
                    <td  class="auto-style5">
                        <asp:TextBox id="addressc" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td class="auto-style23" >
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Address is required" ControlToValidate="addressc" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Contact.no</strong></td>
                    <td class="auto-style6">
                        <asp:TextBox ID="contactc" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Contact info is required" ControlToValidate="contactc" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">
            <asp:Button ID="submitc" runat="server" Text="Submit" Width="87px" OnClick="submitc_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="Resetc" class="auto-style6" type="reset" value="reset" />&nbsp; </td>
                    <td class="auto-style3">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style24">
        
            <asp:Button ID="backc" runat="server" Font-Bold="True" OnClick="backc_Click" Text="Back" Width="90px" CausesValidation="false" />
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

