<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />
 <br />
 <center>
      <h1>CART DETAIL:</h1>
            
       </center>
       <hr />
       <br />
       <br />
   
        
        
     <asp:GridView ID="GridView1" runat="server"  BorderColor="#CCCCCC" BorderWidth="1px"
      DataKeyNames="cart_id"
          DataSourceID="s1" CellPadding="4" onrowcommand="GridView1_RowCommand" 
        onrowediting="GridView1_RowEditing" onrowupdated="GridView1_RowUpdated" 
        BackColor="White" BorderStyle="None" ForeColor="Black" GridLines="Horizontal" 
        Width="478px">
       
      <Columns>
        <asp:TemplateField>
            <ItemTemplate>
            <%--<asp:Button runat="server" CommandName="delete" CommandArgument='<%# Bind("food_id") %>' Text="delete" ID="Button1" />
            <asp:Button runat="server" CommandName="update" CommandArgument='<%# Bind("food_id") %>' Text="change qty" ID="Button12" />
     --%>
     
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" CommandArgument='<%# Bind("food_id") %>' Text="Delete" ></asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" CommandArgument='<%# Bind("food_id") %>' Text="Update"></asp:LinkButton>
                </ItemTemplate>
        </asp:TemplateField>
        
      </Columns>
         <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
         <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
         <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F7F7F7" />
         <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
         <SortedDescendingCellStyle BackColor="#E5E5E5" />
         <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="s1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True"
    ProviderName="System.Data.SqlClient" 
     ></asp:SqlDataSource>
   <br />
   <br />
   <br />
 <center>
     <asp:HyperLink ID="HyperLink1" runat="server" Text="Continue Shopping" NavigateUrl="~/foods.aspx?mn=gujarati" Font-Bold="true" Font-Size="Large"></asp:HyperLink>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Text="Checkout" NavigateUrl="~/checkout.aspx" Font-Bold="true" Font-Size="Large"></asp:HyperLink>
 </center>

</asp:Content>

