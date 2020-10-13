<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchEmployee.aspx.cs" Inherits="SearchEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container">
        <div class="row">
                 <div class="col-12 ">
                    <div class="card">
                       <div class="card-body">
                           <div class="row">
                             <div class="col">
                                 <center>
                                   
                                   <img src="imgs/employees_and_employers_really_value_at_work_5e944eb68d1c4.jpg" /><br />
                                    <span class="auto-style1"><strong>Search for a Trainee of your choice</strong></span>
                                </center>
                             </div>
                          </div>
                           <div class="row">
                             <div class="col-8 mr-auto form-group">
                                 
                                 <center>
                                     <asp:TextBox CssClass="form-control" ID="search1" runat="server"></asp:TextBox>
                                                                                                 
                                </center>
                             </div>
                               <div class="col-4 ml-auto form-group">
                                   <asp:Button CssClass="form-control" ID="searchbutton" runat="server" OnClick="search_click" Text="Search" Font-Bold="True" ForeColor="#33CC33" BackColor="#000000"/>  
                               </div>
                          </div>
                           
                        </div>
                    </div>
                  </div>
        </div>
         <div class="row">
                             <div class="col-12 justify-content-around">

                                 
                              
                                 <asp:GridView class=" table-bordered table-dark " ID="GridView1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" EditRowStyle-VerticalAlign="Middle" RowStyle-VerticalAlign="Middle" AlternatingRowStyle-VerticalAlign="Middle" FooterStyle-HorizontalAlign="Center" EmptyDataText="No Such Data found" ShowFooter="True" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                                     <AlternatingRowStyle BackColor="#666666" ForeColor="white" />
                                     
                                     <Columns >
                                         <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="130" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False" FooterStyle-HorizontalAlign="Center" FooterStyle-VerticalAlign="Middle" />
                                         <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False" />
                                         <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Social_security_number" HeaderText="Social_security_number" SortExpression="Social_security_number" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Personal_statement" HeaderText="Personal_statement" SortExpression="Personal_statement" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Required_rate" HeaderText="Required_rate" SortExpression="Required_rate" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                                         <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                                     </Columns>

                                    <EditRowStyle VerticalAlign="Middle"></EditRowStyle>

                                    <FooterStyle HorizontalAlign="Center"></FooterStyle>

                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle"></HeaderStyle>

                                    <RowStyle VerticalAlign="Middle"></RowStyle>
                                     
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:registraineeConnectionString %>" SelectCommand="SELECT RegisterationTrainee.FirstName, RegisterationTrainee.LastName, RegisterationTrainee.Email, RegisterationTrainee.State, RegisterationTrainee.Contact, RegisterationTrainee.Social_security_number, Traineeskills.Personal_statement, Traineeskills.Skills, Traineeskills.Required_rate, Traineeskills.Available, Traineeskills.Experience FROM RegisterationTrainee INNER JOIN Traineeskills ON RegisterationTrainee.ID = Traineeskills.ID WHERE (RegisterationTrainee.FirstName LIKE '%' + @box + '%') OR (RegisterationTrainee.LastName LIKE '%' + @box + '%') OR (RegisterationTrainee.State LIKE '%' + @box + '%') OR (Traineeskills.Skills LIKE '%' + @box + '%') OR (Traineeskills.Available LIKE '%' + @box + '%') OR (Traineeskills.Experience LIKE '%' + @box + '%')">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="search1" Name="box" PropertyName="text" type="String" DefaultValue="%"/>
                                     </SelectParameters>
                                 </asp:SqlDataSource>

                                 
                              
                              </div>
       

         </div>
    </div>
     
</asp:Content>

