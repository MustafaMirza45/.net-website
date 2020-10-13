<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employerlogin.aspx.cs" Inherits="Employeelogin" MasterPageFile="~/MasterPage.master" %>

<asp:content ID="employee" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table >
            <tr>
                <td ></td>
                <td >
                    <img src="imgs/generaluser.png" width="200" height="200"/>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td >&nbsp;</td>
                <td >
                   
                    <div class="text-center">
                        <strong><span class="auto-style3">Company Login </span></strong></div>
                   </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td ><strong>USERNAME:</strong></td>
                <td >
                    <asp:TextBox ID="Usernamelogine" runat="server" Width="188px" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="userlogvalid" runat="server" ControlToValidate="Usernamelogine" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td ><strong>PASSWORD:</strong></td>
                <td >
                    <asp:TextBox ID="Passwordloge" runat="server" TextMode="Password" Width="187px" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Passwordloge" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="auto-style4">
                        <strong>
                        <asp:Button ID="Btnlogine" runat="server" CssClass="auto-style12" Font-Bold="True" OnClick="Btnlogin_Click" Text="login" Width="120px" />
                        </strong>
                    </div>
                    </td>
                <td ></td>
            </tr>
            
        </table>
     
 </asp:content>
  <asp:Content ID="Co2" runat="server" contentplaceholderid="head">
      <style type="text/css">
          .auto-style1 {
              height: 26px;
          }
          .auto-style3 {
              font-size: large;
          }
      .auto-style4 {
        -ms-flex-pack: center!important;
        justify-content: center!important;
        text-align: center;
    }
      </style>
</asp:Content>

  