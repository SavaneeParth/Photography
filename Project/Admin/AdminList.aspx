<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="Project.Admin.AdminList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Center the Grid */
        .grid-container {
            width: 90%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* GridView Styling */
        .styled-grid {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            text-align: left;
            border-radius: 8px;
            overflow: hidden;
        }

        .styled-grid th {
            background-color: #343a40;
            color: white;
            padding: 12px;
            text-transform: uppercase;
            border: 1px solid #ddd;
        }

        .styled-grid td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .styled-grid tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        .styled-grid tr:hover {
            background-color: #d6e4ff;
            cursor: pointer;
        }

        /* Password Masking */
        .masked-password {
            font-family: Arial, sans-serif;
            font-size: 14px;
            letter-spacing: 3px;
            color: #888;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="grid-container">
        <h3>Admin List</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="styled-grid">
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" CssClass="masked-password" Text="******"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
