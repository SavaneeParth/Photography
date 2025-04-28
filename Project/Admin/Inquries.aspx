<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Inquries.aspx.cs" Inherits="Project.Admin.Inquries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Center the GridView */
        .grid-container {
            width: 80%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        /* GridView Styling */
        .styled-grid {
            width: 100%;
            border-collapse: collapse;
        }

        .styled-grid th, .styled-grid td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .styled-grid th {
            background: #343a40;
            color: white;
        }

        .styled-grid tr:nth-child(even) {
            background: #f8f9fa;
        }

        .styled-grid tr:hover {
            background: #e9ecef;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="grid-container">
        <h3 class="text-center">Inquiries</h3>
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

                <asp:TemplateField HeaderText="ContactNumber">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Package") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MarriageDate">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MarriageDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Venue">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Venue") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
