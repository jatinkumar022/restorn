<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill_print.aspx.cs" Inherits="bill_print" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="3" cellpadding="5" cellspacing="5" 
        style="width: 376px; height: 297px;border-color:Maroon" >

<tr>
<td colspan="3" align="center">
    <asp:Label ID="Label1" runat="server" Text="Fast Food Restaurant" Font-Bold="true" Font-Size="Large" ForeColor="Indigo"></asp:Label>
</td>
</tr>
<tr>
<td colspan="2" align="right">
    <asp:Label ID="Label9" runat="server" Text="Date:" Font-Bold="true" Font-Size="Large"></asp:Label>
</td>
<td class="style2">
    <asp:Label ID="date" runat="server" ></asp:Label>
</td>
</tr>
<tr>
<td align="center" colspan="1">
    <asp:Label ID="name" runat="server" Text="Name:" Font-Bold="true" Font-Size="Large"></asp:Label>
</td>
<td  align="center">
    <asp:Label ID="unm" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
</td>
</tr>
<tr>
<td colspan="3">
    <asp:GridView ID="GridView1" runat="server"   BorderWidth="3"
      BorderColor="Indigo"
          DataSourceID="s1" CellPadding="10" 
        CellSpacing="10" Height="323px" style="margin-top: 0px" Width="442px" >
       
      
    </asp:GridView>
    <asp:SqlDataSource ID="s1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True"
    ProviderName="System.Data.SqlClient" >
     </asp:SqlDataSource>
   
</td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Label ID="Label7" runat="server" Text="total amount" Font-Bold="true" Font-Size="Large"></asp:Label>
</td>
<td class="style2" align="center">
    <asp:Label ID="total" runat="server" ></asp:Label>
</td>
</tr>

</table>
<br />
<br />
<center>
<asp:Button ID="Button1" runat="server" Text="Bill Print" OnClick="btnclick" Font-Bold="true" Font-Size="Medium" ForeColor="Indigo"/>

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:HyperLink ID="HyperLink1" runat="server" Text="Logout" NavigateUrl="~/logout.aspx" Font-Bold="true" Font-Size="Medium"></asp:HyperLink>
   </center>
    </div>
    </form>
</body>
</html>
