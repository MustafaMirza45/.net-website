<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobsearch.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row">
                 <div class="col-md-12 mx-auto">
                    <div class="card">
                       <div class="card-body">
                           <div class="row">
                             <div class="col">
                                 <center>
                                   <img src="imgs/images%20(1).jpg" />
                                  <br />
                                    <span class="auto-style1"><strong>Search for your desired job</strong></span>
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
                           <div class="row">
                             <div class="col-10 mx-auto">

                                 
                              
                                 <asp:GridView class=" table-bordered table-dark " ID="GridView1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" EditRowStyle-VerticalAlign="Middle" RowStyle-VerticalAlign="Middle" AlternatingRowStyle-VerticalAlign="Middle" FooterStyle-HorizontalAlign="Center" EmptyDataText="No Such Data found" ShowFooter="True" AutoGenerateColumns="False" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle">
                                     <AlternatingRowStyle BackColor="#666666" ForeColor="white" />
                                     
                                     <Columns >
                                         <asp:BoundField DataField="CompanyName" HeaderText="Company" SortExpression="CompanyName" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="130" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False" FooterStyle-HorizontalAlign="Center" FooterStyle-VerticalAlign="Middle" />
                                         <asp:BoundField DataField="ManagerName" HeaderText="Manager" SortExpression="ManagerName" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False" />
                                         <asp:BoundField DataField="job_name" HeaderText="Job" SortExpression="job_name" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="minimum_salary" HeaderText="Minimum salary" SortExpression="minimum_salary" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="min_hours" HeaderText="Minimum hours" SortExpression="min_hours" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Contact_no" HeaderText="Contact.no" SortExpression="Contact_no" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="CompanyEmail" HeaderText="Company Email" SortExpression="CompanyEmail" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                         <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ItemStyle-Width="120" HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" HeaderStyle-Wrap="False"/>
                                     </Columns>

<EditRowStyle VerticalAlign="Middle"></EditRowStyle>

<FooterStyle HorizontalAlign="Center"></FooterStyle>

<RowStyle VerticalAlign="Middle"></RowStyle>
                                     
                                 </asp:GridView>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:registraineeConnectionString %>" SelectCommand="SELECT Employerregisteration.CompanyName, Employerregisteration.ManagerName, Employerjobs.job_name, Employerregisteration.State, Employerjobs.minimum_salary, Employerjobs.min_hours, Employerregisteration.Contact_no, Employerregisteration.CompanyEmail, Employerregisteration.Address FROM Employerjobs INNER JOIN Employerregisteration ON Employerjobs.ID = Employerregisteration.Id WHERE (Employerregisteration.CompanyName LIKE '%' + @box + '%') OR (Employerregisteration.ManagerName LIKE '%' + @box + '%') OR (Employerjobs.job_name LIKE '%' + @box + '%') OR (Employerregisteration.State LIKE '%' + @box + '%')">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="search1" Name="box" PropertyName="text" type="String" DefaultValue="%"/>
                                     </SelectParameters>
                                 </asp:SqlDataSource>

                                 
                              
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

