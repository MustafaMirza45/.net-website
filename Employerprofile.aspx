<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Employerprofile.aspx.cs" Inherits="Employerprofile" %>

<asp:Content ID="eprog" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Company Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100" src="imgs/writer.png" />
                            <asp:TextBox ID="guid" runat="server" Visible="False"></asp:TextBox>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Job</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="job name"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>minimum Salary</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="salary"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-md-6">
                        <label>minimum hours(per week)</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="min hours"></asp:TextBox>
                              
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6 justify-content-center">
                        <div class="form-group">
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Vacancy" />
                           
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" CausesValidation="True" OnClick="Button2_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="user.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Jobs List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:registraineeConnectionString %>" SelectCommand="SELECT job_name, minimum_salary, min_hours, vacant FROM Employerjobs WHERE (ID =  @id )">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="guid" Name="id" PropertyName="Text" type="String" Size="36" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource" >
                           <Columns>
                              <asp:BoundField DataField="job_name" HeaderText="job_name" SortExpression="job_name" />
                              <asp:BoundField DataField="minimum_salary" HeaderText="minimum_salary" SortExpression="minimum_salary" />
                               <asp:BoundField DataField="min_hours" HeaderText="min_hours" SortExpression="min_hours" />
                                <asp:BoundField DataField="vacant" HeaderText="vacant" SortExpression="vacant" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
      <div>
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>

