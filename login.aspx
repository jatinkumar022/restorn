<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class="container-xxl py-5 bg-dark hero-header mb-5"></div>

        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                           
                                <h3 class="text-primary">Log-In</h3>
                           
                           
                        </div>
                        <div class="form-floating mb-3">
                             <asp:TextBox ID="username" CssClass="form-control" runat="server"></asp:TextBox>
                            <label for="floatingInput">Email address</label>
                        </div>
                        <div class="form-floating mb-4">
                            <asp:TextBox ID="password" CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                            <label for="floatingPassword">Password</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                           
                         
                        </div>
                         <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary py-3 w-100 mb-4" onclick="Button1_Click" />  
                       
                        <p class="text-center mb-0">Don't have an Account? <a href="register.aspx">Sign Up</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign In End -->
    </div>


</asp:Content>
