<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectManager.Master" AutoEventWireup="true" CodeBehind="CompletedProject.aspx.cs" Inherits="AspEmployeeProject.CompletedProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdCompleteProject" runat="server" Height="293px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="664px">
</asp:GridView>
</asp:Content>
