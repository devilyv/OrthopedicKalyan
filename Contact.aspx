<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OrthopedicKalyan.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="mb-4">Contact Us</h2>
    <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
    <div class="row">
        <div class="col-md-6">
            <!-- Name Input -->
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" placeholder="Your Name" />
            
            <!-- Email Input -->
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" placeholder="Your Email" />
            
            <!-- Message Input -->
            <asp:TextBox ID="txtMessage" TextMode="MultiLine" Rows="5" runat="server" CssClass="form-control mb-3" placeholder="Your Message" />
            
            <!-- Send Message Button -->
            <asp:Button ID="btnSend" runat="server" Text="Send Message" CssClass="btn btn-primary" OnClick="btnSend_Click" />
        </div>
        
        <div class="col-md-6">
            <h5>Visit Our Clinic</h5>
            <p>123 Main Road, Kalyan, Maharashtra</p>
            <p>Email: 360degreemediaconnect@gmail.com</p>
            <p>Phone: +91 8485034724</p>
            
            
        </div>
    </div>
</asp:Content>
