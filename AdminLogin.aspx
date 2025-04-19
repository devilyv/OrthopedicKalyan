<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OrthopedicKalyan.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5" style="max-width: 400px;">
        <h3 class="mb-4 text-center">Admin Login</h3>

        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>

        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control mb-3" Placeholder="Username" />
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control mb-3" Placeholder="Password" TextMode="Password" />
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary w-10" OnClick="btnLogin_Click" />
    </div>
</asp:Content>
