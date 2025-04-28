<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Package.aspx.cs" Inherits="Project.Admin.Add_Package" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Page Background */
        body {
            background-color: #f8f9fa;
        }

        /* Form Container */
        .package-form {
            max-width: 500px;
            margin: auto;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

            .package-form h3 {
                text-align: center;
                font-weight: bold;
                margin-bottom: 20px;
                color: #343a40;
            }

        /* Input Styling */
        .form-control {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
            font-size: 14px;
        }

            .form-control:focus {
                border-color: #007bff;
                box-shadow: 0px 0px 5px rgba(0, 123, 255, 0.2);
            }

        /* Button Styling */
        .btn-dark {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
        }

            .btn-dark:hover {
                background-color: #343a40;
                transform: scale(1.05);
            }

        /* GridView Styling */
        .grid-container {
            width: 90%;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

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
                text-align: center;
            }

            .styled-grid td {
                padding: 10px;
                border: 1px solid #ddd;
                text-align: center;
            }

            .styled-grid tr:nth-child(even) {
                background-color: #f8f9fa;
            }

            .styled-grid tr:hover {
                background-color: #d6e4ff;
                cursor: pointer;
            }

        /* Link Buttons */
        .link-btn {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }

            .link-btn:hover {
                color: #0056b3;
                text-decoration: underline;
            }

        /* Image Styling */
        .grid-img {
            height: 50px;
            width: 50px;
            border-radius: 5px;
            object-fit: cover;
            border: 1px solid #ddd;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="package-form">
        <h3>Add Photography Package</h3>

        <div class="mb-3">
            <label class="form-label">Package Name</label>
            <asp:TextBox ID="txtPackageName" runat="server" CssClass="form-control" required></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Image</label>
            <asp:FileUpload ID="img" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label class="form-label">Max Photos</label>
            <asp:TextBox ID="txtMaxPhotos" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Retouched Photos</label>
            <asp:DropDownList ID="ddlRetouched" runat="server" CssClass="form-control">
                <asp:ListItem Text="Selected Value" Value="Selected Value" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="mb-3">
            <label class="form-label">Make-up</label>
            <asp:DropDownList ID="ddlMakeup" runat="server" CssClass="form-control">
                <asp:ListItem Text="Selected Value" Value="Selected Value" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="mb-3">
            <label class="form-label">Stylist Assistance</label>
            <asp:DropDownList ID="ddlStylist" runat="server" CssClass="form-control">
                <asp:ListItem Text="Selected Value" Value="Selected Value" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                <asp:ListItem Text="No" Value="No"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="mb-3">
            <label class="form-label">Price (₹)</label>
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
        </div>

        <div class="text-center">
            <asp:Button ID="btnSubmit" runat="server" Text="AddPackage" CssClass="btn btn-dark" OnClick="btnSubmit_Click" />
        </div>
    </div>

    <div class="grid-container">
        <h3>Package List</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="styled-grid" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="50" Width="50" ImageUrl='<%# Eval("Image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Photos">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Photos") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Retouchphoto">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Retouchphoto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Makeup">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Makeup") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Stylist">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Stylist") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
