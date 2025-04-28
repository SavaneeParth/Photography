<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Libraries/Bootstrap/css/bootstrap.min.css" />
    <style>
        body {
            background-image: url('images/background.jpg'); /* Add a background image */
            background-size: cover;
            background-position: center;
            height: 100vh;
        }

        .login-container {
            max-width: 400px;
            margin: auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            color: #009933;
            text-align: center;
        }

        .btn-login {
            background-color: #00CC66;
            color: white;
            font-size: 18px;
        }

            .btn-login:hover {
                background-color: #009933;
            }

        a {
            text-decoration: none;
            color: #009933;
        }

            a:hover {
                text-decoration: underline;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
        <div class="login-container">
            <h1>Login</h1>
            <div class="mb-3">
                <asp:Label ID="email" CssClass="form-label" runat="server" Text="Email Address"></asp:Label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="pass" CssClass="form-label" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <center>
                <div class="d-grid">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-login" Text="Login" OnClick="Button1_Click" />
                </div>
            </center>

            <div class="text-center mt-3">
                <a href="Register.aspx">Register now</a>
            </div>
        </div>
    </div>
</asp:Content>
