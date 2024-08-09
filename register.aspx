<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Sign Up Start -->  <div class="container-xxl py-5 bg-dark hero-header mb-5"></div>
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                          
                                <h3 class="text-primary">Sign Up</h3>
                            
                            
                        </div>
                        <div class="form-floating mb-3">
                            <asp:TextBox ID="unm" CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="please enter name" ControlToValidate="unm">
    </asp:RequiredFieldValidator>
                            <label for="floatingText">Username</label>
                        </div>
                        <div class="form-floating mb-3">
                             <asp:TextBox ID="addr" CssClass="form-control"  runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="please enter address" ControlToValidate="addr">
    </asp:RequiredFieldValidator>
                            <label for="floatingInput">Address</label>
                        </div>
                        <div class="form-floating mb-3">
                             <asp:DropDownList CssClass="form-control"  ID="d1" runat="server">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Text="please enter city" ControlToValidate="d1">
    </asp:RequiredFieldValidator>
   
                            <label for="floatingInput">City</label>
                        </div>
                        <div class="form-floating mb-3">
                           <asp:TextBox ID="email" CssClass="form-control"  runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="please enter email" ControlToValidate="email">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        Text="please enter proper email" ControlToValidate="email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                            <label for="floatingInput">Email address</label>
                        </div>

                       <div class="form-floating mb-3">
                           <asp:RadioButton ID="gen1"  CssClass="form-control"  runat="server" Text="male" GroupName="gender" 
         Font-Bold="true" Font-Size="Medium" AutoPostBack="true"
        oncheckedchanged="gen1_CheckedChanged"/>
    <asp:RadioButton  CssClass="form-control" ID="gen2" runat="server" Text="female" GroupName="gender" 
        Font-Bold="true" Font-Size="Medium" AutoPostBack="true"
        oncheckedchanged="gen2_CheckedChanged"/>
    
                            <label for="floatingInput">Gender</label>
                        </div>
                        <div class="form-floating mb-4">
                             <asp:TextBox ID="no" runat="server"  CssClass="form-control"  MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Text="please enter mobile number" ControlToValidate="no">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="no" Text="enter only number" ValidationExpression="^[0-9]*$">
    </asp:RegularExpressionValidator>
                            <label for="floatingPassword">Mobile</label>
                        </div>




                        <div class="form-floating mb-4">
                              <asp:TextBox ID="pwd" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="please enter password" ControlToValidate="pwd">
    </asp:RequiredFieldValidator>
                            <label for="floatingPassword">Password</label>
                        </div>
                         <div class="form-floating mb-4">
                                <asp:TextBox ID="confpwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" Text="please enter password" ControlToValidate="confpwd">
    </asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" Text="please enter correct password" ControlToCompare="pwd" ControlToValidate="confpwd" Type="String" Operator="Equal">
    </asp:CompareValidator>
                            <label for="floatingPassword">Confirm Password</label>
                        </div>

                         <asp:Button ID="btn_register" CssClass="btn btn-primary py-3 w-100 mb-4" runat="server" Text="Sign Up"  onclick="btn_register_Click"/>



                        
                        <p class="text-center mb-0">Already have an Account? <a href="login.aspx">Login</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign Up End -->
    </div>
    </asp:Content>

