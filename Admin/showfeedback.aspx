﻿<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="showfeedback.aspx.cs" Inherits="showfeedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<br />
<br />
<h1>Show FeedBack</h1>
<hr />
<br />
    <asp:GridView ID="GridView1" runat="server" CssClass="table text-start align-middle table-bordered  mb-0" DataKeyNames="sno" 
        DataSourceID="s1" AutoGenerateDeleteButton="True"     RowStyle-Font-Bold="true" CellPadding="4"
    BorderStyle="None" BorderWidth="1px" BorderColor="#CCCCCC" BackColor="White" 
        ForeColor="Black" GridLines="Horizontal">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
<br />
</center>
    <asp:SqlDataSource ID="s1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\food.mdf;Integrated Security=True;User Instance=True"
        ProviderName="System.Data.SqlClient" SelectCommand="select * from feedback" DeleteCommand="delete from feedback where sno=@sno"> 
        </asp:SqlDataSource>
</asp:Content>

