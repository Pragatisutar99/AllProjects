<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectManager.Master" AutoEventWireup="true" CodeBehind="MProject.aspx.cs" Inherits="AspEmployeeProject.MProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdMProject" runat="server" Height="192px" OnSelectedIndexChanged="grdMProject_SelectedIndexChanged" Width="443px">
</asp:GridView>
</asp:Content>
