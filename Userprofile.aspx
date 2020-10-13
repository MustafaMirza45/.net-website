<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userprofile.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>





<asp:content ID="userskill" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

     <div class="container" >
         
         <div class="row">
                 <div class="col-md-8 mx-auto">
                    <div class="card">
                       <div class="card-body">
                          <div class="row">
                             <div class="col">
                                <center>
                                   <img width="100" src="imgs/generaluser.png"/>
                                </center>
                             </div>
                          </div>
                          <div class="row">
                             <div class="col">
                                <center>
                                   <h4>Member Data</h4>
                                </center>
                             </div>
                          </div>
                          <div class="row">
                             <div class="col">
                                <hr>
                             </div>
                          </div>
                          <div class="row">
                             <div class="col-md-12">
                                <label>Personal Statement</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="personalstatement" runat="server"  TextMode="MultiLine"></asp:TextBox>
                                </div>
                             </div>
                             <div class="col-md-12">
                                <label>Skills</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Skills" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                             </div>
                          </div>
                          <div class="row">
                             <div class="col-md-6">
                                <label>Required rate</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="rate" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                             </div>
                             <div class="col-md-6">
                                <label>Availability(hours a week)</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Availability" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                             </div>
                           </div>
                
                          <div class="row">
                             <div class="col">
                                <label>Experience(degree or years)</label>
                                <div class="form-group">
                                   <asp:TextBox class="form-control" ID="Experience" runat="server" ></asp:TextBox>
                                </div>
                             </div>
                          </div>
                          <div class="row">
                             <div class="col">
                                 <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-lg" ID="Button1"  runat="server" Text="Update" OnClick="update_Click"  CausesValidation="true"  />
                                     </div>
                                 </center>
                             </div>
                          </div>
                       </div>
                    </div>
                    <a href="User.aspx"><< Back to Home</a><br><br>
                 </div>
            
               
              </div>
                
               
           </div>
   

   
    
</asp:Content>


