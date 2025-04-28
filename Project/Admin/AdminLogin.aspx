<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Project.Admin.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .admin-login-panel {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-form {
            width: 350px;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .login-alert {
            position: absolute;
            bottom: 10px;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="admin-login-panel">
            <div class="login-form text-center">
                <asp:Panel ID="LoginPanel" runat="server">
                    <asp:UpdatePanel ID="LoginUpdatePanel" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <h4 class="bg-dark text-white py-3">ADMIN LOGIN PANEL</h4>
                            
                            <!-- Alert Message -->
                            <asp:Label ID="LoginAlert" runat="server" CssClass="alert alert-danger login-alert" Visible="false"></asp:Label>

                            <div class="mb-3">
                                <asp:TextBox ID="AdminNameTextBox" runat="server" CssClass="form-control shadow-none text-center"
                                             placeholder="Admin Name" required></asp:TextBox>
                            </div>

                            <div class="mb-4">
                                <asp:TextBox ID="AdminPassTextBox" runat="server" TextMode="Password" CssClass="form-control shadow-none text-center"
                                             placeholder="Password" required></asp:TextBox>
                            </div>

                            <asp:Button ID="LoginButton" runat="server" Text="LOGIN" CssClass="btn btn-success w-100" OnClick="LoginButton_Click"/>

                            <div class="mt-3">
                                <a href="AdminRegister.aspx" class="register-link">Create an Account</a><br /><br />
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" CssClass="text-decoration-none">
                                    <i class="fas fa-arrow-left"></i> Back to Main Login
                                </asp:HyperLink>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
