<%@ Page Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="chgqty.aspx.cs" Inherits="chgqty" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table>
 <tr>
 <td>
 FOOD CATEGORY:
 </td>
 <td>
     <asp:Label ID="category" runat="server" Font-Bold="true" Font-Size="Larger" ReadOnly="true"></asp:Label>
 </td>
 </tr>
 
 <tr>
 
 <td>
 FOOD NAME:
 
 </td>
 <td>
     <asp:Label ID="name" runat="server" Text="Label" Font-Bold="true" Font-Size="Large" ReadOnly="true"></asp:Label>
 </td>
 </tr>
 <tr>
 <td>
 IMAGE:
 </td>
 <td>
     <asp:Image ID="Image1" runat="server" Height="150" Width="150"/>
 </td>
 </tr>
 <tr>
 <td>
 PRICE:
 </td>
 <td>
     <asp:Label ID="price" runat="server" Text="Label" Font-Bold="true" Font-Size="Large" ReadOnly="true"></asp:Label>
 </td>
 </tr>
 <tr>
 <td>
 ENTER QUANTITY:
 </td>
 <td>
     <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="fill the quantity" ControlToValidate="txtqty"></asp:RequiredFieldValidator>
 </td>
 </tr>
<tr>
<td colspan="2" align="center" class="style2">
    <asp:Button ID="Button1" runat="server" Text="update qty" OnClick="button_click" Font-Bold="true" Font-Size="Medium" ForeColor="Indigo"/>
</td>
</tr>
</table>
</asp:Content>

