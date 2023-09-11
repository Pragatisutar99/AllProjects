<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="MasterPageDemo.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdCustomer" runat="server" OnSelectedIndexChanged="grdCustomer_SelectedIndexChanged">
    </asp:GridView>
</asp:Content>
