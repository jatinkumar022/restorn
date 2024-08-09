<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="foods.aspx.cs" Inherits="chinese" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-xxl py-5 bg-dark hero-header mb-5">
        <div class="container text-center my-5 pt-5 pb-4">
            <h1 class="display-3 text-white mb-3 animated slideInDown">
                Food Menu</h1>
            <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="default.aspx">Home</a></li>
                            <li class="breadcrumb-item"><a href="menu.aspx">Menu</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Food</li>
                        </ol>
                    </nav>
        </div>
    </div>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="s2">
        <ItemTemplate>
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                        <h5 class="section-title ff-secondary text-center text-primary fw-normal">
                            Menu</h5>
                        <h1 class="mb-5">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("menu_name") %>' Font-Bold="true"></asp:Label></h1>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" DataSourceID="s1" 
        Width="670px" > 
    
    <ItemTemplate>
    <div style="padding:4px 4px 4px 4px;background-color:#C0C0C0;margin:5px 5px 5px 5px;border-radius: 6%;">
  
          <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("food_pic") %>' Height="230" Width="230" style="border-radius: 7%;" />
         &nbsp;  &nbsp;  &nbsp;
            <center><h4><b><asp:Label ID="Label2" CssClass="section2-title " runat="server" Text='<%# Eval("food_name") %>' Font-Bold="true"></asp:Label></b></h4></center>
           <center><h6 class="section2-title">₹ <asp:Label ID="Label3" runat="server" Text='<%# Eval("food_price") %>' ></asp:Label></h6> </center>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 <!-- <asp:ImageButton ID="ImageButton1"     runat="server" CommandName="add" CommandArgument='<%# Eval("food_id") %>' OnCommand="btn_command" Height="30" Width="50"/></h6></td> &nbsp;&nbsp; -->
    <i class="fa fa-shopping-cart"></i> <asp:Button ID="Button1" runat="server" CssClass="btn curve btn-primary" CommandName="add" CommandArgument='<%# Eval("food_id") %>'  Text="Add To Cart" OnCommand="btn_command" Font-Bold="true" Font-Size="Smaller"/> 
       &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
   
   </div>
    </ItemTemplate>
    </asp:DataList>
        
        <asp:SqlDataSource ID="s1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True"
            ProviderName="System.Data.SqlClient" SelectCommand="select * from food_items">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="s2" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True"
            ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
</asp:Content>
