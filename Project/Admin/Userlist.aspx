<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Userlist.aspx.cs" Inherits="Project.Admin.Userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Container Styling */
        .grid-container {
            width: 90%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* GridView Styling */
        .styled-grid {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            text-align: left;
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
            background-color: #f2f2f2;
        }

        .styled-grid tr:hover {
            background-color: #d6e4ff;
            cursor: pointer;
        }

        /* Hide Passwords for Security */
        .masked-password {
            font-family: Arial, sans-serif;
            font-size: 14px;
            letter-spacing: 3px;
            color: #888;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-container">
        <h3>User List</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="styled-grid">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" CssClass="masked-password" Text="********"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Confirm Password">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" CssClass="masked-password" Text="********"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
