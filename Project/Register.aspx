<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Libraries/Bootstrap/css/bootstrap.min.css" />
    <style>
        body {
            background-image: url('images/register-bg.jpg'); /* Add a background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            font-family: Arial, sans-serif;
        }

        .register-container {
            max-width: 450px;
            margin: auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }

        .btn-register {
            background-color: #007bff;
            color: white;
            font-size: 18px;
            width: 100%;
        }

            .btn-register:hover {
                background-color: #0056b3;
            }

        a {
            text-decoration: none;
            color: #007bff;
        }

            a:hover {
                text-decoration: underline;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="register-container">
            <h2>Register</h2>

            <div class="mb-1">
                <asp:Label ID="lblName" CssClass="form-label" runat="server" Text="Full Name"></asp:Label>
                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-1">
                <asp:Label ID="lblEmail" CssClass="form-label" runat="server" Text="Email ID"></asp:Label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format" ForeColor="Red"
                    ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w{2,4}$"></asp:RegularExpressionValidator>
            </div>

            <div class="mb-1">
                <asp:Label ID="lblGender" CssClass="form-label" runat="server" Text="Gender"></asp:Label>
                <asp:DropDownList ID="ddlGender" CssClass="form-select" runat="server">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender"
                    InitialValue="" ErrorMessage="Please select a gender" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="mb-1">
                <asp:Label ID="lblPhone" CssClass="form-label" runat="server" Text="Phone Number"></asp:Label>
                <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                    ErrorMessage="Invalid phone number" ForeColor="Red"
                    ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
            </div>

            <div class="mb-1">
                <asp:Label ID="lblPassword" CssClass="form-label" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password must be at least 6 characters, include a number and a special character"
                    ForeColor="Red"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$"></asp:RegularExpressionValidator>
            </div>

            <div class="mb-1">
                <asp:Label ID="lblConfirmPassword" CssClass="form-label" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm your password" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword"
                    ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            </div>

            <div class="d-grid">
                <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-register" Text="Register" OnClick="btnRegister_Click" />
            </div>

            <div class="text-center mt-1">
                <a href="Login.aspx">Already have an account? Login</a>
            </div>
        </div>
    </div>
</asp:Content>
