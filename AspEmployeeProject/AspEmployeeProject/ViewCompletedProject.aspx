<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewCompletedProject.aspx.cs" Inherits="AspEmployeeProject.ViewCompletedProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdViewCompleteProject" runat="server" Width="634px" OnSelectedIndexChanged="grdViewCompleteProject_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Pay" ShowHeader="True" Text="Pay" />
        </Columns>
</asp:GridView>
</asp:Content>
