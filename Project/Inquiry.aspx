<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="Project.Inquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <title>Inquiry</title>

        <!-- Bootstrap for Styling -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" />

        <style>
            body {
                background-color: #f8f9fa;
            }

            .package-form {
                max-width: 400px;
                margin: auto;
                margin-top: 0px;
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
        </style>
    </head>
    <body>
        <div id="form1" runat="server">
            <div class="package-form">
                <h3 class="text-center">Inquiry</h3>

                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Contact Number</label>
                    <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Package</label>
                    <asp:DropDownList ID="ddlpackage" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Selected Value" Value="Selected Value" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Basic" Value="Basic"></asp:ListItem>
                        <asp:ListItem Text="Advance" Value="Advance"></asp:ListItem>
                        <asp:ListItem Text="Standard" Value="Standard"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="mb-3">
                    <label class="form-label">Marriage Date</label>
                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Vanue</label>
                    <asp:TextBox ID="txtvanue" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Inquiry" CssClass="btn btn-dark" OnClick="btnSubmit_Click"/>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
