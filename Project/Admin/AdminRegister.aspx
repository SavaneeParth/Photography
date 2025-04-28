<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="Project.Admin.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adminn Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .admin-Register-panel {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .Register-form {
            width: 350px;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .Register-alert {
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
        <div class="admin-Register-panel">
            <div class="Register-form text-center">
                <asp:Panel ID="RegisterPanel" runat="server">
                    <asp:UpdatePanel ID="RegisterUpdatePanel" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <h4 class="bg-dark text-white py-3">ADMIN REGISTER PANEL</h4>

                            <!-- Alert Message -->
                            <asp:Label ID="LoginAlert" runat="server" CssClass="alert alert-danger Register-alert" Visible="false"></asp:Label>

                            <div class="mb-4">
                                <asp:TextBox ID="AdminNameTextBox" runat="server" CssClass="form-control shadow-none text-center"
                                    placeholder="Admin Name" required></asp:TextBox>
                            </div>

                            <div class="mb-4">
                                <asp:TextBox ID="AdminEmailTextBox" runat="server" CssClass="form-control shadow-none text-center"
                                    placeholder="Admin Email" required></asp:TextBox>
                            </div>

                            <div class="mb-4">
                                <asp:TextBox ID="AdminPassTextBox" runat="server" TextMode="Password" CssClass="form-control shadow-none text-center"
                                    placeholder="Password" required></asp:TextBox>
                            </div>
                            <asp:Button ID="RegisterButton" runat="server" Text="REGISTER" CssClass="btn btn-success w-100" OnClick="RegisterButton_Click"/>
                            <div class="mt-4">
                                <a href="AdminLogin.aspx" class="register-link">Login</a><br /><br />
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
