<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="ManageCategory.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel"> 
                        <header class="panel-heading">
                           Manage Categories
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Category</label>
                                    <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="Enter category"></asp:TextBox>
                                    
                                </div>
                                     <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                 
                                </div>
                                <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-info" 
                                    onclick="Button3_Click1"></asp:Button>
                                <div class="checkbox">
                                    <label>
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </label>
                                </div>
                                  <div class="checkbox">

                                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                          CellPadding="20" ForeColor="#333333" Width="583px">
                                          <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" 
                                              VerticalAlign="Middle" />
                                          <Columns>
                                              <asp:TemplateField HeaderText="Id">
                                                  <ItemTemplate>
                                                      <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Category">
                                                  <ItemTemplate>
                                                      <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("category") %>'></asp:Literal>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Status">
                                                  <ItemTemplate>
                                                      <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Delete">
                                                  <ItemTemplate>
                                                      <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                          onclick="Button4_Click" Text="Delete" />
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                              <asp:TemplateField HeaderText="Edit">
                                                  <ItemTemplate>
                                                      <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                          onclick="Button5_Click" Text="Edit" />
                                                  </ItemTemplate>
                                              </asp:TemplateField>
                                          </Columns>
                                          <EditRowStyle BackColor="#2461BF" />
                                          <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                          <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                                              HorizontalAlign="Center" VerticalAlign="Middle" />
                                          <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                          <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                          <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                          <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                          <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                          <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                          <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                      </asp:GridView>

                                 </div>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
           
        </div>
<!-- page end-->
        </div>
</section>
</asp:Content>

