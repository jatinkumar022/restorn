<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true"
    CodeFile="user.aspx.cs" Inherits="user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-xxl py-5 bg-dark hero-header mb-5">
    </div>
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h1 class="mb-5 section-title text-primary ">
                    ENTER QUANTITY</h1>
            </div>
        </div>
    </div>
   




    <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-start">
                                 <asp:Image CssClass="img-fluid rounded w-100 wow zoomIn" ID="Image1" runat="server" Height="250" Width="250" />
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <h5 class="section-title ff-secondary text-start text-primary fw-normal">FOOD CATEGORY:</h5>
                        <h1 class="mb-4"> <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Larger" ReadOnly="true"></asp:Label></h1>

                            FOOD CATEGORY:&nbsp;
                       
                            <asp:Label ID="Label3" runat="server" Font-Bold="true" Font-Size="Larger" ReadOnly="true"></asp:Label>
                       <br />
                            FOOD NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                            <asp:Label ID="name" runat="server" Text="Label" Font-Bold="true" Font-Size="Large"></asp:Label>
                       <br />
                            PRICE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                            <asp:Label ID="price" runat="server" Text="Label" Font-Bold="true" Font-Size="Large"
                                ReadOnly="true"></asp:Label>
                       <br />
                            ENTER QUANTITY:&nbsp;
                      
                            <asp:TextBox ID="txtqty" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="fill the quantity"
                                ControlToValidate="txtqty"></asp:RequiredFieldValidator>
                         <br />
                        <div class="row g-4 mb-4">
                          <br />
                           
                        </div>
                      
                            <asp:Button ID="Button3" CssClass="btn-primary btn  btn-lg"  runat="server" Text="add to cart" OnClick="Button3_Click" />
                       <br />  <br />  <br />
                            <asp:Button ID="Button1" CssClass="btn-secondary btn btn-sm"  runat="server" Text="Continue Shopping" OnClick="Button1_Click" />
                      
                            <asp:Button ID="Button2" CssClass="btn-info btn btn-sm" runat="server" ForeColor="white" Text="View Cart" OnClick="Button2_Click"
                                CausesValidation="false" />
                       
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
