<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="AspEmployeeProject.PaymentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="grdPayment" runat="server" Height="239px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="648px">
        <Columns>
            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Delete" ShowHeader="True" Text="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>
