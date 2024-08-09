<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container-xxl py-5 bg-dark hero-header mb-5">
                <div class="container text-center my-5 pt-5 pb-4">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Feedback</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="default.aspx">Home</a></li>
                            
                            <li class="breadcrumb-item text-white active" aria-current="page">Feedback</li>
                        </ol>
                    </nav>
                </div>
            </div>

        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-primary fw-normal">Feedback</h5>
                    <h1 class="mb-5">Tell us About your experience!!</h1>
                </div>
                <center>
                    <div class="col-md-7">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <form>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                               <asp:TextBox ID="unm" CssClass="form-control" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="please enter name" ControlToValidate="unm" Display="Dynamic">
    </asp:RequiredFieldValidator>
                                            <label for="name">Username</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="email"  CssClass="form-control" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Text="please enter email" ControlToValidate="email" Display="Dynamic">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        Text="please enter proper email" ControlToValidate="email" Display="Dynamic"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                            <label for="email">Your Email</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                             <asp:TextBox ID="TextBox3"  CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="enter contact number" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Text="enter only numbers" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                            <label for="subject">Contact No</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="enter message" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                            <label for="message">Message</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                     <asp:Button ID="Button1" runat="server" Text="SEND"  CssClass="btn btn-primary w-100 py-3"  onclick="Button1_Click" />
                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div></center>
                </div>
            </div>
        </div>
        <!-- Contact End -->


</asp:Content>

