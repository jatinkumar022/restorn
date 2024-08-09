<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
 <br />
 <center>
      <h1>CHECKOUT FORM:</h1>
            
       </center>
       <hr />
       <br />
       <br />
       <table cellpadding="5" cellspacing="5" align="center">
       
       <tr>
       <td>
           <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
       </td>
       <td>
           <asp:TextBox ID="username" runat="server" ReadOnly="true"></asp:TextBox>
       </td>
       </tr>
       
       <tr>
       <td>
           <asp:Label ID="Label2" runat="server" Text="place Address"></asp:Label>
       </td>
       <td>
        <asp:TextBox ID="address" runat="server" CausesValidation="true"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="address" Text="fill the address"></asp:RequiredFieldValidator>
       </td>
       </tr>
       
       <tr>
       <td>
       <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
       </td>
       <td>
        <asp:TextBox ID="city" runat="server" ReadOnly="true"></asp:TextBox>
       </td>
       </tr>
       
       <tr>
       <td>
       <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
       </td>
       <td>
        <asp:TextBox ID="email" runat="server" ReadOnly="true"></asp:TextBox>
       </td>
       </tr>
       
       <tr>
       <td>
       <asp:Label ID="Label5" runat="server" Text="Mobile-No"></asp:Label>
       </td>
       <td>
        <asp:TextBox ID="mno" runat="server" ReadOnly="true"></asp:TextBox>
       </td>
       </tr>
       
       
      <tr>
      
      <td colspan="2" align="center">
      <u>
       <asp:Label ID="Label14" runat="server" Text="Payment Method"></asp:Label>
     </u>
      </td>
      <table cellpadding="5" cellspacing="5" align="center">
      <td>
          <asp:RadioButton ID="RadioButton1" runat="server"  Text="Credit Card" AutoPostBack="true"
              GroupName="pay" oncheckedchanged="RadioButton1_CheckedChanged" CausesValidation="true"/>
      </td>
      </tr>
      <tr>
      <td>
          <asp:Label ID="Label11" runat="server" Text="Credit Card Owner name"></asp:Label>
      </td>
      <td>
          <asp:TextBox ID="ownername" runat="server" Enabled="false" CausesValidation="true"></asp:TextBox>
         <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="please enter name" ControlToValidate="ownername"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="enter proper name" ValidationExpression="^[a-zA-Z]*$" ControlToValidate="ownername"></asp:RegularExpressionValidator>
         --%>
          </td>
      </tr>
      <tr>
      <td>
          <asp:Label ID="Label12" runat="server" Text="Credit Card Number"></asp:Label>
      </td>
      <td>
          <asp:TextBox ID="cardno" runat="server" Enabled="false"></asp:TextBox>
          <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cardno" Text="please enter card number"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Text="enter only numbers" ControlToValidate="cardno" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>--%>
      </td>
      </tr>
      <tr>
      <td>
      <asp:Label ID="Label13" runat="server" Text="Credit Card Expiry Date"></asp:Label>
      </td>
      <td>
          <asp:TextBox ID="expdate" runat="server" Enabled="false"></asp:TextBox>
         <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="expdate" Text="please enter expiry date"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" Text="enter only date" Type="Date" ControlToValidate="expdate"></asp:CompareValidator>
          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="expdate" Text="enter only date" Type="Date" MinimumValue="01/01/1990" MaximumValue="01/01/2030"></asp:RangeValidator>--%>
      </td>
      </tr>
      <tr>
      <td>
          <asp:RadioButton ID="RadioButton2" runat="server" Text="Cash On Delivery" AutoPostBack="true"
              GroupName="pay" oncheckedchanged="RadioButton2_CheckedChanged" CausesValidation="false"/>
      </td>
      </tr>
        </tr>
       <tr align="center">
       <td colspan="2" align="center">
         <asp:Button ID="Button1" runat="server" Text="Bill" Font-Bold="true" 
               Font-Size="Large" ForeColor="Indigo" Width="84px" 
               onclick="Button1_Click" />
       </td>
       </tr>
      </table>
     
       
       
       </table>
   
  
    
       
       
</asp:Content>

