<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AllProject.aspx.cs" Inherits="AspEmployeeProject.AllProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvallProjecrs" runat="server" Height="254px" Width="571px" OnSelectedIndexChanged="grdAllProject_SelectedIndexChanged">
    </asp:GridView>
</asp:Content>
