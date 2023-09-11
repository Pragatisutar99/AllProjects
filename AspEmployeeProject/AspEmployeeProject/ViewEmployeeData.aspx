<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ViewEmployeeData.aspx.cs" Inherits="AspEmployeeProject.ViewEmployeeData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdViewImg" runat="server" Height="209px" Width="565px" OnSelectedIndexChanged="grdViewImg_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="View" ShowHeader="True" Text="View" />
        </Columns>
</asp:GridView>
</asp:Content>
