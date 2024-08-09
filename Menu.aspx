<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Food Menu</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="default.aspx">Home</a></li>
                           
                            <li class="breadcrumb-item text-white active" aria-current="page">Menu</li>
                        </ol>
                    </nav>
                </div>
            </div>
      <!-- Menu Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h5 class="section-title ff-secondary text-center text-primary fw-normal">
                    Food Menu</h5>
                <h1 class="mb-5">
                    Most Popular Items</h1>
            </div>
            <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.1s">
                <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="s1">
                        <ItemTemplate>
                            <li class="nav-item">
                                <div class="d-flex align-items-center text-start mx-3 me-0 pb-3">
                                    <div class="ps-2">
                                        <small class="text-body"><a class="btn btn-primary py-1 px-3" href="foods.aspx?mn=<%# Eval("menu_name") %>">
                                            <i class="fa fa-utensils fa text"></i>
                                            <%# Eval("menu_name") %></a></small>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="s1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True"
                        ProviderName="System.Data.SqlClient" SelectCommand="select * from menu"></asp:SqlDataSource>
                </ul>
              
            </div>
        </div>
    </div>
    <!-- Menu End -->
</asp:Content>

