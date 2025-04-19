<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBlog.aspx.cs" Inherits="OrthopedicKalyan.AdminBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h3>Manage Blogs</h3>

        <asp:Label ID="lblStatus" runat="server" CssClass="text-success"></asp:Label>

        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control mb-2" Placeholder="Blog Title" />
        <asp:TextBox ID="txtSummary" runat="server" CssClass="form-control mb-2" TextMode="MultiLine" Rows="3" Placeholder="Blog Summary" />
        <asp:TextBox ID="txtImageUrl" runat="server" CssClass="form-control mb-2" Placeholder="Image URL" />
        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success" Text="Add Blog" OnClick="btnAdd_Click" />

        <hr />
        <h5>Existing Blogs</h5>
        <asp:GridView ID="gvBlogs" runat="server" 
                      CssClass="table table-bordered mt-3" 
                      AutoGenerateColumns="false" 
                      OnRowCommand="gvBlogs_RowCommand" DataKeyNames="BlogID">
            <Columns>
                <asp:BoundField DataField="BlogID" HeaderText="ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="PostDate" HeaderText="Date" 
                               DataFormatString="{0:MM/dd/yyyy}" SortExpression="PostDate" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnDelete" runat="server"
                                    CommandName="DeleteBlog"
                                    CommandArgument='<%# Eval("BlogID") %>'
                                    Text="Delete"
                                    CssClass="btn btn-danger btn-sm"
                                    OnClientClick="return confirm('Are you sure you want to delete this blog?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
