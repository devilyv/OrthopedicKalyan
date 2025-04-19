<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="OrthopedicKalyan.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .summary {
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            transition: all 0.3s ease;
        }

        .summary.expanded {
            -webkit-line-clamp: unset;
        }

        .read-more-link {
            font-size: 0.9rem;
            color: #007bff;
            cursor: pointer;
        }
    </style>

    <div class="container mt-4">
        <h2 class="mb-4">Latest Blogs</h2>

        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control mb-2" Placeholder="Search blog..." />
        <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary mb-4" Text="Search" OnClick="btnSearch_Click" />

        <asp:Repeater ID="rptBlogs" runat="server">
    <ItemTemplate>
        <div class="card mb-4 shadow">
            <!-- Update Eval to use BlogId -->
            <img src='<%# Eval("ImageUrl") %>' class="card-img-top" alt="Blog Image" style="max-height: 250px; object-fit: cover;" />
            <div class="card-body">
                <!-- Update Eval to use BlogId -->
                <h5 class="card-title"><%# Eval("Title") %></h5>
                <!-- Update Eval to use BlogId -->
                <p id='summary_<%# Eval("BlogId") %>' class="card-text summary"><%# Eval("Summary") %></p>
                <a href="javascript:void(0);" class="read-more-link" onclick="toggleSummary('<%# Eval("BlogId") %>', event)">Read More</a>
                <span class="text-muted float-end"><%# String.Format("{0:dd MMM yyyy}", Eval("PostDate")) %></span>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

    </div>

    <script type="text/javascript">
        function toggleSummary(blogId) {
            var para = document.getElementById("summary_" + blogId);
            var link = event.target;
            if (para.classList.contains("expanded")) {
                para.classList.remove("expanded");
                link.innerText = "Read More";
            } else {
                para.classList.add("expanded");
                link.innerText = "Read Less";
            }
        }
    </script>
</asp:Content>
